function ProcessArgs(...)
    local args = {...}
    local k = {}
    for i = 2, #args do
        k[i-1] = args[i]
    end
    return k
end

function saymsg(msg)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, 'All')
end

function CheckPlayer(userid)
    for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
        if v.UserId == userid then
            return true
        end
    end
    return false
end

function ReSort(table_)
    local k = {}
    for _, v in ipairs(table_) do
        if CheckPlayer(v) then
            table.insert(k, v)
        end
    end
    return k
end

function FindPlr(arg)
    arg = arg:lower()
    for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
        if v.Name:lower():find(arg) or v.DisplayName:lower():find(arg) then
            return v
        end
    end
    return false
end
