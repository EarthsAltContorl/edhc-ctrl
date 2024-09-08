return function(...)
    local data = ProcessArgs(...)  -- Corrected spelling of "ProcessArgs"
    local plr = game:GetService("Players").LocalPlayer  -- Using GetService instead of service

    if data[2] == "show" then
        local wallet = plr.Backpack:FindFirstChild("Wallet")
        if wallet then
            wallet.Parent = plr.Character
        end
    elseif data[2] == "hide" then
        local wallet = plr.Character:FindFirstChild("Wallet")
        if wallet then
            wallet.Parent = plr.Backpack
        end
    end
end
