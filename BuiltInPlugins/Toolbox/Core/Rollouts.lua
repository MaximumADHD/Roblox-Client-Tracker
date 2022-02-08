local Plugin = script.Parent.Parent

local getUserId = require(Plugin.Core.Util.getUserId)
local isUserIdInGradualRollout = require(Plugin.Core.Util.isUserIdInGradualRollout)

local Rollouts = {}

function Rollouts:getToolboxGroupCreationsMigration()
    local rolloutPercentage = tonumber(settings():GetFVariable("ToolboxGroupCreationsMigrationRolloutPercentage3"))
    return isUserIdInGradualRollout(getUserId(), rolloutPercentage)
end

return Rollouts
