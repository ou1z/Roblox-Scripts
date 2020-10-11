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
local AutoCounterFreeze = Instance.new("ImageLabel")
local Text_2 = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local image = Instance.new("ImageLabel")
local WalkAnimation = Instance.new("ImageLabel")
local Text_3 = Instance.new("TextLabel")
local Toggle_2 = Instance.new("TextButton")
local image_2 = Instance.new("ImageLabel")
local NoCooldown = Instance.new("ImageLabel")
local Text_4 = Instance.new("TextLabel")
local Toggle_3 = Instance.new("TextButton")
local image_3 = Instance.new("ImageLabel")
local KillAura = Instance.new("ImageLabel")
local Text_5 = Instance.new("TextLabel")
local PlayerName = Instance.new("TextBox")
local Toggle_4 = Instance.new("TextButton")
local image_4 = Instance.new("ImageLabel")
local WalkSpeed = Instance.new("ImageLabel")
local Text_6 = Instance.new("TextLabel")
local PlayerName_2 = Instance.new("TextBox")
local Reset = Instance.new("ImageLabel")
local Button = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local DestroyGUI = Instance.new("ImageLabel")
local Button_2 = Instance.new("ImageButton")
local TextLabel_2 = Instance.new("TextLabel")
local Credits = Instance.new("ImageLabel")
local Text_7 = Instance.new("TextLabel")


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
Holder.CanvasPosition = Vector2.new(0, 150)
Holder.ScrollBarThickness = 1

UIListLayout.Parent = Holder
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

AutoCounterFreeze.Name = "AutoCounterFreeze"
AutoCounterFreeze.Parent = Holder
AutoCounterFreeze.BackgroundColor3 = Color3.fromRGB(22, 33, 62)
AutoCounterFreeze.BackgroundTransparency = 1.000
AutoCounterFreeze.Position = UDim2.new(0.0250000339, 0, 0, 0)
AutoCounterFreeze.Size = UDim2.new(0, 506, 0, 45)
AutoCounterFreeze.Image = "rbxassetid://3570695787"
AutoCounterFreeze.ImageColor3 = Color3.fromRGB(22, 33, 62)
AutoCounterFreeze.ScaleType = Enum.ScaleType.Slice
AutoCounterFreeze.SliceCenter = Rect.new(100, 100, 100, 100)
AutoCounterFreeze.SliceScale = 0.040

Text_2.Name = "Text"
Text_2.Parent = AutoCounterFreeze
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
Toggle.Parent = AutoCounterFreeze
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

WalkAnimation.Name = "WalkAnimation"
WalkAnimation.Parent = Holder
WalkAnimation.BackgroundColor3 = Color3.fromRGB(22, 33, 62)
WalkAnimation.BackgroundTransparency = 1.000
WalkAnimation.Position = UDim2.new(0.0250000339, 0, 0, 0)
WalkAnimation.Size = UDim2.new(0, 506, 0, 45)
WalkAnimation.Image = "rbxassetid://3570695787"
WalkAnimation.ImageColor3 = Color3.fromRGB(22, 33, 62)
WalkAnimation.ScaleType = Enum.ScaleType.Slice
WalkAnimation.SliceCenter = Rect.new(100, 100, 100, 100)
WalkAnimation.SliceScale = 0.040

Text_3.Name = "Text"
Text_3.Parent = WalkAnimation
Text_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_3.BackgroundTransparency = 1.000
Text_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
Text_3.Position = UDim2.new(0.0573122539, 0, 0, 0)
Text_3.Size = UDim2.new(0, 279, 0, 45)
Text_3.Font = Enum.Font.ArialBold
Text_3.Text = "Wolf Walk"
Text_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_3.TextSize = 14.000
Text_3.TextXAlignment = Enum.TextXAlignment.Left

Toggle_2.Name = "Toggle"
Toggle_2.Parent = WalkAnimation
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

NoCooldown.Name = "NoCooldown"
NoCooldown.Parent = Holder
NoCooldown.BackgroundColor3 = Color3.fromRGB(22, 33, 62)
NoCooldown.BackgroundTransparency = 1.000
NoCooldown.Position = UDim2.new(0.0250000339, 0, 0, 0)
NoCooldown.Size = UDim2.new(0, 506, 0, 45)
NoCooldown.Image = "rbxassetid://3570695787"
NoCooldown.ImageColor3 = Color3.fromRGB(22, 33, 62)
NoCooldown.ScaleType = Enum.ScaleType.Slice
NoCooldown.SliceCenter = Rect.new(100, 100, 100, 100)
NoCooldown.SliceScale = 0.040

Text_4.Name = "Text"
Text_4.Parent = NoCooldown
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
Toggle_3.Parent = NoCooldown
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

KillAura.Name = "KillAura"
KillAura.Parent = Holder
KillAura.BackgroundColor3 = Color3.fromRGB(22, 33, 62)
KillAura.BackgroundTransparency = 1.000
KillAura.Position = UDim2.new(0.0250000339, 0, 0, 0)
KillAura.Size = UDim2.new(0, 506, 0, 45)
KillAura.Image = "rbxassetid://3570695787"
KillAura.ImageColor3 = Color3.fromRGB(22, 33, 62)
KillAura.ScaleType = Enum.ScaleType.Slice
KillAura.SliceCenter = Rect.new(100, 100, 100, 100)
KillAura.SliceScale = 0.040

Text_5.Name = "Text"
Text_5.Parent = KillAura
Text_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_5.BackgroundTransparency = 1.000
Text_5.BorderColor3 = Color3.fromRGB(27, 42, 53)
Text_5.Position = UDim2.new(0.0573122539, 0, 0, 0)
Text_5.Size = UDim2.new(0, 279, 0, 45)
Text_5.Font = Enum.Font.ArialBold
Text_5.Text = "Kill Aura"
Text_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_5.TextSize = 14.000
Text_5.TextXAlignment = Enum.TextXAlignment.Left

PlayerName.Name = "PlayerName"
PlayerName.Parent = KillAura
PlayerName.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
PlayerName.BorderSizePixel = 0
PlayerName.Position = UDim2.new(0.5, 0, 0, 0)
PlayerName.Size = UDim2.new(0, 127, 0, 45)
PlayerName.ClearTextOnFocus = false
PlayerName.Font = Enum.Font.SourceSans
PlayerName.PlaceholderText = "Player Name"
PlayerName.Text = ""
PlayerName.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.TextSize = 14.000
PlayerName.TextWrapped = true

Toggle_4.Name = "Toggle"
Toggle_4.Parent = KillAura
Toggle_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle_4.BackgroundTransparency = 1.000
Toggle_4.BorderSizePixel = 0
Toggle_4.Position = UDim2.new(0.751999974, 0, 0, 0)
Toggle_4.Size = UDim2.new(0, 126, 0, 45)
Toggle_4.ZIndex = 4
Toggle_4.Font = Enum.Font.SourceSans
Toggle_4.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle_4.TextSize = 14.000

image_4.Name = "image"
image_4.Parent = Toggle_4
image_4.Active = true
image_4.AnchorPoint = Vector2.new(0.5, 0.5)
image_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
image_4.BackgroundTransparency = 1.000
image_4.Position = UDim2.new(0.492063493, 0, 0.5, 0)
image_4.Selectable = true
image_4.Size = UDim2.new(1, 0, 1, 0)
image_4.ZIndex = 55
image_4.Image = "rbxassetid://3570695787"
image_4.ImageColor3 = Color3.fromRGB(122, 36, 50)
image_4.ScaleType = Enum.ScaleType.Slice
image_4.SliceCenter = Rect.new(100, 100, 100, 100)
image_4.SliceScale = 0.050

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = Holder
WalkSpeed.BackgroundColor3 = Color3.fromRGB(22, 33, 62)
WalkSpeed.BackgroundTransparency = 1.000
WalkSpeed.Position = UDim2.new(0.0250000339, 0, 0, 0)
WalkSpeed.Size = UDim2.new(0, 506, 0, 45)
WalkSpeed.Image = "rbxassetid://3570695787"
WalkSpeed.ImageColor3 = Color3.fromRGB(22, 33, 62)
WalkSpeed.ScaleType = Enum.ScaleType.Slice
WalkSpeed.SliceCenter = Rect.new(100, 100, 100, 100)
WalkSpeed.SliceScale = 0.040

Text_6.Name = "Text"
Text_6.Parent = WalkSpeed
Text_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_6.BackgroundTransparency = 1.000
Text_6.BorderColor3 = Color3.fromRGB(27, 42, 53)
Text_6.Position = UDim2.new(0.0573122539, 0, 0, 0)
Text_6.Size = UDim2.new(0, 279, 0, 45)
Text_6.Font = Enum.Font.ArialBold
Text_6.Text = "Walk Speed"
Text_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_6.TextSize = 14.000
Text_6.TextXAlignment = Enum.TextXAlignment.Left

PlayerName_2.Name = "PlayerName"
PlayerName_2.Parent = WalkSpeed
PlayerName_2.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
PlayerName_2.BorderSizePixel = 0
PlayerName_2.Position = UDim2.new(0.75, 0, 0, 0)
PlayerName_2.Size = UDim2.new(0, 127, 0, 45)
PlayerName_2.ClearTextOnFocus = false
PlayerName_2.Font = Enum.Font.SourceSans
PlayerName_2.PlaceholderText = "Speed"
PlayerName_2.Text = ""
PlayerName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerName_2.TextSize = 14.000
PlayerName_2.TextWrapped = true

Reset.Name = "Reset"
Reset.Parent = Holder
Reset.BackgroundColor3 = Color3.fromRGB(22, 33, 62)
Reset.BackgroundTransparency = 1.000
Reset.Position = UDim2.new(0.0250000339, 0, 0, 0)
Reset.Size = UDim2.new(0, 506, 0, 45)
Reset.Image = "rbxassetid://3570695787"
Reset.ImageColor3 = Color3.fromRGB(22, 33, 62)
Reset.ScaleType = Enum.ScaleType.Slice
Reset.SliceCenter = Rect.new(100, 100, 100, 100)
Reset.SliceScale = 0.040

Button.Name = "Button"
Button.Parent = Reset
Button.AnchorPoint = Vector2.new(0.5, 0.5)
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Position = UDim2.new(0.5, 0, 0.5, 0)
Button.Size = UDim2.new(0.970000029, 0, 0.800000012, 0)
Button.ZIndex = 2
Button.Image = "rbxassetid://3570695787"
Button.ImageColor3 = Color3.fromRGB(122, 36, 50)
Button.ScaleType = Enum.ScaleType.Slice
Button.SliceCenter = Rect.new(100, 100, 100, 100)
Button.SliceScale = 0.050

TextLabel.Parent = Button
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.ArialBold
TextLabel.Text = "Reset Character"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

DestroyGUI.Name = "DestroyGUI"
DestroyGUI.Parent = Holder
DestroyGUI.BackgroundColor3 = Color3.fromRGB(22, 33, 62)
DestroyGUI.BackgroundTransparency = 1.000
DestroyGUI.Position = UDim2.new(0.0250000339, 0, 0, 0)
DestroyGUI.Size = UDim2.new(0, 506, 0, 45)
DestroyGUI.Image = "rbxassetid://3570695787"
DestroyGUI.ImageColor3 = Color3.fromRGB(22, 33, 62)
DestroyGUI.ScaleType = Enum.ScaleType.Slice
DestroyGUI.SliceCenter = Rect.new(100, 100, 100, 100)
DestroyGUI.SliceScale = 0.040

Button_2.Name = "Button"
Button_2.Parent = DestroyGUI
Button_2.AnchorPoint = Vector2.new(0.5, 0.5)
Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_2.BackgroundTransparency = 1.000
Button_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Button_2.Size = UDim2.new(0.970000029, 0, 0.800000012, 0)
Button_2.ZIndex = 2
Button_2.Image = "rbxassetid://3570695787"
Button_2.ImageColor3 = Color3.fromRGB(122, 36, 50)
Button_2.ScaleType = Enum.ScaleType.Slice
Button_2.SliceCenter = Rect.new(100, 100, 100, 100)
Button_2.SliceScale = 0.050

TextLabel_2.Parent = Button_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
TextLabel_2.Font = Enum.Font.ArialBold
TextLabel_2.Text = "Destroy GUI"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 14.000

Credits.Name = "Credits"
Credits.Parent = Holder
Credits.BackgroundColor3 = Color3.fromRGB(22, 33, 62)
Credits.BackgroundTransparency = 1.000
Credits.Position = UDim2.new(0.0199240986, 0, 0.225225091, 0)
Credits.Size = UDim2.new(0, 506, 0, 45)
Credits.Image = "rbxassetid://3570695787"
Credits.ImageColor3 = Color3.fromRGB(22, 33, 62)
Credits.ScaleType = Enum.ScaleType.Slice
Credits.SliceCenter = Rect.new(100, 100, 100, 100)
Credits.SliceScale = 0.040

Text_7.Name = "Text"
Text_7.Parent = Credits
Text_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_7.BackgroundTransparency = 1.000
Text_7.Size = UDim2.new(1, 0, 1, 0)
Text_7.Font = Enum.Font.ArialBold
Text_7.Text = "Developed by cj#1211"
Text_7.TextColor3 = Color3.fromRGB(233, 69, 96)
Text_7.TextSize = 14.000

-- Scripts:

local function NSJL_fake_script() -- Toggle.LocalScript 
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
coroutine.wrap(NSJL_fake_script)()
local function XIUJ_fake_script() -- Toggle_2.LocalScript 
	local script = Instance.new('LocalScript', Toggle_2)

	local defaultwalkid = game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId
	local defaultrunid = game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId
	_G.defaultrun = defaultrunid
	_G.defaultwalk = defaultwalkid
	local walkAnim = 'rbxassetid://5806342058'
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
coroutine.wrap(XIUJ_fake_script)()
local function YISZO_fake_script() -- Toggle_3.LocalScript 
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
coroutine.wrap(YISZO_fake_script)()
local function JTSZ_fake_script() -- PlayerName.LocalScript 
	local script = Instance.new('LocalScript', PlayerName)

	function findPlayer(str)
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name:lower():match("^"..str:lower()) then
				return v
			end
		end
	end
	
	script.Parent.FocusLost:Connect(function(enter)
		_G.KillAuraOpponent = findPlayer(script.Parent.Text)
	end)
end
coroutine.wrap(JTSZ_fake_script)()
local function MAHKD_fake_script() -- Toggle_4.LocalScript 
	local script = Instance.new('LocalScript', Toggle_4)

	
	script.Parent.MouseButton1Click:Connect(function()
		local char = game.Players.LocalPlayer.Character
		_G.KillAura = not _G.KillAura
		if _G.KillAura then
			game:GetService('TweenService'):Create(script.Parent.image, TweenInfo.new(0.3), {ImageColor3 = Color3.fromRGB(0, 170, 0)}):Play()
		else
			game:GetService('TweenService'):Create(script.Parent.image, TweenInfo.new(0.3), {ImageColor3 = Color3.fromRGB(122, 36, 50)}):Play()
		end
	end)
end
coroutine.wrap(MAHKD_fake_script)()
local function YTQX_fake_script() -- PlayerName_2.LocalScript 
	local script = Instance.new('LocalScript', PlayerName_2)

	script.Parent.FocusLost:Connect(function(enter)
		if enter and game.Players.LocalPlayer.Character and tonumber(script.Parent.Text) then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(script.Parent.Text)
		end
	end)
end
coroutine.wrap(YTQX_fake_script)()
local function RQDGTR_fake_script() -- Button.LocalScript 
	local script = Instance.new('LocalScript', Button)

	
	script.Parent.MouseButton1Click:Connect(function()
		local char = game.Players.LocalPlayer.Character
		char.Humanoid.Health = 0
	end)
end
coroutine.wrap(RQDGTR_fake_script)()
local function OFKES_fake_script() -- Button_2.LocalScript 
	local script = Instance.new('LocalScript', Button_2)

	
	script.Parent.MouseButton1Click:Connect(function()
		local char = game.Players.LocalPlayer.Character
		char.Humanoid.Health = 0
	end)
end
coroutine.wrap(OFKES_fake_script)()
local function UMLHAH_fake_script() -- HoodFighting.LocalScript 
	local script = Instance.new('LocalScript', HoodFighting)

	local main = script.Parent.Main
	local uis = game:GetService('UserInputService')
	local f = false
	local plr = game.Players.LocalPlayer
	local char = plr.Character or plr.CharacterAdded:wait()
	
	
	main.Draggable = true
	
	local inputConnection = uis.InputBegan:Connect(function(key, gpe)
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
	_G.KillAura = false
	
	
	
	-- No Cooldown
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
	
	local mainfunc = function()
		if f and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Event") then
			pcall(function()
				local event = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Event
				event:FireServer(4, 1)
			end)
		end
		if _G.KillAura and (_G.KillAuraOpponent and _G.KillAuraOpponent ~= plr) then
			pcall(function()
				local opponent = _G.KillAuraOpponent
				local theirCharacter = opponent.Character
				local pos = theirCharacter.HumanoidRootPart.Position - (theirCharacter.HumanoidRootPart.CFrame.lookVector * 4.25)
				local lookat = theirCharacter.HumanoidRootPart.Position
				
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(pos, lookat)
			end)
		end
	end
	
	main.Holder.DestroyGUI.Button.MouseButton1Click:Connect(function()
		mainfunc = function()
			return 'stop'
		end
		mt.__namecall = ot
		inputConnection:Disconnect()
		main.Parent:Destroy()
		if char and char:FindFirstChild("Animate") then
			char.Animate.run.RunAnim.AnimationId = _G.defaultrun
			char.Animate.walk.WalkAnim.AnimationId = _G.defaultrun
		end
		_G.AutoCounterFreeze = false
		_G.WalkAnimation = false
		_G.NoCooldown = false
		_G.KillAura = false
	end)
	
	-- Auto Counter Freeze
	while true do
		if mainfunc() == 'stop' then break end
		wait()
	end
end
coroutine.wrap(UMLHAH_fake_script)()
