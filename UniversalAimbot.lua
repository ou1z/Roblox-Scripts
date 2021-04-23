local config = {
    TeamCheck = true,
    FOV = 150,
    Smoothness = 15,
    VisbilityCheck = true,
    AimbotKeybind = Enum.KeyCode.LeftControl
}

local uis = game:GetService("UserInputService")

function tweenmouse(x, y, sens, maxTime)
    local mag = 5000
    local started = tick()
    sens = sens or 2
    maxTime = maxTime or 2
    repeat 
        
        local difference = (Vector2.new(x,y) -  uis:GetMouseLocation())
        mousemoverel(difference.X / sens, difference.Y / sens)
        mag = difference.magnitude

        wait()
        
    until mag < 100 or (maxTime and tick() - started > maxTime)
end

local players = game:GetService("Players")
local rs = game:GetService("RunService")
local camera = workspace.CurrentCamera
local inset = game:GetService("GuiService"):GetGuiInset()
local lp = players.LocalPlayer

local function visible(part)
    local ray = Ray.new(camera.CFrame.p, (part.Position - camera.CFrame.p).unit * 50000)
    local hit, pos = workspace:FindPartOnRayWithIgnoreList(ray, {camera, lp.Character})
    local player = players:GetPlayerFromCharacter(hit.Parent)
    return player == players:GetPlayerFromCharacter(part.Parent)
end
local function gcc()
    local closest, player, position, worldposition = math.huge, nil, nil, nil
    for _, plr in pairs(players:GetPlayers()) do
        if plr ~= lp then
            if config.TeamCheck and plr.Team == lp.Team then continue end
            if plr.Character and plr.Character:FindFirstChild("Head") and plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health > 0 then
                
                if config.VisbilityCheck then
                    if not visible(plr.Character.Head) then
                        continue
                    end
                end
                
                local vector = camera:WorldToViewportPoint(plr.Character.Head.Position)
                vector = Vector2.new(vector.X, vector.Y)
                local magnitude = (uis:GetMouseLocation() - vector).magnitude
                
                if magnitude < closest and magnitude < config.FOV then
                    player = plr 
                    closest = magnitude
                    position = vector
                    worldposition = plr.Character.Head.Position
                end
                
            end
        end
    end
    return player, position, worldposition
end


local AimbotProps = {
    Enabled = false
}

uis.InputBegan:Connect(function(key,gpe)
    if gpe then return end
    if key.KeyCode == config.AimbotKeybind or key.UserInputType == config.AimbotKeybind then
        AimbotProps.Enabled = true
    end
end)
uis.InputEnded:Connect(function(key,gpe)
    if key.KeyCode == config.AimbotKeybind or key.UserInputType == config.AimbotKeybind then
        warn('disable')
        AimbotProps.Enabled = false
    end
end)

local FOVCircle = Drawing.new("Circle") do
    FOVCircle.Visible = true
    FOVCircle.Position = uis:GetMouseLocation()
    FOVCircle.Thickness = 3
    FOVCircle.Radius = config.FOV
end

rs.Heartbeat:Connect(function()
    FOVCircle.Position = uis:GetMouseLocation()
    if AimbotProps.Enabled then
        local player, position, worldposition = gcc()
        if player then
            tweenmouse(position.X, position.Y, config.Smoothness, 0.5)
        end
    end
end)
