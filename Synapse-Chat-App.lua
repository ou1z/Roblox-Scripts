local Chat = Instance.new("ScreenGui")
local ChatWindow = Instance.new("Frame")
local Main = Instance.new("Frame")
local MessageHolder = Instance.new("ScrollingFrame")
local Placeholder = Instance.new("Frame")
local Username = Instance.new("TextLabel")
local Message = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local Message_2 = Instance.new("TextBox")
local image = Instance.new("ImageLabel")
local Length = Instance.new("TextLabel")
local Send = Instance.new("TextButton")
local Send_Roundify_2px = Instance.new("ImageLabel")
local ClearMessages = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local image_2 = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local Open = Instance.new("TextButton")
local image_3 = Instance.new("ImageLabel")

Chat.Name = "Chat"
Chat.Parent = game.CoreGui

ChatWindow.Name = "ChatWindow"
ChatWindow.Parent = Chat
ChatWindow.Active = true
ChatWindow.AnchorPoint = Vector2.new(0.5, 0.5)
ChatWindow.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
ChatWindow.BorderSizePixel = 0
ChatWindow.ClipsDescendants = true
ChatWindow.Position = UDim2.new(0.5, 0, 0.510451019, 0)
ChatWindow.Size = UDim2.new(0, 662, 0, 416)

Main.Name = "Main"
Main.Parent = ChatWindow
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.Size = UDim2.new(1, 0, 1, 0)

MessageHolder.Name = "MessageHolder"
MessageHolder.Parent = Main
MessageHolder.Active = true
MessageHolder.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
MessageHolder.BorderColor3 = Color3.fromRGB(43, 43, 43)
MessageHolder.BorderSizePixel = 0
MessageHolder.Position = UDim2.new(0.0211480372, 0, 0.138539046, 0)
MessageHolder.Size = UDim2.new(0, 639, 0, 267)
MessageHolder.ScrollBarThickness = 1

Placeholder.Name = "Placeholder"
Placeholder.Parent = MessageHolder
Placeholder.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
Placeholder.BackgroundTransparency = 0.900
Placeholder.Position = UDim2.new(0, 0, 0.87062937, 0)
Placeholder.Size = UDim2.new(1, 0, 0, 37)
Placeholder.Visible = false

Username.Name = "Username"
Username.Parent = Placeholder
Username.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Username.BackgroundTransparency = 0.900
Username.Size = UDim2.new(0.200000003, 0, 1, 0)
Username.Font = Enum.Font.Cartoon
Username.Text = "[username]:"
Username.TextColor3 = Color3.fromRGB(255, 255, 255)
Username.TextSize = 20.000

Message.Name = "Message"
Message.Parent = Placeholder
Message.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Message.BackgroundTransparency = 0.900
Message.Position = UDim2.new(0.200000003, 0, 0, 0)
Message.Size = UDim2.new(0.800000012, 0, 1, 0)
Message.Font = Enum.Font.Cartoon
Message.Text = "this is my message"
Message.TextColor3 = Color3.fromRGB(216, 216, 216)
Message.TextSize = 18.000
Message.TextWrapped = true
Message.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout.Parent = MessageHolder
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom

Message_2.Name = "Message"
Message_2.Parent = Main
Message_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Message_2.BackgroundTransparency = 1.000
Message_2.BorderSizePixel = 0
Message_2.Position = UDim2.new(0.0410557315, 0, 0.818593025, 0)
Message_2.Size = UDim2.new(0, 525, 0, 62)
Message_2.ZIndex = 5
Message_2.Font = Enum.Font.Cartoon
Message_2.PlaceholderText = "Press \\ to focus, or click here to focus."
Message_2.Text = ""
Message_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Message_2.TextSize = 20.000
Message_2.TextWrapped = true
Message_2.TextXAlignment = Enum.TextXAlignment.Left
Message_2.TextYAlignment = Enum.TextYAlignment.Top

image.Name = "image"
image.Parent = Message_2
image.Active = true
image.AnchorPoint = Vector2.new(0.5, 0.5)
image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image.BackgroundTransparency = 1.000
image.Position = UDim2.new(0.488741279, 0, 0.456853062, 0)
image.Selectable = true
image.Size = UDim2.new(1.03412056, 0, 1.10725391, 0)
image.Image = "rbxassetid://3570695787"
image.ImageColor3 = Color3.fromRGB(39, 39, 39)
image.ScaleType = Enum.ScaleType.Slice
image.SliceCenter = Rect.new(100, 100, 100, 100)
image.SliceScale = 0.060

Length.Name = "Length"
Length.Parent = Message_2
Length.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
Length.BackgroundTransparency = 1.000
Length.BorderColor3 = Color3.fromRGB(27, 42, 53)
Length.Position = UDim2.new(0.821039677, 0, 0.403225809, 0)
Length.Size = UDim2.new(0, 97, 0, 50)
Length.ZIndex = 5
Length.Font = Enum.Font.ArialBold
Length.Text = "0/150"
Length.TextColor3 = Color3.fromRGB(100, 100, 100)
Length.TextSize = 20.000
Length.TextTransparency = 0.100

Send.Name = "Send"
Send.Parent = Main
Send.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Send.BackgroundTransparency = 1.000
Send.BorderSizePixel = 0
Send.Position = UDim2.new(0.853474319, 0, 0.817156315, 0)
Send.Size = UDim2.new(0, 88, 0, 42)
Send.ZIndex = 2
Send.Font = Enum.Font.ArialBold
Send.Text = "↑"
Send.TextColor3 = Color3.fromRGB(255, 255, 255)
Send.TextScaled = true
Send.TextSize = 14.000
Send.TextWrapped = true

Send_Roundify_2px.Name = "Send_Roundify_2px"
Send_Roundify_2px.Parent = Send
Send_Roundify_2px.Active = true
Send_Roundify_2px.AnchorPoint = Vector2.new(0.5, 0.5)
Send_Roundify_2px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Send_Roundify_2px.BackgroundTransparency = 1.000
Send_Roundify_2px.Position = UDim2.new(0.5, 0, 0.608266175, 0)
Send_Roundify_2px.Selectable = true
Send_Roundify_2px.Size = UDim2.new(1, 0, 1.21653235, 0)
Send_Roundify_2px.Image = "rbxassetid://3570695787"
Send_Roundify_2px.ImageColor3 = Color3.fromRGB(0, 0, 191)
Send_Roundify_2px.ScaleType = Enum.ScaleType.Slice
Send_Roundify_2px.SliceCenter = Rect.new(100, 100, 100, 100)
Send_Roundify_2px.SliceScale = 0.090

ClearMessages.Name = "ClearMessages"
ClearMessages.Parent = Main
ClearMessages.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
ClearMessages.BorderSizePixel = 0
ClearMessages.Position = UDim2.new(0.82175225, 0, 0.138539046, 0)
ClearMessages.Size = UDim2.new(0, 109, 0, 25)
ClearMessages.AutoButtonColor = false
ClearMessages.Font = Enum.Font.SourceSans
ClearMessages.Text = "Clear"
ClearMessages.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearMessages.TextSize = 20.000

Minimize.Name = "Minimize"
Minimize.Parent = Main
Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimize.BackgroundTransparency = 1.000
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.879154086, 0, -0.0176322423, 0)
Minimize.Size = UDim2.new(0, 88, 0, 55)
Minimize.ZIndex = 4
Minimize.Font = Enum.Font.ArialBold
Minimize.Text = "-"
Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimize.TextScaled = true
Minimize.TextSize = 14.000
Minimize.TextWrapped = true

image_2.Name = "image"
image_2.Parent = Minimize
image_2.Active = true
image_2.AnchorPoint = Vector2.new(0.5, 0.5)
image_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image_2.BackgroundTransparency = 1.000
image_2.Position = UDim2.new(0.5, 0, 0.5, 0)
image_2.Selectable = true
image_2.Size = UDim2.new(1, 0, 1, 0)
image_2.ZIndex = 3
image_2.Image = "rbxassetid://3570695787"
image_2.ImageColor3 = Color3.fromRGB(40, 40, 40)
image_2.ScaleType = Enum.ScaleType.Slice
image_2.SliceCenter = Rect.new(100, 100, 100, 100)
image_2.SliceScale = 0.090

TextLabel.Parent = ChatWindow
TextLabel.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, -0.00503778318, 0)
TextLabel.Size = UDim2.new(0, 653, 0, 43)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = "Chat"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Open.Name = "Open"
Open.Parent = Chat
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open.BackgroundTransparency = 1.000
Open.BorderSizePixel = 0
Open.Position = UDim2.new(-1.5, 0, 1.5, 0)
Open.Size = UDim2.new(0, 88, 0, 55)
Open.ZIndex = 2
Open.Font = Enum.Font.ArialBold
Open.Text = "+"
Open.TextColor3 = Color3.fromRGB(255, 255, 255)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true

image_3.Name = "image"
image_3.Parent = Open
image_3.Active = true
image_3.AnchorPoint = Vector2.new(0.5, 0.5)
image_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image_3.BackgroundTransparency = 1.000
image_3.Position = UDim2.new(0.5, 0, 0.5, 0)
image_3.Selectable = true
image_3.Size = UDim2.new(1, 0, 1, 0)
image_3.Image = "rbxassetid://3570695787"
image_3.ImageColor3 = Color3.fromRGB(42, 42, 42)
image_3.ScaleType = Enum.ScaleType.Slice
image_3.SliceCenter = Rect.new(100, 100, 100, 100)
image_3.SliceScale = 0.090

local function MICOMH_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	
	
	local username = game.Players.LocalPlayer.Name
	local Message = script.Parent.Message
	
	
	local json_encode = function(tbl)
		local json = game:GetService("HttpService"):JSONEncode(tbl)
		return json
	end
	local json_decode = function(json)
		local tbl = game:GetService("HttpService"):JSONDecode(json)
		return tbl
	end
	
	function newMessage(data)
		local user = data.Username;
		local msg = data.Message;
		local placeholder = script.Parent.MessageHolder.Placeholder:Clone()
		placeholder.Name = user;
		placeholder.Parent = script.Parent.MessageHolder
		placeholder.Username.Text = user;
		placeholder.Message.Text = msg;
		placeholder.Visible = true;
	end
	
	if not _G.client then
		_G.client = syn.websocket.connect('ws://synapse-chat-app.herokuapp.com/')
		_G.client:Send(json_encode({
			['Action'] = 'Connected',
			['Username'] = username,
		}))
		_G.client.OnMessage:Connect(function(msg)
			if msg == 'Keep Alive!' then return end;
			local data = json_decode(msg)
			
			if data['Action'] == 'New User' then
				newMessage({
					['Username'] = data['Username'],
					['Message'] = 'has joined the chat!';
				});
				return;
			end
			newMessage(data);
		end)
	end
	local web = _G.client
	
	
	function sendMessage(msg)
		local newmsg = {
			['Username'] = '[' .. username .. ']:',
			['Message'] = Message.Text
		}	
		newmsg = json_encode(newmsg)
		web:Send(newmsg)
	end
	
	
	script.Parent.Minimize.MouseButton1Click:Connect(function()
		script.Parent.Parent:TweenPosition(UDim2.new(-1.5,0,1.5,0), 'In', 'Linear', 0.5, true)
		script.Parent.Parent.Parent.Open:TweenPosition(UDim2.new(-0.006, 0,0.947, 0), 'In', 'Linear', 0.5, true)
	end)
	script.Parent.Parent.Parent.Open.MouseButton1Click:Connect(function()
		script.Parent.Parent:TweenPosition(UDim2.new(0.5,0,0.5,0), 'Out', 'Linear', 0.5, true)
		script.Parent.Parent.Parent.Open:TweenPosition(UDim2.new(-1.5,0,1.5,0), 'Out', 'Linear', 0.5, true)
	end)
	
	
	local opened = true;
	
	
	game:GetService('UserInputService').InputBegan:Connect(function(key, gpe)
		if gpe then return end
		
		if key.KeyCode == Enum.KeyCode.BackSlash then
			Message:CaptureFocus()
			wait()
			Message.Text = ''
		elseif key.KeyCode == Enum.KeyCode.Insert then
			opened = not opened
			
			if opened then
				script.Parent.Parent:TweenPosition(UDim2.new(0.5,0,0.5,0), 'Out', 'Linear', 0.5, true)
				script.Parent.Parent.Parent.Open:TweenPosition(UDim2.new(-1.5,0,1.5,0), 'Out', 'Linear', 0.5, true)
			else
				script.Parent.Parent:TweenPosition(UDim2.new(-1.5,0,1.5,0), 'In', 'Linear', 0.5, true)
				script.Parent.Parent.Parent.Open:TweenPosition(UDim2.new(-0.006, 0,0.947, 0), 'In', 'Linear', 0.5, true)
			end
		end
	end)
	
	
	local debounce = false;
	
	
	local Commands = {
		['.dex'] = function()
			if game:GetService'CoreGui':FindFirstChild'Dex' then
				game:GetService'CoreGui'.Dex:Destroy();
			end
			
			math.randomseed(tick())
			
			local charset = {}
			for i = 48,  57 do table.insert(charset, string.char(i)) end
			for i = 65,  90 do table.insert(charset, string.char(i)) end
			for i = 97, 122 do table.insert(charset, string.char(i)) end
			function RandomCharacters(length)
				if length > 0 then
					return RandomCharacters(length - 1) .. charset[math.random(1, #charset)]
				else
					return ""
				end
			end
			
			local Dex = game:GetObjects("rbxassetid://3567096419")[1]
			syn.protect_gui(Dex)
			Dex.Name = RandomCharacters(math.random(5, 20))
			Dex.Parent = game:GetService("CoreGui")
			
			local function Load(Obj, Url)
				local function GiveOwnGlobals(Func, Script)
					local Fenv = {}
					local RealFenv = {script = Script}
					local FenvMt = {}
					FenvMt.__index = function(a,b)
						if RealFenv[b] == nil then
							return getfenv()[b]
						else
							return RealFenv[b]
						end
					end
					FenvMt.__newindex = function(a, b, c)
						if RealFenv[b] == nil then
							getfenv()[b] = c
						else
							RealFenv[b] = c
						end
					end
					setmetatable(Fenv, FenvMt)
					setfenv(Func, Fenv)
					return Func
				end
				
				local function LoadScripts(Script)
					if Script.ClassName == "Script" or Script.ClassName == "LocalScript" then
						spawn(function()
							GiveOwnGlobals(loadstring(Script.Source, "=" .. Script:GetFullName()), Script)()
						end)
					end
					for i,v in pairs(Script:GetChildren()) do
						LoadScripts(v)
					end
				end
				
				LoadScripts(Obj)
			end
			
			Load(Dex)
		end,
		['.remotespy'] = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/ou1z/Roblox-Scripts/master/RemoteSpy.lua"))()
		end,
		['.quit'] = function()
			script.Parent.Parent.Parent:Destroy()
		end
	}
	
	function send()
		if debounce then return end;
		if #Message.Text < 1 then 
			return 
		elseif #Message.Text > 150 then
			Message.Text = 'Message is too long.'
			debounce = true;
			delay(1.5, function()
				Message.Text = ''
				debounce = false;
			end)
			return 
		end;
		sendMessage()
		
		if Commands[Message.Text] then
			Commands[Message.Text]()
		end
		
		Message.Text = ''
		
		debounce = true;
		delay(1.5, function()
			debounce = false;
		end)
	end
	
	Message.FocusLost:Connect(function(enter)
		if not enter then return end;
		send()
	end)
	
	Message.Changed:Connect(function()
		if #Message.Text > 150 then
			Message.Text = Message.Text:sub(1,150)
		else
			
			local len = #Message.Text
			Message.Length.Text = tostring(len) .. '/150'
			
			if len > 35 and len < 50 then
				Message.Length.TextColor3 = Color3.fromRGB(235, 186, 52)
			elseif len > 50 and len < 75 then
				Message.Length.TextColor3 = Color3.fromRGB(235, 186, 52)
			elseif len > 75 and len <= 150 then
				Message.Length.TextColor3 = Color3.fromRGB(235, 0, 0)
			else
				Message.Length.TextColor3 = Color3.fromRGB(255, 255, 255)
			end
			
			
		end
	end)
	
	script.Parent.Send.MouseButton1Click:Connect(function()
		send()
	end)
	
	
	
	script.Parent.ClearMessages.MouseButton1Click:Connect(function()
		for i,v in pairs(script.Parent.MessageHolder:GetChildren()) do
			if v:IsA("Frame") and v.Name ~= 'Placeholder' then
				v:Destroy()
			end
		end
	end)
	
	--//Minimize Color
	script.Parent.Minimize.MouseEnter:Connect(function()
		game:GetService('TweenService'):Create(script.Parent.Minimize.image, TweenInfo.new(0.5), {ImageColor3 = Color3.fromRGB(35,35,35)}):Play()
	end)
	script.Parent.Minimize.MouseLeave:Connect(function()
		game:GetService('TweenService'):Create(script.Parent.Minimize.image, TweenInfo.new(0.5), {ImageColor3 = Color3.fromRGB(40,40,40)}):Play()
	end)
	
	
	--//Message Box Color
	script.Parent.Message.MouseEnter:Connect(function()
		game:GetService('TweenService'):Create(script.Parent.Message.image, TweenInfo.new(0.5), {ImageColor3 = Color3.fromRGB(34,34,34)}):Play()
	end)
	script.Parent.Message.Focused:Connect(function()
		game:GetService('TweenService'):Create(script.Parent.Message.image, TweenInfo.new(0.5), {ImageColor3 = Color3.fromRGB(31,31,31)}):Play()
	end)
	script.Parent.Message.FocusLost:Connect(function()
		game:GetService('TweenService'):Create(script.Parent.Message.image, TweenInfo.new(0.5), {ImageColor3 = Color3.fromRGB(39, 39, 39)}):Play()
	end)
	
	
	
	while wait(1) do
		web:Send("Keep Alive!")
	end
end
coroutine.wrap(MICOMH_fake_script)()
local function PGNPTO_fake_script() -- ChatWindow.LocalScript 
	local script = Instance.new('LocalScript', ChatWindow)

	script.Parent.Active = true;
	script.Parent.Draggable = true;
end
coroutine.wrap(PGNPTO_fake_script)()
