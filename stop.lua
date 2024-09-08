return function()
    local RunService = game:GetService("RunService")

    pcall(function() 
        RunService:UnbindFromRenderStep("DROP_FUNCTION")
    end)

    pcall(function() 
        RunService:UnbindFromRenderStep("CDROP_FUNCTION")
    end)

    getgenv().STOPACTIONS = true
    getgenv().LOOPDESTROY_ACTIVE = false

    wait(5)

    getgenv().STOPACTIONS = false
end
