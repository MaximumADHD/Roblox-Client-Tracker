local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)

local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local NetworkingFriends = dependencies.NetworkingFriends
local compose = dependencies.SocialLibraries.RoduxTools.compose

local Analytics = require(FriendsCarousel.Analytics)
local EventNames = Analytics.EventNames
local withLoadingTimer = require(FriendsCarousel.Analytics.withLoadingTimer)

local getFIntFriendsCarouselLoadingTimeThresholdSec =
	require(FriendsCarousel.Flags.getFIntFriendsCarouselLoadingTimeThresholdSec)

export type InternalProps = {
	fireEvent: (name: any, args: any?) -> (),
	renderComponent: ({
		onSuccessfulRender: () -> (),
	}) -> Instance,

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
			loadingThreshold = getFIntFriendsCarouselLoadingTimeThresholdSec(),

			loadingTime = values.loadingTime,
			reachedThreshold = values.reachedThreshold,
		}
end

local CarouselWithLoadingTimer = Roact.Component:extend("CarouselWithLoadingTimer")

function CarouselWithLoadingTimer:init()
	self.onSuccessfulRender = function()
		local props: InternalProps = self.props

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
