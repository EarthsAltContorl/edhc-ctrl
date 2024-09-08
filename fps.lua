local function setFPSCap(...)
    local data = ProccessArgs(...)
    setfpscap(tonumber(data[2]))
end

return setFPSCap
