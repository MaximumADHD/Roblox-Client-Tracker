local PYMKCarousel = script.Parent.Parent.Parent
local dependencies = require(PYMKCarousel.dependencies)

local Roact = dependencies.Roact
local useSelector = dependencies.Hooks.useSelector

local SocialLibraries = dependencies.SocialLibraries
local CarouselUserTile = SocialLibraries.Components.CarouselUserTile.CarouselUserTile
local getDeepValue = SocialLibraries.Dictionary.getDeepValue
local PYMKCarouselUserContextualInfo = require(script.Parent.PYMKCarouselUserContextualInfo)
local usePYMKCarouselUserButtons = require(script.Parent.usePYMKCarouselUserButtons)
local Analytics = require(PYMKCarousel.Analytics)
local EventNames = Analytics.EventNames
local getFriendStatus = require(PYMKCarousel.Analytics.getFriendStatus)
local Constants = require(PYMKCarousel.Common.Constants)

local getFFlagPYMKCarouselIncomingFriendRequestAnalytics =
	require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendRequestAnalytics)
local getFFlagPYMKCarouselFixAnalyticsFields = require(PYMKCarousel.Flags.getFFlagPYMKCarouselFixAnalyticsFields)

type Props = {
	userId: string | number,
	tileWidth: number,
	contextualInfoLines: number?,
	openProfilePeekView: (userId: string, extraProps: any?) -> (),
	showToast: (toastMessage: string) -> (),
	fireAnalyticsEvent: (name: any, args: any?) -> (),
	absolutePosition: number,
	recommendationSessionId: string?,
}

return function(props: Props)
	local localUserId = useSelector(function(state)
		return tostring(state.LocalUserId)
	end)

	local userId = tostring(props.userId)

	local user = useSelector(function(state)
		-- TODO SOCGRAPH-326: move to user rodux selectors
		return getDeepValue(state, string.format("PYMKCarousel.Users.byUserId.%s", userId))
	end)

	local friendshipStatus = useSelector(function(state)
		-- TODO SOCGRAPH-326: move to user rodux selectors
		return getDeepValue(state, string.format("PYMKCarousel.Friends.friendshipStatus.%s", userId)) or nil
	end)

	local hasIncomingFriendRequest = if getFFlagPYMKCarouselIncomingFriendRequestAnalytics()
		then useSelector(function(state)
			return getDeepValue(
				state,
				string.format("PYMKCarousel.Friends.recommendations.hasIncomingFriendRequest.%s", userId)
			)
		end)
		else nil

	if getFFlagPYMKCarouselIncomingFriendRequestAnalytics() then
		friendshipStatus = getFriendStatus(friendshipStatus, hasIncomingFriendRequest)
	end

	local recommendation = useSelector(function(state)
		-- TODO SOCGRAPH-326: move to friends rodux selectors
		return getDeepValue(
			state,
			string.format("PYMKCarousel.Friends.recommendations.byUserId.%s.%s", localUserId, userId)
		) or {}
	end)

	local renderButtons = usePYMKCarouselUserButtons({
		userId = userId,
		showToast = props.showToast,
		fireAnalyticsEvent = props.fireAnalyticsEvent,
		absolutePosition = props.absolutePosition,
	})

	local renderContextualInfo = function()
		return PYMKCarouselUserContextualInfo({
			lineWidth = props.tileWidth,
			userId = props.userId,
		})
	end

	local mutualFriendsCount
	if recommendation.mutualFriendsCount then
		mutualFriendsCount = recommendation.mutualFriendsCount
	else
		mutualFriendsCount = if recommendation.mutualFriendsList then #recommendation.mutualFriendsList else nil
	end

	local openProfilePeekView = function()
		props.openProfilePeekView(userId, {
			absolutePosition = if getFFlagPYMKCarouselFixAnalyticsFields() then props.absolutePosition else nil,
			isRecommendation = true,
			recommendationContextType = recommendation.contextType.rawValue(),
			mutualFriendsCount = mutualFriendsCount,
			recommendationSessionId = props.recommendationSessionId,
			recommendationRank = recommendation.rank,
			source = Constants.HomepagePYMKCarouselSourceName,
		})
	end

	local onActivatedTile = function()
		openProfilePeekView()
		props.fireAnalyticsEvent(EventNames.UserPressed, {
			recommendationId = userId,
			friendStatus = friendshipStatus,
			recommendationContextType = recommendation.contextType,
			recommendationRank = recommendation.rank,
			absolutePosition = props.absolutePosition,
		})
	end

	return Roact.createFragment({
		PYMKCarouselUserTile = Roact.createElement("Frame", {
			Size = UDim2.new(0, props.tileWidth, 0, props.tileWidth),
			BackgroundTransparency = 1,
		}, {
			CarouselUserTile = Roact.createElement(CarouselUserTile, {
				userId = userId,
				userName = user.displayName or "",
				tileSize = props.tileWidth,
				renderContextualInfo = renderContextualInfo,
				renderButtons = renderButtons,
				onActivatedTile = onActivatedTile,
				onActivatedContextual = onActivatedTile,
			}),
		}),
	})
end
