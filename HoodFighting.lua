local HoodFighting = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("Frame")
local Text = Instance.new("TextLabel")
local Line = Instance.new("Frame")
local Line_2 = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UIGradient_2 = Instance.new("UIGradient")
local Holder = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Frame = Instance.new("ImageLabel")
local Text_2 = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local image = Instance.new("ImageLabel")
local Frame_2 = Instance.new("ImageLabel")
local Text_3 = Instance.new("TextLabel")
local Toggle_2 = Instance.new("TextButton")
local image_2 = Instance.new("ImageLabel")
local Frame_3 = Instance.new("ImageLabel")
local Text_4 = Instance.new("TextLabel")
local Toggle_3 = Instance.new("TextButton")
local image_3 = Instance.new("ImageLabel")

HoodFighting.Name = "HoodFighting"
HoodFighting.Parent = game.CoreGui
HoodFighting.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = HoodFighting
Main.Active = true
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(26, 26, 46)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 527, 0, 288)

Title.Name = "Title"
Title.Parent = Main
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.BackgroundColor3 = Color3.fromRGB(22, 33, 62)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.5, 0, 0.092844218, 0)
Title.Size = UDim2.new(0, 527, 0, 53)
Title.ZIndex = 2

Text.Name = "Text"
Text.Parent = Title
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.Position = UDim2.new(0.020872863, 0, 0.00396957994, 0)
Text.Size = UDim2.new(0, 182, 0, 39)
Text.Font = Enum.Font.Arcade
Text.Text = "HoodFighting.lua"
Text.TextColor3 = Color3.fromRGB(233, 69, 96)
Text.TextSize = 18.000
Text.TextWrapped = true
Text.TextXAlignment = Enum.TextXAlignment.Left

Line.Name = "Line"
Line.Parent = Title
Line.AnchorPoint = Vector2.new(0.5, 0.5)
Line.BackgroundColor3 = Color3.fromRGB(15, 52, 96)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0.5, 0, 0.862460196, 0)
Line.Size = UDim2.new(0, 527, 0, 13)

Line_2.Name = "Line"
Line_2.Parent = Title
Line_2.AnchorPoint = Vector2.new(0.5, 0.5)
Line_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Line_2.BorderSizePixel = 0
Line_2.Position = UDim2.new(0.5, 0, 1.10774326, 0)
Line_2.Size = UDim2.new(0, 527, 0, 13)
Line_2.ZIndex = 3

UIGradient.Rotation = 90
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient.Parent = Line_2

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(228, 228, 228))}
UIGradient_2.Parent = Main

Holder.Name = "Holder"
Holder.Parent = Main
Holder.Active = true
Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Holder.BackgroundTransparency = 1.000
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0, 0, 0.226999998, 0)
Holder.Size = UDim2.new(0, 527, 0, 222)
Holder.ScrollBarThickness = 1

UIListLayout.Parent = Holder
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

Frame.Name = "Frame"
Frame.Parent = Holder
Frame.BackgroundColor3 = Color3.fromRGB(22, 33, 62)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.0250000339, 0, 0, 0)
Frame.Size = UDim2.new(0, 506, 0, 45)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(22, 33, 62)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.040

Text_2.Name = "Text"
Text_2.Parent = Frame
Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_2.BackgroundTransparency = 1.000
Text_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Text_2.Position = UDim2.new(0.0573122539, 0, 0, 0)
Text_2.Size = UDim2.new(0, 279, 0, 45)
Text_2.Font = Enum.Font.ArialBold
Text_2.Text = "Auto Counter Freeze"
Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_2.TextSize = 14.000
Text_2.TextXAlignment = Enum.TextXAlignment.Left

Toggle.Name = "Toggle"
Toggle.Parent = Frame
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0.751999974, 0, 0, 0)
Toggle.Size = UDim2.new(0, 126, 0, 45)
Toggle.Font = Enum.Font.SourceSans
Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle.TextSize = 14.000

image.Name = "image"
image.Parent = Toggle
image.Active = true
image.AnchorPoint = Vector2.new(0.5, 0.5)
image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image.BackgroundTransparency = 1.000
image.Position = UDim2.new(0.5, 0, 0.5, 0)
image.Selectable = true
image.Size = UDim2.new(1, 0, 1, 0)
image.Image = "rbxassetid://3570695787"
image.ImageColor3 = Color3.fromRGB(122, 36, 50)
image.ScaleType = Enum.ScaleType.Slice
image.SliceCenter = Rect.new(100, 100, 100, 100)
image.SliceScale = 0.050

Frame_2.Name = "Frame"
Frame_2.Parent = Holder
Frame_2.BackgroundColor3 = Color3.fromRGB(22, 33, 62)
Frame_2.BackgroundTransparency = 1.000
Frame_2.Position = UDim2.new(0.0250000339, 0, 0, 0)
Frame_2.Size = UDim2.new(0, 506, 0, 45)
Frame_2.Image = "rbxassetid://3570695787"
Frame_2.ImageColor3 = Color3.fromRGB(22, 33, 62)
Frame_2.ScaleType = Enum.ScaleType.Slice
Frame_2.SliceCenter = Rect.new(100, 100, 100, 100)
Frame_2.SliceScale = 0.040

Text_3.Name = "Text"
Text_3.Parent = Frame_2
Text_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_3.BackgroundTransparency = 1.000
Text_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Text_3.Position = UDim2.new(0.0573122539, 0, 0, 0)
Text_3.Size = UDim2.new(0, 279, 0, 45)
Text_3.Font = Enum.Font.ArialBold
Text_3.Text = "Walk Animation"
Text_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_3.TextSize = 14.000
Text_3.TextXAlignment = Enum.TextXAlignment.Left

Toggle_2.Name = "Toggle"
Toggle_2.Parent = Frame_2
Toggle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle_2.BackgroundTransparency = 1.000
Toggle_2.BorderSizePixel = 0
Toggle_2.Position = UDim2.new(0.751999974, 0, 0, 0)
Toggle_2.Size = UDim2.new(0, 126, 0, 45)
Toggle_2.Font = Enum.Font.SourceSans
Toggle_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_2.TextSize = 14.000

image_2.Name = "image"
image_2.Parent = Toggle_2
image_2.Active = true
image_2.AnchorPoint = Vector2.new(0.5, 0.5)
image_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image_2.BackgroundTransparency = 1.000
image_2.Position = UDim2.new(0.5, 0, 0.5, 0)
image_2.Selectable = true
image_2.Size = UDim2.new(1, 0, 1, 0)
image_2.Image = "rbxassetid://3570695787"
image_2.ImageColor3 = Color3.fromRGB(122, 36, 50)
image_2.ScaleType = Enum.ScaleType.Slice
image_2.SliceCenter = Rect.new(100, 100, 100, 100)
image_2.SliceScale = 0.050

Frame_3.Name = "Frame"
Frame_3.Parent = Holder
Frame_3.BackgroundColor3 = Color3.fromRGB(22, 33, 62)
Frame_3.BackgroundTransparency = 1.000
Frame_3.Position = UDim2.new(0.0250000339, 0, 0, 0)
Frame_3.Size = UDim2.new(0, 506, 0, 45)
Frame_3.Image = "rbxassetid://3570695787"
Frame_3.ImageColor3 = Color3.fromRGB(22, 33, 62)
Frame_3.ScaleType = Enum.ScaleType.Slice
Frame_3.SliceCenter = Rect.new(100, 100, 100, 100)
Frame_3.SliceScale = 0.040

Text_4.Name = "Text"
Text_4.Parent = Frame_3
Text_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_4.BackgroundTransparency = 1.000
Text_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
Text_4.Position = UDim2.new(0.0573122539, 0, 0, 0)
Text_4.Size = UDim2.new(0, 279, 0, 45)
Text_4.Font = Enum.Font.ArialBold
Text_4.Text = "No Cooldown"
Text_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_4.TextSize = 14.000
Text_4.TextXAlignment = Enum.TextXAlignment.Left

Toggle_3.Name = "Toggle"
Toggle_3.Parent = Frame_3
Toggle_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle_3.BackgroundTransparency = 1.000
Toggle_3.BorderSizePixel = 0
Toggle_3.Position = UDim2.new(0.751999974, 0, 0, 0)
Toggle_3.Size = UDim2.new(0, 126, 0, 45)
Toggle_3.Font = Enum.Font.SourceSans
Toggle_3.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_3.TextSize = 14.000

image_3.Name = "image"
image_3.Parent = Toggle_3
image_3.Active = true
image_3.AnchorPoint = Vector2.new(0.5, 0.5)
image_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image_3.BackgroundTransparency = 1.000
image_3.Position = UDim2.new(0.5, 0, 0.5, 0)
image_3.Selectable = true
image_3.Size = UDim2.new(1, 0, 1, 0)
image_3.Image = "rbxassetid://3570695787"
image_3.ImageColor3 = Color3.fromRGB(122, 36, 50)
image_3.ScaleType = Enum.ScaleType.Slice
image_3.SliceCenter = Rect.new(100, 100, 100, 100)
image_3.SliceScale = 0.050

-- Scripts:

local function MXDT_fake_script() -- Toggle.LocalScript 
	local script = Instance.new('LocalScript', Toggle)

	script.Parent.MouseButton1Click:Connect(function()
		_G.AutoCounterFreeze = not _G.AutoCounterFreeze
		if _G.AutoCounterFreeze then
			game:GetService('TweenService'):Create(script.Parent.image, TweenInfo.new(0.3), {ImageColor3 = Color3.fromRGB(0, 170, 0)}):Play()
		else
			game:GetService('TweenService'):Create(script.Parent.image, TweenInfo.new(0.3), {ImageColor3 = Color3.fromRGB(122, 36, 50)}):Play()
		end
	end)
end
coroutine.wrap(MXDT_fake_script)()
local function NEQCGTI_fake_script() -- Toggle_2.LocalScript 
	local script = Instance.new('LocalScript', Toggle_2)

	local defaultwalkid = game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId
	local defaultrunid = game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId
	local walkAnim = 'rbxassetid://5408967895'
	local runAnim = 'rbxassetid://4767669175'
	
	
	script.Parent.MouseButton1Click:Connect(function()
		local char = game.Players.LocalPlayer.Character
		_G.WalkAnimation = not _G.WalkAnimation
		if _G.WalkAnimation then
			char.Animate.walk.WalkAnim.AnimationId = walkAnim
			char.Animate.run.RunAnim.AnimationId = runAnim
			game:GetService('TweenService'):Create(script.Parent.image, TweenInfo.new(0.3), {ImageColor3 = Color3.fromRGB(0, 170, 0)}):Play()
		else
			char.Animate.walk.WalkAnim.AnimationId = defaultwalkid
			char.Animate.run.RunAnim.AnimationId = defaultrunid
			game:GetService('TweenService'):Create(script.Parent.image, TweenInfo.new(0.3), {ImageColor3 = Color3.fromRGB(122, 36, 50)}):Play()
		end
	end)
end
coroutine.wrap(NEQCGTI_fake_script)()
local function XUBWR_fake_script() -- Toggle_3.LocalScript 
	local script = Instance.new('LocalScript', Toggle_3)

	
	script.Parent.MouseButton1Click:Connect(function()
		local char = game.Players.LocalPlayer.Character
		_G.NoCooldown = not _G.NoCooldown
		if _G.NoCooldown then
			game:GetService('TweenService'):Create(script.Parent.image, TweenInfo.new(0.3), {ImageColor3 = Color3.fromRGB(0, 170, 0)}):Play()
		else
			game:GetService('TweenService'):Create(script.Parent.image, TweenInfo.new(0.3), {ImageColor3 = Color3.fromRGB(122, 36, 50)}):Play()
		end
	end)
end
coroutine.wrap(XUBWR_fake_script)()
local function RJKMVF_fake_script() -- HoodFighting.LocalScript 
	local script = Instance.new('LocalScript', HoodFighting)

	local main = script.Parent.Main
	local uis = game:GetService('UserInputService')
	local f = false
	
	main.Draggable = true
	
	uis.InputBegan:Connect(function(key, gpe)
		if gpe then return end
		if key.KeyCode == Enum.KeyCode.F and _G.AutoCounterFreeze then
			f = not f
		elseif key.KeyCode == Enum.KeyCode.RightControl then
			main.Visible = not main.Visible
		end
	end)
	
	_G.AutoCounterFreeze = false
	_G.WalkAnimation = false
	_G.NoCooldown = false
	
	
	
	local mt = getrawmetatable(game)
	local ot = mt.__namecall
	setreadonly(mt, false)
	mt.__namecall = newcclosure(function(self, ...)
		local method = getnamecallmethod()
		local args = {...}
		if method == 'AddItem' and tostring(self) == 'Debris' and _G.NoCooldown then
			args[2] = 0.1
		end
		return ot(self, unpack(args))
	end)
	setreadonly(mt, true)
	
	
	
	
	while true do
		if f and game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
			local event = game.Players.LocalPlayer.Character.Combat.Event
			event:FireServer(4, 1)
		end
		wait()
	end
end
coroutine.wrap(RJKMVF_fake_script)()
