return function()
    local Players = game:GetService("Players")
    local plr = Players.LocalPlayer
    
    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
        plr.Character.HumanoidRootPart.Anchored = false
    end
    
    local airlockPart = workspace:FindFirstChild("AirlockPart")
    if airlockPart then
        airlockPart:Destroy()
    end
end
