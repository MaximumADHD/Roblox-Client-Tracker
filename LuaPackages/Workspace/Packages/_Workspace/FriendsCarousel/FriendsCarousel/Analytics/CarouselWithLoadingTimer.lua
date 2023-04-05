local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)

local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local NetworkingFriends = dependencies.NetworkingFriends
local compose = dependencies.SocialLibraries.RoduxTools.compose

local Analytics = require(FriendsCarousel.Analytics)
local EventNames = Analytics.EventNames
local withLoadingTimer = require(FriendsCarousel.Analytics.withLoadingTimer)
local RetrievalStatus = dependencies.RetrievalStatus

local getFIntFriendsCarouselLoadingTimeThresholdSec =
	require(FriendsCarousel.Flags.getFIntFriendsCarouselLoadingTimeThresholdSec)

export type InternalProps = {
	fireEvent: (name: any, args: any?) -> (),
	renderComponent: ({
		onSuccessfulRender: () -> (),
	}) -> Instance,
	IXPFetchingStatus: string?,

	isLegacyCarousel: boolean?,

	-- from store
	friendsFetchingStatus: Enum,
	recommendationFetchingStatus: Enum,

	-- from withLoadingTimer
	loadingTimerProps: withLoadingTimer.InjectedProps,
}

type EventValues = {
	loadingTime: number,
	reachedThreshold: boolean,
}

local getReportEvent = function(props: InternalProps, values: EventValues)
	return EventNames.CarouselLoadingTime,
		{
			friendsFetchingStatus = props.friendsFetchingStatus,
			recommendationFetchingStatus = props.recommendationFetchingStatus,
			experimentLayerStatus = props.IXPFetchingStatus,
			isLegacyCarousel = props.isLegacyCarousel,
			loadingThreshold = getFIntFriendsCarouselLoadingTimeThresholdSec(),

			loadingTime = values.loadingTime,
			reachedThreshold = values.reachedThreshold,
		}
end

local isIXPFetching = function(IXPFetchingStatus)
	return not IXPFetchingStatus
		or (IXPFetchingStatus == RetrievalStatus.NotStarted or IXPFetchingStatus == RetrievalStatus.Fetching)
end

local hasIXPFetched = function(IXPFetchingStatus)
	return IXPFetchingStatus
		and (IXPFetchingStatus == RetrievalStatus.Done or IXPFetchingStatus == RetrievalStatus.Failed)
end

local CarouselWithLoadingTimer = Roact.Component:extend("CarouselWithLoadingTimer")

function CarouselWithLoadingTimer:init()
	self._legacyCarouselReported = false

	self.onSuccessfulRender = function()
		local props: InternalProps = self.props

		-- legacy carousel can render first while IXP is fetching experiment value
		-- we want to track this time and track time of new carousel if experiment is enabled
		-- for this reason we don't stop stop timer
		if isIXPFetching(props.IXPFetchingStatus) and props.isLegacyCarousel then
			self._legacyCarouselReported = true

			local getLoadingTime = props.loadingTimerProps.getLoadingTime
			props.fireEvent(getReportEvent(props, {
				reachedThreshold = false,
				loadingTime = getLoadingTime(),
			}))
			return
		end

		props.loadingTimerProps.stopTimer()
	end
end

function CarouselWithLoadingTimer:didMount()
	local props: InternalProps = self.props

	props.loadingTimerProps.startTimer()
end

function CarouselWithLoadingTimer:willUnmount()
	local props: InternalProps = self.props

	props.loadingTimerProps.resetTimer()
end

function CarouselWithLoadingTimer:didUpdate()
	local props: InternalProps = self.props

	if props.isLegacyCarousel and hasIXPFetched(props.IXPFetchingStatus) and self._legacyCarouselReported then
		props.loadingTimerProps.cancelThreshold()
	end
end

function CarouselWithLoadingTimer:render()
	local props: InternalProps = self.props

	return props.renderComponent({
		onSuccessfulRender = self.onSuccessfulRender,
	})
end

CarouselWithLoadingTimer = withLoadingTimer(CarouselWithLoadingTimer, {
	loadingThreshold = getFIntFriendsCarouselLoadingTimeThresholdSec(),
	onReachingThreshold = function(loadingTime: number, props: InternalProps)
		props.fireEvent(getReportEvent(props, {
			reachedThreshold = true,
			loadingTime = loadingTime,
		}))
	end,
	onLoaded = function(loadingTime: number, props: InternalProps)
		props.fireEvent(getReportEvent(props, {
			reachedThreshold = false,
			loadingTime = loadingTime,
		}))
	end,
})

return compose(RoactRodux.connect(function(state)
	local localUserId = tostring(state.LocalUserId)
	return {
		friendsFetchingStatus = NetworkingFriends.GetFriendsFromUserId.getStatus(state, localUserId),
		recommendationFetchingStatus = NetworkingFriends.GetFriendRecommendationsFromUserId.getStatus(
			state,
			localUserId
		),
	}
end, nil))(CarouselWithLoadingTimer)
