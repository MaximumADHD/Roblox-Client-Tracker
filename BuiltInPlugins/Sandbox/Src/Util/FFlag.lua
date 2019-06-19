local flagMap = {}

-- void getFFlagValue(string flag)
local function getFFlagValue(flag)
    local flagExists, flagValue = pcall(function () return settings():GetFFlag(flag) end)
    flagMap[flag] = flagExists and flagValue
end


local FFlag = {}

-- bool FFlag:isEnabled(string flag)
function FFlag:isEnabled(flag)
    if (flagMap[flag] == nil) then
        getFFlagValue(flag)
    end
    
    return flagMap[flag]
end

return FFlag