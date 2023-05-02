local PYMKCarousel = script.Parent.Parent.Parent
local dependencies = require(PYMKCarousel.dependencies)
local TextKeys = require(PYMKCarousel.Common.TextKeys)
local FriendshipOriginSourceType = dependencies.NetworkingFriendsEnums.FriendshipOriginSourceType

local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images
local React = dependencies.React

local useDispatch = dependencies.Hooks.useDispatch
local useSelector = dependencies.Hooks.useSelector

local NetworkingFriends = dependencies.NetworkingFriends
local RoduxNetworking = dependencies.RoduxNetworking
local NetworkStatus = RoduxNetworking.Enum.NetworkStatus

local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local Analytics = require(PYMKCarousel.Analytics)
local EventNames = Analytics.EventNames

local getFFlagPYMKDisableButtonsOnFetch = require(PYMKCarousel.Flags.getFFlagPYMKDisableButtonsOnFetch)

type Props = {
	userId: string,
	showToast: (toastMessageKey: string) -> (),
	fireAnalyticsEvent: (name: any, args: any?) -> (),
	absolutePosition: number,
}

type IsButtonLoading = {
	RequestFriendshipFromUserId: boolean,
	AcceptFriendRequestFromUserId: boolean,
}

local isRequestFetching = function(state: any, fetchEndpoint: any, userId: string): boolean
	return fetchEndpoint.getStatus(state, userId) == NetworkStatus.Fetching
end

return function(props: Props)
	return function()
		local userId = tostring(props.userId)
		local dispatch = useDispatch()
		local localUserId = useSelector(function(state)
			return tostring(state.LocalUserId)
		end)
		local friendshipStatus = useSelector(function(state)
			-- TODO SOCGRAPH-326: move to user rodux selectors
			return getDeepValue(state, string.format("PYMKCarousel.Friends.friendshipStatus.%s", userId)) or nil
		end)
		local recommendation = useSelector(function(state)
			-- TODO SOCGRAPH-326: move to friends rodux selectors
			return getDeepValue(
				state,
				string.format("PYMKCarousel.Friends.recommendations.byUserId.%s.%s", localUserId, userId)
			) or {}
		end)

		local hasIncomingFriendRequest = useSelector(function(state)
			-- TODO SOCGRAPH-326: move to friends rodux selectors
			return getDeepValue(
				state,
				string.format("PYMKCarousel.Friends.recommendations.hasIncomingFriendRequest.%s", userId)
			) or false
		end)

		local isButtonLoading: IsButtonLoading? = if getFFlagPYMKDisableButtonsOnFetch()
			then useSelector(function(state)
				return {
					RequestFriendshipFromUserId = isRequestFetching(
						state,
						NetworkingFriends.RequestFriendshipFromUserId,
						userId
					),
					AcceptFriendRequestFromUserId = isRequestFetching(
						state,
						NetworkingFriends.AcceptFriendRequestFromUserId,
						userId
					),
				}
			end)
			else nil

		return React.useMemo(function()
			if friendshipStatus == Enum.FriendStatus.FriendRequestSent then
				return {
					{
						icon = Images["icons/actions/friends/friendpending"],
						isSecondary = true,
						isDisabled = true,
					},
				}
			elseif hasIncomingFriendRequest then
				return {
					{
						icon = Images["icons/actions/friends/friendAdd"],
						isSecondary = false,
						isDisabled = if getFFlagPYMKDisableButtonsOnFetch()
							then if isButtonLoading then isButtonLoading.AcceptFriendRequestFromUserId else false
							else false,
						onActivated = function()
							props.fireAnalyticsEvent(EventNames.AcceptFriendship, {
								recommendationContextType = recommendation.contextType,
								requestedId = userId,
								recommendationRank = recommendation.rank,
								absolutePosition = props.absolutePosition,
							})
							dispatch(NetworkingFriends.AcceptFriendRequestFromUserId.API({
									currentUserId = localUserId,
									targetUserId = userId,
								}))
								:andThen(function()
									props.showToast(TextKeys.FriendAddedToast)
								end)
								:catch(function()
									props.showToast(TextKeys.SomethingIsWrongToast)
								end)
						end,
					},
				}
			elseif not friendshipStatus or friendshipStatus == Enum.FriendStatus.NotFriend then
				return {
					{
						icon = Images["icons/actions/friends/friendAdd"],
						isSecondary = false,
						isDisabled = if getFFlagPYMKDisableButtonsOnFetch()
							then if isButtonLoading then isButtonLoading.RequestFriendshipFromUserId else false
							else false,
						onActivated = function()
							props.fireAnalyticsEvent(EventNames.RequestFriendship, {
								recommendationContextType = recommendation.contextType,
								requestedId = userId,
								recommendationRank = recommendation.rank,
								absolutePosition = props.absolutePosition,
							})
							dispatch(NetworkingFriends.RequestFriendshipFromUserId.API({
									currentUserId = localUserId,
									targetUserId = userId,
									friendshipOriginSourceType = FriendshipOriginSourceType.FriendRecommendations.rawValue(),
								}))
								:andThen(function()
									props.showToast(TextKeys.FriendRequestSentToast)
								end)
								:catch(function()
									props.showToast(TextKeys.SomethingIsWrongToast)
								end)
						end,
					},
				}
			else
				return {}
			end
		end, { friendshipStatus, userId })
	end
end
