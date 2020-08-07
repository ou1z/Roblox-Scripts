if game.CoreGui:FindFirstChild("SKYBLOCK") then
   game.CoreGui.SKYBLOCK:Destroy()
   game.CoreGui.Commands:Destroy()
end



local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ou1z/Roblox-Scripts/master/Library.lua"))()
local LP = game.Players.LocalPlayer

local REP = game:GetService("ReplicatedStorage");
local CropEvent = REP.Remotes.Functions["CLIENT_HARVEST_CROP_REQUEST"];
local CropPlaceEvent = REP.Remotes.Functions["CLIENT_BLOCK_PLACE_REQUEST"];
local SellRemote = REP.Remotes.Functions["CLIENT_MERCHANT_ORDER_REQUEST"]


local islandName = tostring(LP.UserId) .. '-island'
local myIsland = workspace.Islands[islandName]

function placeCrop(crop, cframe)
   CropPlaceEvent:InvokeServer({
      ["blockType"] = crop,
      ["cframe"] = cframe
   })
end

function harvestCrop(crop)
   local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = crop.CFrame
   local cf = crop.CFrame
   CropEvent:InvokeServer({
   	["model"] = crop,
   	["player"] = LP
   })
   delay(1, function()
      placeCrop(crop.Name)
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
   end)
end



function findPlayer(str)
   for i,v in pairs(game.Players:GetPlayers()) do
      if v.Name:lower():match("^" .. str:lower()) then
         return v;
      end
   end
end


local Commands = Instance.new("ScreenGui")
local CommandBar = Instance.new("TextBox")
local Notification = Instance.new("TextLabel")
local Show = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Placeholder = Instance.new("TextLabel")

Commands.Name = "Commands"
Commands.Parent = game.CoreGui
Commands.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

CommandBar.Name = "CommandBar"
CommandBar.Parent = Commands
CommandBar.AnchorPoint = Vector2.new(0.5, 0)
CommandBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CommandBar.BorderSizePixel = 0
CommandBar.Position = UDim2.new(0.5, 0, -0.4, 0)
CommandBar.Size = UDim2.new(1, 0, 0.0500000007, 0)
CommandBar.Font = Enum.Font.Cartoon
CommandBar.PlaceholderText = "Command"
CommandBar.Text = ""
CommandBar.TextColor3 = Color3.fromRGB(255, 255, 255)
CommandBar.TextScaled = true
CommandBar.TextSize = 14.000
CommandBar.TextWrapped = true

Notification.Name = "Notification"
Notification.Parent = Commands
Notification.AnchorPoint = Vector2.new(0.5, 0)
Notification.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notification.BackgroundTransparency = 1.000
Notification.Position = UDim2.new(0.5, 0, 0.0599999987, 0)
Notification.Size = UDim2.new(1, 0, 0, 0)
Notification.Font = Enum.Font.Cartoon
Notification.Text = ""
Notification.TextColor3 = Color3.fromRGB(255, 85, 0)
Notification.TextScaled = true
Notification.TextSize = 14.000
Notification.TextWrapped = true

Show.Name = "Show"
Show.Parent = Commands
Show.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Show.BackgroundTransparency = 1.000
Show.Position = UDim2.new(0.5,0,0.07,0)
Show.AnchorPoint = Vector2.new(0.5, 0)
Show.Size = UDim2.new(1, 0,0.25, 0)

UIListLayout.Parent = Show
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Placeholder.Parent = Show
Placeholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Placeholder.BackgroundTransparency = 1.000
Placeholder.Size = UDim2.new(1, 0, 0.100000001, 0)
Placeholder.Visible = false
Placeholder.Font = Enum.Font.SourceSansBold
Placeholder.Text = "harvest [player]"
Placeholder.TextColor3 = Color3.fromRGB(255, 255, 255)
Placeholder.TextScaled = true
Placeholder.TextSize = 14.000
Placeholder.TextWrapped = true

CommandBar:GetPropertyChangedSignal("Text"):Connect(function(text)
   local search = CommandBar.Text

   if search == '' then
   	for i,v in pairs(Show:GetChildren()) do
   		if v:IsA("TextLabel") then
   			v.Visible = false
   		end
   	end
   	return
   end

   for i,v in pairs(Show:GetChildren()) do
   	if v:IsA("TextLabel") then
   		if v.Text:lower():match("^" .. search:lower()) then
   			v.Visible = true
   		else
   			v.Visible = false
   		end
   	end
   end
end)


function notify(text, amount)
   Notification:TweenSize(UDim2.new(1, 0,0.05, 0), 'In', 'Bounce', 0.2)
   spawn(function()
      Notification.Text = text
      wait(amount)
      Notification:TweenSize(UDim2.new(1,0,0,0), 'Out', 'Linear', 0.2);
      Notification.Text = ""
   end)
end



local items = {
   ['Wheat'] = 1,
   ['Carrot'] = 2,
   ['Potato'] = 3,
   ['Tomato'] = 4,
   ['Berries'] = 5,
   ['Onions'] = 6,
   ['Grapes'] = 7,
   ['Starfruit'] = 8,
   ['Apple'] = 9,
   ['Orange'] = 10,
   ['Lemon'] = 11,
   ['Avocado'] = 12
}

getgenv().Bools = {
   ['Wheat'] = false,
   ['Carrot'] = false,
   ['Potato'] = false,
   ['Tomato'] = false,
   ['Berries'] = false,
   ['Onions'] = false,
   ['Grapes'] = false,
   ['Starfruit'] = false,
   ['Apple'] = false,
   ['Orange'] = false,
   ['Lemon'] = false,
   ['Avocado'] = false
}

getgenv().ItemNames = {
   ['Wheat'] = 'wheatHarvested',
   ['Carrot'] = 'carrotHarvested',
   ['Potato'] = 'potatoHarvested',
   ['Tomato'] = 'tomatoHarvested',
   ['Berries'] = 'berryHarvested',
   ['Onions'] = 'onionHarvested',
   ['Grapes'] = 'grapeHarvested',
   ['Starfruit'] = 'starfruitHarvested',
   ['Apple'] = 'appleHarvested',
   ['Orange'] = 'orangeHarvested',
   ['Lemon'] = 'lemonHarvested',
   ['Avocado'] = 'avocadoHarvested'
}
 --// UI SHIT \\--
local main = library:Init(game.CoreGui);
local mainFrame = main:AddTab("Main");
local autosell = mainFrame:AddSection("Auto Sell")
local autoharvest = mainFrame:AddSection("Auto Harvest")
local autoplant = mainFrame:AddSection("Auto Plant")


getgenv().AutoHarvestBools = {
   ['Berries'] = false,
   ['Wheat'] = false
}

getgenv().AutoPlantToggles = {
   ['Wheat'] = false,
}



local Toggles = {}

autoharvest:AddToggle("Berries", false, function(toggle)
   AutoHarvestBools.Berries = toggle
end)
autoharvest:AddToggle("Wheat", false, function(toggle)
   AutoHarvestBools.Wheat = toggle
end)

autoplant:AddToggle("Wheat", false, function(toggle)
   AutoPlantToggles.Wheat = toggle
end)


for i,v in pairs(ItemNames) do
   Toggles[i] = autosell:AddToggle(i, false, function(toggle)
      Bools[i] = toggle
   end)
end




local UIS = game:GetService("UserInputService");

local Commands = {
   ['harvest'] = function(player)
      islandName = tostring(player.UserId) .. '-island'
      myIsland = workspace.Islands[islandName]
   end,

}

local CommandArguments = {
   ['harvest'] = 'player'
}

for i,v in pairs(Commands) do
   local searchQuery = Placeholder:Clone()
   searchQuery.Parent = Show
   if CommandArguments[i] == 'player' then
      searchQuery.Text = i .. '[player]'
   else
      searchQuery.Text = i .. CommandArguments[i] or ''
   end
end

Placeholder:Destroy()

-- Command / ScreenGui
-- CommandBar / TextBox

_G.inputbegan = function(key, gpe)
   if key.KeyCode == Enum.KeyCode.Quote and not gpe then
      print("Open")
      CommandBar:TweenPosition(UDim2.new(0.5, 0, 0.00999999978, 0), 'In', 'Quad', 0.1, true)
      CommandBar:CaptureFocus()
      wait(0.1)
      CommandBar.Text = ""
   elseif key.KeyCode == Enum.KeyCode.Return then

      print('Release')
      CommandBar:TweenPosition(UDim2.new(0.5, 0, -0.4, 0), 'Out', 'Linear', 0.1, true)
      CommandBar:ReleaseFocus()

      for i,v in pairs(Show:GetChildren()) do
         if v:IsA("TextLabel") then
            v.Visible = false
         end
      end

      local Args = CommandBar.Text:split(' ');

      if Args[1]:lower() == 'harvest' and Args[2] then
         local player = findPlayer(Args[2]);
         if player then
            Commands.harvest(player)
            notify(string.format("Now harvesting %s's island.", player.Name), 4)
         end
      end
   end
end


UIS.InputBegan:Connect(_G.inputbegan)


_G.mainLoop = function()
   if AutoPlantToggles.Wheat and LP.Backpack:FindFirstChild("wheatSeeds") then


      for i,v in pairs(myIsland.Blocks:GetChildren()) do

         if v.Name == 'soil' then
            print('check')
            local threeStudsAbove = v.CFrame * CFrame.new(0,3,0)
            local isNotBlock = true

            for a,b in pairs(myIsland.Blocks:GetChildren()) do
               if b.CFrame == threeStudsAbove then
                  isNotBlock = false
                  continue
               end
            end

            if isNotBlock then
               placeCrop('wheat', threeStudsAbove)
            end
            wait(.1)
         end

      end

   end

   if AutoHarvestBools.Berries then
      for i,v in pairs(myIsland.Blocks:GetChildren()) do
         if v.Name == 'berryBush' and v['stage'].value == 2 then
            harvestCrop(v);
         end
      end
   end

   if AutoHarvestBools.Wheat then
      for i,v in pairs(myIsland.Blocks:GetChildren()) do
         if v.Name == 'wheat' and v['stage'].value == 3 then
            harvestCrop(v);
         end
      end
   end

   for i,v in pairs(Bools) do
      if v then
         local itemName = ItemNames[i]
         local item = game.Players.LocalPlayer.Backpack:FindFirstChild(itemName) or game.Players.LocalPlayer.Character:FindFirstChild(itemName)

         if item then
            local itemVal = items[i]

            SellRemote:InvokeServer({
                ["merchant"] = "cropSell",
                ["offerId"] = itemVal,
                ["amount"] = item.Amount.Value
            })
         end
      end
   end
end

if not _G.executed then
   while true do

      _G.mainLoop()

      wait()
   end
end
