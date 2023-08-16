local CorePackages = game:GetService("CorePackages")
local rolloutByApplicationId = require(CorePackages.Workspace.Packages.AppCommonLib).rolloutByApplicationId
local isCharacterNameHandlerEnabled = require(CorePackages.Workspace.Packages.SharedFlags).isCharacterNameHandlerEnabled

game:DefineFastInt("LeaderboardUserProfileApiRollout", 0)
game:DefineFastFlag("LeaderboardUserProfileApiEnabledForAll", false)

local leaderboardUserProfileApiRollout = function()
	return game:GetFastInt("LeaderboardUserProfileApiRollout")
end

local leaderboardUserProfileApiEnabledForAll = function()
	return game:GetFastFlag("LeaderboardUserProfileApiEnabledForAll")
end

local getIsRolloutEnabled

return function()
	if not isCharacterNameHandlerEnabled() then
		return false
	end

	-- This is to cache the callback so it returns a consistent value.
	-- Covers against the edge case where getting the applicationId can return different values.
	if not getIsRolloutEnabled then
		getIsRolloutEnabled = rolloutByApplicationId(leaderboardUserProfileApiRollout)
	end

	return leaderboardUserProfileApiEnabledForAll() or getIsRolloutEnabled()
end
