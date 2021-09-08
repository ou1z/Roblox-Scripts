local server = syn.websocket.connect('ws://hatserver.herokuapp.com/')
local http = game:GetService("HttpService")
function json_decode(str)
    return http:JSONDecode(str)
end
function json_encode(tbl)
    return http:JSONEncode(tbl)
end
local strf = string.format

local auth_key = ""
local userid = 0

server:Send(json_encode({
    Request = "Authenticate",
    PlayerName = game.Players.LocalPlayer.Name
}))
spawn(function()
    while wait(1.5) do -- Keeps the connection alive so that the script doesnt completely shit itself.
        server:Send(json_encode({
            Request = "KeepAlive",
            PlayerName = game.Players.LocalPlayer.Name
        }))
    end
end)

getgenv().wear = function(str, char)
    if not str then return end
    local hatholder
    pcall(function()
        hatholder = game:GetObjects("rbxassetid://"..str)[1]:Clone()
        
        hatholder.Parent = char
        hum:AddAccessory(hatholder)
    end)
    
    for _, obj in pairs(char:GetChildren()) do
        if obj:IsA("Accessory") then
            local handle = obj:FindFirstChild("Handle")
            if handle then
                handle.CanCollide = false
                handle.Massless = true
                local accoutrementAttachment = handle:FindFirstChildOfClass("Attachment")
                if accoutrementAttachment then
                    local characterAttachment = findFirstMatchingAttachment(char, accoutrementAttachment.Name)
                    if characterAttachment then
                        weldAttachments(characterAttachment, accoutrementAttachment)
                    end
                end
            end
        end
    end
end
getgenv().face = function(str,char)
    if not str then return end
    pcall(function()
        local face = game:GetObjects("rbxassetid://"..str)[1]:Clone()
        if face:IsA("Decal") then
            repeat wait()
            for _,v in pairs(char:GetDescendants()) do
                if v:IsA("Decal") then
                    v:Destroy()    
                end
            end
            until not char.Head:FindFirstChildOfClass("Decal")
            face.Parent = char.Head
        else
            face:Destroy()
        end
    end)
end
getgenv().shirt = function(str,char)
    local s = game:GetObjects("rbxassetid://"..str)[1].ShirtTemplate
    if not char:FindFirstChildOfClass("Shirt") then
        local sh = Instance.new("Shirt")
        sh.Parent = char
        sh.ShirtTemplate = s
    else
        char:FindFirstChildOfClass("Shirt").ShirtTemplate = s
    end
end
getgenv().pants = function(str,char)
    local s = game:GetObjects("rbxassetid://"..str)[1].PantsTemplate
    if not char:FindFirstChildOfClass("Pants") then
        local sh = Instance.new("Pants")
        sh.Parent = char
        sh.ShirtTemplate = s
    else
        char:FindFirstChildOfClass("Pants").PantsTemplate = s
    end
end
getgenv().character = function(username, char)
    local userid = game.Players:GetUserIdFromNameAsync(username)
    local res = syn.request({
        Url = strf('https://avatar.roblox.com/v1/users/%s/avatar',userid),
        Headers = {
            ['User-Agent'] = 'Roblox/WinINet'
        }
    })
    for i,v in pairs(char.Humanoid:GetAccessories()) do
        v:Destroy()
    end
    char.Shirt.ShirtTemplate = ''
    char.Pants.PantsTemplate = ''
    char.Head:FindFirstChildOfClass("Decal").Texture = 'rbxasset://textures/face.png'
    for i,v in pairs(char:GetDescendants()) do
        if v:IsA("SpecialMesh") and v.Parent.Parent == char then
            v.MeshId = ''
            v.TextureId = ''
        end
    end
    
    local bodyparts = {
        'Head',
        'Right Arm',
        'Left Arm',
        'Right Leg',
        'Left Leg'
    }
    local avatar = json_decode(res.Body)
    for i,v in pairs(avatar.assets) do
        local assetType = v['assetType']['name']
        local id = v['id']
        

        if assetType == 'Face' then
            face(id,char)
        elseif assetType == 'Hat' then
            wear(id,char)
        elseif assetType:find('Accessory') then
            wear(id,char)
        elseif assetType == 'Shirt' then
            shirt(id,char)
        elseif assetType == 'Pants' then
            pants(id,char)
        elseif assetType == 'Head' then
            local s = game:GetObjects("rbxassetid://"..id)[1]
            s.Parent = char['Head']
        end
    end
    
    local rigtype = char.Humanoid.RigType
    local colors = avatar.bodyColors
    local headcolor = colors.headColorId
    local rightarm = colors.rightArmColorId
    local leftarm = colors.leftArmColorId
    local rightleg = colors.rightLegColorId
    local leftleg = colors.leftLegColorId
    
    char['Body Colors'].HeadColor = BrickColor.new(headcolor)
    char['Body Colors'].LeftArmColor = BrickColor.new(leftarm)
    char['Body Colors'].RightArmColor = BrickColor.new(rightarm)
    char['Body Colors'].LeftLegColor = BrickColor.new(leftleg)
    char['Body Colors'].RightLegColor = BrickColor.new(rightleg)
    
end


function weldAttachments(attach1, attach2)
    local weld = Instance.new("Weld")
    weld.Part0 = attach1.Parent
    weld.Part1 = attach2.Parent
    weld.C0 = attach1.CFrame
    weld.C1 = attach2.CFrame
    weld.Parent = attach1.Parent
    return weld
end

function findFirstMatchingAttachment(model, name)
    for _, child in ipairs(model:GetChildren()) do
        if child:IsA('Attachment') and child.Name == name then
            return child
        elseif not child:IsA('Accoutrement') and not child:IsA('Tool') then -- don't look in hats or tools in the character
            local foundAttachment = findFirstMatchingAttachment(child, name)
            if foundAttachment then
                return foundAttachment
            end
        end
    end
end

for i,v in pairs(getgc(true)) do
    if type(v) == 'table' and rawget(v,'BubbleChatEnabled') and type(rawget(v,'BubbleChatEnabled')) == 'boolean' then
        rawset(v,'BubbleChatEnabled',false)
    end
end
local chatcons = {}
local function addChatted(plr)
    chatcons[plr.Name] = plr.Chatted:Connect(function(message)
        local char = plr.Character
        if not char or not char:FindFirstChild("Head") then return end
        game:GetService("Chat"):Chat(char.Head,message,'Green')
    end)
end
local plr = game.Players.LocalPlayer
for _,v in pairs(game.Players:GetPlayers()) do
    if v ~= plr then
        addChatted(v)
    end
end
game.Players.PlayerAdded:Connect(addChatted)

function sendServer(data)
    local old_data = {
        PlayerName = game.Players.LocalPlayer.Name,
        auth_key = auth_key,
        UserID = userid
    }
    for i,v in pairs(data) do old_data[i] = v end
    server:Send(json_encode(old_data))
end

server.OnMessage:Connect(function(message)
    local json = json_decode(message)

    if json['Type'] == 'Authenticated' then
        auth_key = json['auth_key']
        userid = json['UserID']
        warn(string.format("\n----------------\nAuthenticated!\nUserID: %s\nauth_key: %s\n----------------\n",userid,auth_key))
    elseif json['Type'] == 'User Wore Hat' then
        local player = game.Players:FindFirstChild(json['PlayerName'])
        local hatid = json['HatID']
        if player and player.Character then
            wear(hatid,player.Character)
        end
    elseif json['Type'] == 'User Wore Face' then
        local player = game.Players:FindFirstChild(json['PlayerName'])
        local hatid = json['FaceID']
        if player and player.Character then
            face(hatid,player.Character)
        end
    elseif json['Type'] == 'User Wore Shirt' then
        local player = game.Players:FindFirstChild(json['PlayerName'])
        local hatid = json['ShirtID']
        if player and player.Character then
            shirt(hatid,player.Character)
        end
    elseif json['Type'] == 'User Wore Pants' then
        local player = game.Players:FindFirstChild(json['PlayerName'])
        local hatid = json['PantsID']
        if player and player.Character then
            pants(hatid,player.Character)
        end
    elseif json['Type'] == 'User Changed Character' then
        local player = game.Players:FindFirstChild(json['PlayerName'])
        local cname = json['CharacterName']
        if player and player.Character then
            character(cname,player.Character)
        end
    elseif json['Type'] == 'ClearHats' then
        local player = game.Players:FindFirstChild(json['PlayerName'])
        if player and player.Character then
            for i,v in pairs(player.Character.Humanoid:GetAccessories()) do
                v:Destroy()
            end
        end
    elseif json['Type'] == 'Headless' then
        local player = game.Players:FindFirstChild(json['PlayerName'])
        if player and player.Character then
            local head = game:GetObjects("rbxassetid://134082579")[1]
            head.Parent = player.Character.Head
        end
    elseif json['Type'] == 'Unheadless' then
        local player = game.Players:FindFirstChild(json['PlayerName'])
        if player and player.Character then
            for i,v in pairs(player.Character.Head:GetChildren()) do
                if v:IsA("SpecialMhes") and v.MeshId == 'http://www.roblox.com/asset/?id=134079402' then
                    v:Destroy()
                end
            end
        end
    elseif json['Type'] == 'SentMessage' then
        local player = game.Players:FindFirstChild(json['PlayerName'])
        if player and player.Character then
            if chatcons[player.Name] then
                chatcons[player.Name]:Disconnect()
            end
            pcall(function()
                game:GetService("Chat"):Chat(player.Character.Head,json['Message'],'Red')
            end)
        end
    elseif json['Type'] == 'BoomboxVolume' then
        local volume = json['Volume']
        local player = game.Players:FindFirstChild(json['PlayerName'])
        if volume and player then
            player.Character:FindFirstChildOfClass("Tool"):FindFirstChildOfClass("Part"):FindFirstChildOfClass("Sound").Volume = volume
        end
    elseif json['Type'] == 'ToolSize' then
        local vector = json['Size']
        local player = game.Players:FindFirstChild(json['PlayerName'])
        if vector and player then
            local x = tonumber(vector:split(",")[1])
            local y = tonumber(vector:split(",")[2])
            local z = tonumber(vector:split(",")[3])
            
            player.Character:FindFirstChildOfClass("Tool"):FindFirstChildOfClass("Part").Massless = true
            player.Character:FindFirstChildOfClass("Tool"):FindFirstChildOfClass("Part").Mesh.Scale = Vector3.new(x,y,z) 
        end
    end
end)

game.Players.LocalPlayer.Character.Humanoid.Died:Connect(function()
    for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetAccessories()) do
        v:Destroy()
    end
    sendServer({Request = "ClearHats"})
end)
game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
    char.Humanoid.Died:Connect(function()
        for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetAccessories()) do
            v:Destroy()
        end
        sendServer({Request = "ClearHats"})
    end)
end)


game.Players.LocalPlayer.Chatted:Connect(function(message)
    sendServer({Request = "SendMessage", Message = message})

    local args = message:lower():split(' ')
    if args[1] == '/hat' and args[2] then
        local hatid = tonumber(args[2])
        if hatid then
            sendServer({Request = "Wear", Type = "Hat", ID = hatid})
        end
    elseif args[1] == '/face' and args[2] then
        local faceid = tonumber(args[2])
        if faceid then
            sendServer({Request = "Wear", Type = "Face", ID = faceid})
        end
    elseif args[1] == '/shirt' and args[2] then
        local shirtid = tonumber(args[2])
        if shirtid then
            sendServer({Request = "Wear", Type = "Shirt", ID = shirtid})
        end
    elseif args[1] == '/pants' and args[2] then
        local pantsid = tonumber(args[2])
        if pantsid then
            sendServer({Request = "Wear", Type = "Pants", ID = pantsid})
        end
    elseif args[1] == '/clearhats' then
        for i,v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetAccessories()) do
            v:Destroy()
        end
        sendServer({Request = "ClearHats"})
    elseif args[1] == '/headless' then
        sendServer({Request = "Headless"})
    elseif args[1] == '/unheadless' then
        sendServer({Request = "Unheadless"})
    elseif args[1] == '/boomboxvolume' and args[2] then
        local vol = args[2]
        if tonumber(vol) then
            vol = tonumber(vol)

            sendServer({Request = "BoomboxVolume", Volume = vol})
        end
    elseif args[1] == '/toolsize' and args[2] then
        local size = args[2]
        if #size:split(",") < 3 then return end
        sendServer({Request = "ToolSize", Size = size})
    elseif args[1] == '/char' and args[2] then
        local cname = args[2]
        if not cname then cname = 'ROBLOX' end
        sendServer({Request = "ChangeCharacter", CharacterName = cname})
    end
end)
