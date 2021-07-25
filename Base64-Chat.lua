local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.168453291, 0, 0.235207096, 0)
Frame.Size = UDim2.new(0, 236, 0, 112)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 0.241071433, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Base 64 Chat"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(63, 191, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0762711838, 0, 0.375, 0)
TextButton.Size = UDim2.new(0.847457647, 0, 0.446428567, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Enabled"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 25.000

UICorner.Parent = TextButton

UIAspectRatioConstraint.Parent = Frame
UIAspectRatioConstraint.AspectRatio = 2.107

-- Scripts:

local function HPTH_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	local base64 = {} do
		local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
	
		function base64.encode(data)
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
	
		function base64.decode(data)
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
	
	local SMRQ = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
	local Enabled = true
	
	local old; old = hookmetamethod(game, '__namecall', function(self, ...)
		local args = {...}
		local method = getnamecallmethod()    
	
		if Enabled and method == "FireServer" and self == SMRQ then
			args[1] = base64.encode(args[1])
			return old(self, unpack(args))
		end
	
		return old(self, ...)
	end)
	
	function Chatted(player, message)
		game.StarterGui:SetCore( "ChatMakeSystemMessage",  
			{
				Text = string.format("%s %s", player, base64.decode(message)), 
				Color = Color3.fromRGB( 255,155,0 ), 
				FontSize = 15
			}
		)
	end
	
	local toggle = script.Parent.Frame.TextButton
	toggle.MouseButton1Click:Connect(function()
		Enabled = not Enabled
		if Enabled then
			toggle.Text = 'Enabled'
			toggle.BackgroundColor3 = Color3.fromRGB(63, 191, 0)
		else
			toggle.Text = 'Disabled'
			toggle.BackgroundColor3 = Color3.fromRGB(125, 0, 0)
		end
	end)
	
	game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame["Frame_MessageLogDisplay"].Scroller.ChildAdded:Connect(function(v)
		if not Enabled then return end
		
		local started = tick()
		repeat wait() until not v.TextLabel.Text:find("_") or tick() - started > 1
	
		local message = v.TextLabel.Text:gsub(" ", "")
	
		if message:find("#") then return end
	    if message:find("{System}") then return end
	    
		if not base64.decode(message):find(' ') then
			local player = v.TextLabel:FindFirstChild("TextButton")
			if not player then return end
	
			Chatted(player.Text, message)
		end
	end)
	
	script.Parent.Frame.Active = true
	script.Parent.Frame.Draggable = true
	
	game:GetService('UserInputService').InputBegan:Connect(function(key,gpe)
		if gpe then return end
		if key.KeyCode == Enum.KeyCode.RightControl then
			script.Parent.Frame.Visible = not script.Parent.Frame.Visible
		end
	end)
end
coroutine.wrap(HPTH_fake_script)()
