local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local RoactRodux = dependencies.RoactRodux
local NetworkingFriends = dependencies.NetworkingFriends
local compose = dependencies.SocialLibraries.RoduxTools.compose

local Analytics = require(FriendsCarousel.Analytics)
local EventNames = Analytics.EventNames
local withLoadingTimer = require(FriendsCarousel.Analytics.withLoadingTimer)

local Carousel = require(script.Parent.Carousel)
local mapStateToProps = require(script.Parent.carouselMapStateToProps)
local mapDispatchToProps = require(script.Parent.carouselMapDispatchToProps)

local getFIntFriendsCarouselLoadingTimeThresholdSec =
	require(FriendsCarousel.Flags.getFIntFriendsCarouselLoadingTimeThresholdSec)

export type InternalProps = {
	fireEvent: (name: any, args: any?) -> (),
	friendsFetchingStatus: Enum,
	recommendationFetchingStatus: Enum,
	loadingTimerProps: withLoadingTimer.InjectedProps,
} & Carousel.Props & mapStateToProps.Props & mapDispatchToProps.Props

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

	return Roact.createElement(
		Carousel,
		llama.Dictionary.join(props, {
			onSuccessfulRender = self.onSuccessfulRender,
			loadingTimerProps = llama.None,
			fireEvent = llama.None,
			friendsFetchingStatus = llama.None,
			recommendationFetchingStatus = llama.None,
		})
	)
end

CarouselWithLoadingTimer = withLoadingTimer(CarouselWithLoadingTimer, {
	loadingThreshold = getFIntFriendsCarouselLoadingTimeThresholdSec(),
	onReachingThreshold = function(loadingTime: number, props: InternalProps)
		props.fireEvent(EventNames.CarouselLoadingTime, {
			friendsFetchingStatus = props.friendsFetchingStatus,
			recommendationFetchingStatus = props.recommendationFetchingStatus,
			carouselFetchingStatus = props.fetchingStatus,
			loadingTime = loadingTime,
			reachedThreshold = true,
			loadingThreshold = getFIntFriendsCarouselLoadingTimeThresholdSec(),
		})
	end,
	onLoaded = function(loadingTime: number, props: InternalProps)
		props.fireEvent(EventNames.CarouselLoadingTime, {
			friendsFetchingStatus = props.friendsFetchingStatus,
			recommendationFetchingStatus = props.recommendationFetchingStatus,
			carouselFetchingStatus = props.fetchingStatus,
			loadingTime = loadingTime,
			reachedThreshold = false,
			loadingThreshold = getFIntFriendsCarouselLoadingTimeThresholdSec(),
		})
	end,
})

return compose(
	Analytics.connect(function(analytics)
		return {
			fireEvent = analytics.fireEvent,
		}
	end),
	RoactRodux.connect(function(state)
		local localUserId = tostring(state.LocalUserId)
		return {
			friendsFetchingStatus = NetworkingFriends.GetFriendsFromUserId.getStatus(state, localUserId),
			recommendationFetchingStatus = NetworkingFriends.GetFriendRecommendationsFromUserId.getStatus(
				state,
				localUserId
			),
		}
	end, nil)
)(CarouselWithLoadingTimer)
