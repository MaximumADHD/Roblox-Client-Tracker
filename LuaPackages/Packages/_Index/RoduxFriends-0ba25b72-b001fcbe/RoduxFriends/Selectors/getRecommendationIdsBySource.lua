local RoduxFriends = script.Parent.Parent
local Packages = RoduxFriends.Parent

local getDeepValue = require(RoduxFriends.getDeepValue)
local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

return function(options: roduxFriendsTypes.RoduxFriendsOptions)
	local keyPath = options.keyPath
	return function(state)
		return function(source: string): { [number]: roduxFriendsTypes.UserId }
			local PYMKRecommendationIds = getDeepValue(
				state, string.format(
					"%s.recommendations.bySource.%s",
					keyPath,
					source or ""
				)
			) or {}

			return Object.keys(PYMKRecommendationIds)
		end
	end
end
