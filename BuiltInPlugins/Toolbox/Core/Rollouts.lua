local Plugin = script.Parent.Parent

local getUserId = require(Plugin.Core.Util.getUserId)
local isUserIdInGradualRollout = require(Plugin.Core.Util.isUserIdInGradualRollout)

local Rollouts = {}

function Rollouts:getMarketplaceAutocomplete()
    local rolloutPercentage = tonumber(settings():GetFVariable("ToolboxMarketplaceAutocompleteRolloutPercentage"))
    return isUserIdInGradualRollout(getUserId(), rolloutPercentage)
end

return Rollouts
