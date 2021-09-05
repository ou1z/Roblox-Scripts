
local RECORDING_FILE = "input_recordings.txt"

local vu = game:GetService("VirtualUser")

function startRecording()
    local started = tick()
    local vu = game:GetService("VirtualUser")
    vu:StartRecording()
    return started
end

function endRecording(started)
    if started == nil then return end
    vu:CaptureController()
    
    local recordings = vu:StopRecording():gsub('SetKeUp', 'SetKeyUp')
    local recording_split = recordings:split('-- Begin Recording')
    local recording = recording_split[#recording_split]
    
    return recording
end

do -- base 64 lib got from: https://stackoverflow.com/questions/34618946/lua-base64-encode
    local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    
    function base64encode(data)
        return ((data:gsub('.', function(x) 
            local r,b='',x:byte()
            for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
            return r;
        end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
            if (#x < 6) then return '' end
            local c=0
            for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
            return b:sub(c+1,c+1)
        end)..({ '', '==', '=' })[#data%3+1])
    end
    
    function base64decode(data)
        data = string.gsub(data, '[^'..b..'=]', '')
        return (data:gsub('.', function(x)
            if (x == '=') then return '' end
            local r,f='',(b:find(x)-1)
            for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
            return r;
        end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
            if (#x ~= 8) then return '' end
            local c=0
            for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
                return string.char(c)
        end))
    end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Input Recorder", "DarkTheme")

local recordStart = nil
local lastRecording = ""
local Sections = {}
local saved_recordings = {}

function loadRecordings()
    local str = "{}"
    if isfile(RECORDING_FILE) then
        str = readfile(RECORDING_FILE) 
    end
    saved_recordings = game:GetService("HttpService"):JSONDecode(str)
    local names = {}
    for i,v in pairs(saved_recordings) do
        table.insert(names, i) 
    end
    return names
end
function saveRecording(name, recording)
    local new = base64encode(recording)
    local recordings = loadRecordings()
    recordings[name] = base64encode(recording)
    saved_recordings = recordings
    local names = {}
    for i,v in pairs(recordings) do
        table.insert(names, i) 
    end
    Sections.SavedRecordings.Dropdown:Refresh(names)
    writefile(RECORDING_FILE, game:GetService("HttpService"):JSONEncode(recordings))
end


do
    local Tab = Window:NewTab("Util")
    local Util = Tab:NewSection("Util")
    local label = Util:NewLabel("Recording: false")
    
    Util:NewButton("Start Recording", "Starts input recording.", function()
        recordStart = startRecording()
        label:UpdateLabel("Recording: true")
    end)
    Util:NewButton("End Recording", "Ends current input recording.", function()
        lastRecording = endRecording(recordStart)
        recordStart = nil
        label:UpdateLabel("Recording: false")
    end)
    Util:NewButton("Clear Last Recording", "Clears last recording.", function()
        lastRecording = "" 
    end)
    
    Sections.Util = Util
end


do
    local Tab = Window:NewTab("Recordings")
    local Recordings = Tab:NewSection("Recordings")
    
    Recordings:NewTextBox("Save Last Recording", "Recordings name", function(name) 
        if lastRecording ~= "" then
            saveRecording(name, lastRecording)
        end
    end)
    Recordings:NewButton("Play Last Recording", "Saved the last recording to file for later use", function()
        if lastRecording ~= "" then
            loadstring(lastRecording)()
        end
    end)
    
    Sections.Recordings = Recordings
end

do
    local Tab = Window:NewTab("Saved Recordings")
    local SavedRecordings = Tab:NewSection("Saved Recordings")
    local loaded_savedRecording = ""
    
    local dropdown = SavedRecordings:NewDropdown("Recordings", "Saved recordings.", loadRecordings(), function(recording)
        loaded_savedRecording = saved_recordings[recording]
    end)
    SavedRecordings:NewButton("Play Selected Recording", "Plays the selected recording.", function()
        if loaded_savedRecording ~= "" then
            loadstring(base64decode(loaded_savedRecording))()
        end
    end)
    
    Sections.SavedRecordings = {SavedRecordings=SavedRecordings,Dropdown=dropdown}
end
