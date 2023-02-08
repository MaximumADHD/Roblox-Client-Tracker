local PYMKCarousel = script.Parent.Parent.Parent
local dependencies = require(PYMKCarousel.dependencies)
local Roact = dependencies.Roact
local React = dependencies.React

local useSelector = dependencies.Hooks.useSelector
local dependencyArray = dependencies.Hooks.dependencyArray

local UIBlox = dependencies.UIBlox
local FreeFlowCarousel = UIBlox.App.Container.Carousel.FreeFlowCarousel
local SocialLibraries = dependencies.SocialLibraries
local calculateContextualMaxHeight = SocialLibraries.Components.CarouselUserTile.calculateContextualMaxHeight

local Analytics = require(PYMKCarousel.Analytics)
local setupFireEvent = Analytics.setupFireEvent
local EventNames = Analytics.EventNames
local useUserSeenEvent = Analytics.useUserSeenEvent
local getSessionIdByKey = dependencies.RoduxAnalytics.Selectors.getSessionIdByKey
local RECOMMENDATION_SESSION_ID_KEY = require(PYMKCarousel.Common.Constants).RECOMMENDATION_SESSION_ID_KEY

local PYMKCarouselUserTile = require(PYMKCarousel.Components.PYMKCarouselUserTile)
local getPYMKSortedRecommendationIds = require(PYMKCarousel.installReducer.Selectors.getPYMKSortedRecommendationIds)
local getFFlagPYMKCarouselIncomingFriendRequestAnalytics =
	require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendRequestAnalytics)
local getFFlagPYMKDontUseIngestService = dependencies.getFFlagPYMKDontUseIngestService

local TILE_HEIGHT: number = 100
local TILE_WIDTH: number = 100
local CONTEXTUAL_MAX_LINES: number = 2

export type Props = {
	carouselTitle: string,
	openProfilePeekView: (userId: string, extraProps: any?) -> (),
	sideMargin: number?,
	showToast: (toastMessage: string) -> (),
	diagService: any,
	eventIngestService: any,
	eventStreamService: any,

	--* this prop changes on each OmniFeed fetch/refresh
	omniSessionId: string?,
}

local getIdentifier = function(item)
	return item.id
end

local refreshCountGlobal = 0

local PYMKCarouselComponent = function(props: Props)
	local forceUpdateRecs, setForceUpdateRecs = React.useState({})
	local refreshCount, setRefreshCount = React.useState(0) -- remove when removing getFFlagPYMKCarouselIncomingFriendRequestAnalytics

	local localUserId = useSelector(function(state)
		return tostring(state.LocalUserId)
	end)

	local recommendationIds = useSelector(getPYMKSortedRecommendationIds(localUserId))
	local recommendationCount = recommendationIds and #recommendationIds or 0

	local style = UIBlox.Core.Style.useStyle()
	local contextualMaxHeight = React.useMemo(function()
		return calculateContextualMaxHeight({
			font = style.Font,
		})
	end, { style.Font })

	local recommendationSessionId = useSelector(function(state)
		return getSessionIdByKey(state)(RECOMMENDATION_SESSION_ID_KEY)
	end)

	local fireAnalyticsEvent = React.useMemo(function()
		return setupFireEvent({
			infoForAllEvents = {
				uid = localUserId,
				recommendationSessionId = recommendationSessionId,
			},
			analytics = {
				Diag = props.diagService,
				EventStream = if getFFlagPYMKDontUseIngestService()
					then props.eventStreamService
					else props.eventIngestService,
			},
		})
	end, dependencyArray(localUserId, recommendationSessionId))

	React.useEffect(function()
		setForceUpdateRecs(recommendationIds)
	end, dependencyArray(recommendationCount, props.omniSessionId))

	React.useEffect(function()
		fireAnalyticsEvent(EventNames.CarouselLoadedWithUsers, {
			recommendationCount = recommendationCount,
			refreshCount = if getFFlagPYMKCarouselIncomingFriendRequestAnalytics()
				then refreshCountGlobal
				else refreshCount,
		})
		if getFFlagPYMKCarouselIncomingFriendRequestAnalytics() then
			refreshCountGlobal = refreshCountGlobal + 1
		else
			setRefreshCount(refreshCount + 1)
		end
	end, { props.omniSessionId })

	local viewabilityConfigCallbackPairs = useUserSeenEvent(fireAnalyticsEvent)

	local renderItem = function(item)
		return Roact.createElement(PYMKCarouselUserTile, {
			userId = item.id,
			tileWidth = TILE_WIDTH,
			contextualInfoLines = CONTEXTUAL_MAX_LINES,
			openProfilePeekView = props.openProfilePeekView,
			showToast = props.showToast,
			fireAnalyticsEvent = fireAnalyticsEvent,
			absolutePosition = item.absolutePosition,
			recommendationSessionId = recommendationSessionId,
		})
	end

	return Roact.createElement(FreeFlowCarousel, {
		headerText = props.carouselTitle,
		identifier = getIdentifier,
		itemList = forceUpdateRecs,
		renderItem = renderItem,
		itemSize = Vector2.new(TILE_WIDTH, TILE_HEIGHT + contextualMaxHeight),
		carouselMargin = props.sideMargin,
		viewabilityConfigCallbackPairs = viewabilityConfigCallbackPairs,
	})
end

local WrapperComponent = function(props: Props)
	local recommendationSessionId = useSelector(function(state)
		return getSessionIdByKey(state)(RECOMMENDATION_SESSION_ID_KEY)
	end)

	local localUserId = useSelector(function(state)
		return tostring(state.LocalUserId)
	end)

	if not recommendationSessionId or not localUserId then
		return nil :: any
	else
		return Roact.createElement(PYMKCarouselComponent, props)
	end
end

return WrapperComponent
