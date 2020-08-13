local GlobalConfig = require(script.Parent.Parent.GlobalConfig)

local function maybeAssert(...)
    if GlobalConfig.actionValidation then
        return assert(...)
    end
end

return maybeAssert
