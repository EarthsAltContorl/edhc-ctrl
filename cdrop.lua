local goal, cur = 0, 0

workspace.Ignored.Drop.ChildAdded:Connect(function(child)
    if child.Parent and child.Parent.Name == "Drop" then
        repeat wait(0.001) until child.Parent ~= nil
        
        local g = child.BillboardGui.TextLabel.Text:gsub("[%$,]", "")
        cur = cur + tonumber(g)
        
        if cur >= goal then
            game:GetService("RunService"):UnbindFromRenderStep("CDROP_FUNCTION")
            saymsg("Finished")
        end
        
        if getgenv().LOOPDESTROY_ACTIVE == true then
            child:Destroy()
        end
    end
end)

local function Convert(arg)
    local signs = {
        k = 1e3,
        m = 1e6,
        b = 1e9,
        t = 1e12
    }
    
    arg = arg:lower()
    for item, value in pairs(signs) do
        if arg:find(item) then
            return tonumber(arg:gsub(item, "")) * value
        end
    end
    
    return tonumber(arg)
end

return function(...)
    local data = ProccessArgs(...)
    local plr = game:GetService("Players").LocalPlayer
    
    local converted = Convert(data[2])
    if not converted then return end
    
    cur = 0
    goal = converted
    
    saymsg("Started...")
    game:GetService("RunService"):BindToRenderStep("CDROP_FUNCTION", 1, function()
        game:GetService("ReplicatedStorage").MainEvent:FireServer("DropMoney", 10000)
    end)
end
