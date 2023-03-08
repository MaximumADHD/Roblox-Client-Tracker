local PYMKCarousel = script.Parent.Parent
local dependencies = require(PYMKCarousel.dependencies)
local llama = dependencies.llama
local React = dependencies.React
local useSelector = dependencies.Hooks.useSelector
local getDeepValue = dependencies.SocialLibraries.Dictionary.getDeepValue
local EventNames = require(script.Parent.EventNames)
local getFriendStatus = require(script.Parent.getFriendStatus)

local useUserSeenEvent = function(fireAnalyticsEvent: (name: any, args: any?) -> ())
	local userSeenIds = React.useRef({})
	local friendStatuses = useSelector(function(state)
		-- FIXME: We probably don't need to call format here
		-- selene: allow(incorrect_standard_library_use)
		return getDeepValue(state, string.format("PYMKCarousel.Friends.friendshipStatus")) or {}
	end)
	local hasIncomingFriendRequestList = useSelector(function(state)
		-- FIXME: We probably don't need to call format here
		-- selene: allow(incorrect_standard_library_use)
		return getDeepValue(state, string.format("PYMKCarousel.Friends.recommendations.hasIncomingFriendRequest"))
	end) or {}

	return React.useMemo(function()
		return {
			{
				viewabilityConfig = {
					itemVisiblePercentThreshold = 50,
					waitForInteraction = false,
				},
				onViewableItemsChanged = function(info)
					for _, user in pairs(info.changed) do
						local newUserSeen = user.item
						local userSeenIdsArray = userSeenIds.current or {}
						if not userSeenIdsArray[newUserSeen.id] then
							fireAnalyticsEvent(EventNames.UserSeen, {
								userId = newUserSeen.id,
								friendStatus = getFriendStatus(
									friendStatuses[newUserSeen.id],
									hasIncomingFriendRequestList[newUserSeen.id]
								),
								recommendationContextType = newUserSeen.recommendationContextType,
								recommendationRank = newUserSeen.recommendationRank,
								absolutePosition = newUserSeen.absolutePosition,
							})
							userSeenIds.current =
								llama.Dictionary.join(userSeenIds.current, { [newUserSeen.id] = true })
						end
					end
				end,
			},
		}
	end, {})
end

return useUserSeenEvent
