local valk = game:GetService("Workspace")["Valkyrie Helm giver"]
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()

char:WaitForChild("Head")
firetouchinterest(char.Head,valk,1)
firetouchinterest(char.Head,valk,0)

plr.CharacterAdded:Connect(function(char)
    char:WaitForChild("Head")
    firetouchinterest(char.Head,valk,1)
    firetouchinterest(char.Head,valk,0)
end)
