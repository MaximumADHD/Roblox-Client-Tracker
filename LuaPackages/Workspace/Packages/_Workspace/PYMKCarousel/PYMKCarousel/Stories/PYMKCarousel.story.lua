local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local PYMKCarouselComponent = require(PYMKCarousel.Components.PYMKCarouselComponent)
local mockedRecommendationsState = require(PYMKCarousel.TestHelpers.mockedRecommendations).state
local mockStore = require(PYMKCarousel.TestHelpers.mockStore)
local RoactRodux = dependencies.RoactRodux

local DEFAULT_PROPS = {
	carouselTitle = "PYMK Carousel",
	sideMargin = 30,
	openProfilePeekView = function() end,
}

local setupStory = function()
	local store = mockStore(mockedRecommendationsState)

	return function(storyProps)
		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 200),
			BackgroundTransparency = 1,
		}, {
			storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				Roact.createElement(PYMKCarouselComponent, llama.Dictionary.join(DEFAULT_PROPS, storyProps or {})),
			}),
		})
	end
end

return {
	controls = {},
	stories = {
		carousel = setupStory(),
	},
}
