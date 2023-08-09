local CorePackages = game:GetService("CorePackages")
local rolloutByApplicationId = require(CorePackages.Workspace.Packages.AppCommonLib).rolloutByApplicationId
local isCharacterNameHandlerEnabled = require(CorePackages.Workspace.Packages.SharedFlags).isCharacterNameHandlerEnabled

game:DefineFastInt("PlayerListUserProfileApiRollout_v2", 0)
game:DefineFastFlag("PlayerListUserProfileApiEnabledForAll_v2", false)

local playerListUserProfileApiRollout = function()
	return game:GetFastInt("PlayerListUserProfileApiRollout_v2")
end

local playerListUserProfileApiEnabledForAll = function()
	return game:GetFastFlag("PlayerListUserProfileApiEnabledForAll_v2")
end

local getIsRolloutEnabled

return function()
	if not isCharacterNameHandlerEnabled() then
		return false
	end

	-- This is to cache the callback so it returns a consistent value.
	-- Covers against the edge case where getting the applicationId can return different values.
	if not getIsRolloutEnabled then
		getIsRolloutEnabled = rolloutByApplicationId(playerListUserProfileApiRollout)
	end

	return playerListUserProfileApiEnabledForAll() or getIsRolloutEnabled()
end
