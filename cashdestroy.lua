local Destroying = false

local function handleDrop(child)
    if child.Parent and child.Parent.Name == "Drop" then
        task.wait(2)
        if Destroying and child.Parent then
            child:Destroy()
        end
    end
end

workspace.Ignored.Drop.ChildAdded:Connect(handleDrop)

return function(...)
    local data = ProccessArgs(...)
    if data and data[2] then
        Destroying = data[2]:lower() == 'on'
    end
end

