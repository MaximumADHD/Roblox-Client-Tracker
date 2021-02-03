local Plugin = script.Parent.Parent.Parent

local getUserId = require(Plugin.Core.Util.getUserId)
local isUserIdInGradualRollout = require(Plugin.Core.Util.isUserIdInGradualRollout)

return function()
    local rolloutPercentage = tonumber(settings():GetFVariable("ToolboxModelsMicroserviceSearchRolloutPercentage"))
    return isUserIdInGradualRollout(getUserId(), rolloutPercentage)
end