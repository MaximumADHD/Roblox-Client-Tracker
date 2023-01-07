local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local PYMKCarouselUserTile = require(PYMKCarousel.Components.PYMKCarouselUserTile)
local mockedRecommendationsState = require(PYMKCarousel.TestHelpers.mockedRecommendations).state
local recommendationIds = require(PYMKCarousel.TestHelpers.mockedRecommendations).recommendationIds
local mockStore = require(PYMKCarousel.TestHelpers.mockStore)
local RoactRodux = dependencies.RoactRodux

local DEFAULT_PROPS = {
	tileWidth = 100,
	localUserId = "0",
	contextualInfoLines = 2,
	openProfilePeekView = function() end,
}

local setupStory = function(userId)
	local store = mockStore(mockedRecommendationsState)

	return function(storyProps)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 150),
			BackgroundTransparency = 1,
		}, {
			storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				Roact.createElement(
					PYMKCarouselUserTile,
					llama.Dictionary.join(DEFAULT_PROPS, storyProps or {}, {
						userId = userId,
					})
				),
			}),
		})
	end
end

return {
	controls = {},
	stories = {
		longName = setupStory(recommendationIds.longName),
		noContext = setupStory(recommendationIds.noContext),
		mutualContextPlural = setupStory(recommendationIds.mutualContextPlural),
		mutualContextSingle = setupStory(recommendationIds.mutualContextSingle),
		mutualContextNone = setupStory(recommendationIds.mutualContextNone),
		frequentContext = setupStory(recommendationIds.frequentContext),
		pendingFriendRequest = setupStory(recommendationIds.pendingFriendRequest),
		incomingFriendRequest = setupStory(recommendationIds.incomingFriendRequest),
	},
}
