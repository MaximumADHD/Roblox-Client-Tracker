return {
	installReducer = require(script.Parent.installReducer),
	FriendsCarousel = require(script.Parent.Components.Carousel),
	FriendsCarouselIXP = require(script.Parent.Flags.FriendsCarouselIXP),
	FetchFriendsCarousel = require(script.Parent.Networking.FetchFriendsAndRecommendations),
	setupFireEvent = require(script.Parent.Analytics.setupFireEvent),
	EventNames = require(script.Parent.Analytics.EventNames),
	CarouselWithLoadingTimer = require(script.Parent.Analytics.CarouselWithLoadingTimer),
	dependencies = require(script.Parent.dependencies),
	["jest.config"] = script.Parent["jest.config"],
}
