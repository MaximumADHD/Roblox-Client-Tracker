local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local devDependencies = require(PYMKCarousel.devDependencies)
local dependencies = require(PYMKCarousel.dependencies)
local Roact = dependencies.Roact
local React = dependencies.React
local jest = devDependencies.jest
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = require(PYMKCarousel.TestHelpers.createTreeWithProviders)
local mockedRecommendationsState = require(PYMKCarousel.TestHelpers.mockedRecommendations).state
local Analytics = require(PYMKCarousel.Analytics)
local validateEvent = require(PYMKCarousel.TestHelpers.validateEvent)
local EventNames = Analytics.EventNames
local mockAnalytics = dependencies.SocialLuaAnalytics.TestingAnalytics.mockAnalytics
local llama = dependencies.llama
local mockStore = require(PYMKCarousel.TestHelpers.mockStore)
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local RECOMMENDATION_SESSION_ID_KEY = require(PYMKCarousel.Common.Constants).RECOMMENDATION_SESSION_ID_KEY
local waitForEvents = devDependencies.DeferredLuaHelpers.waitForEvents
local waitUntil = devDependencies.waitUntil

local getFFlagPYMKDontUseIngestService = dependencies.getFFlagPYMKDontUseIngestService
local getFFlagPYMKCarouselIncomingFriendRequest = require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendRequest)
local getFFlagPYMKCarouselIncomingFriendRequestAnalytics =
	require(PYMKCarousel.Flags.getFFlagPYMKCarouselIncomingFriendRequestAnalytics)

local PYMKCarouselComponent = require(script.Parent.PYMKCarouselComponent)

local DEFAULT_PROPS = {
	carouselTitle = "carouselTitle",
	openProfilePeekView = function() end,
	analyticsService = mockAnalytics(jest),
	diagService = {
		reportCounter = jest.fn(),
		reportStats = jest.fn(),
	},
	eventStreamService = if getFFlagPYMKDontUseIngestService() then { setRBXEventStream = jest.fn() } else nil,
	eventIngestService = if getFFlagPYMKDontUseIngestService() then nil else { setRBXEventStream = jest.fn() },
	navigation = {},
	omniSessionId = "initialOmniSessionId",
}

local state = mockedRecommendationsState

local mockedAnalytics = mockAnalytics(jest)

-- Number of mocked recommendations in mockedRecommendationsState
local MOCKED_RECOMMENDATIONS_COUNT = if getFFlagPYMKCarouselIncomingFriendRequest() then 8 else 7

-- This test needs to run first, in order for refreshCountGlobal to be correct
it("SHOULD fire analytics event CarouselLoadedWithUsers when mounted and when omniSessionid changed", function()
	local triggerUpdate

	local wrappedElement = function(props)
		local state, setState = React.useState({})
		triggerUpdate = setState

		return Roact.createElement(PYMKCarouselComponent, llama.Dictionary.join(props, state))
	end

	local PYMKCarousel = createTreeWithProviders(wrappedElement, {
		store = mockStore(state),
		props = llama.Dictionary.join(DEFAULT_PROPS, {
			eventIngestService = if getFFlagPYMKDontUseIngestService() then nil else mockedAnalytics.EventStream,
			eventStreamService = if getFFlagPYMKDontUseIngestService() then mockedAnalytics.EventStream else nil,
			diagService = mockedAnalytics.Diag,
		}),
	})

	runWhileMounted(PYMKCarousel, function(parent)
		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			mockedAnalytics.EventStream,
			validateEvent(EventNames.CarouselLoadedWithUsers, {
				uid = "123456",
				source = "HomepagePYMKCarousel",
				recommendationCount = MOCKED_RECOMMENDATIONS_COUNT,
				refreshCount = 0,
				recommendationSessionId = "mockedRecommendationSessionId",
			})
		)

		waitUntil(function()
			local callCount = #mockedAnalytics.EventStream.setRBXEventStream.mock.calls
			return callCount == MOCKED_RECOMMENDATIONS_COUNT + 1
		end)

		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			mockedAnalytics.EventStream,
			validateEvent(EventNames.CarouselLoadedWithUsers, {
				uid = "123456",
				source = "HomepagePYMKCarousel",
				recommendationCount = MOCKED_RECOMMENDATIONS_COUNT,
				recommendationSessionId = "mockedRecommendationSessionId",
				refreshCount = 0,
			})
		)

		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			mockedAnalytics.EventStream,
			validateEvent(EventNames.UserSeen, {
				uid = "123456",
				absolutePosition = 1,
				recommendationContextType = "frequents",
				recommendationRank = 0,
				userId = "6_frequentContext",
				friendStatus = if getFFlagPYMKCarouselIncomingFriendRequestAnalytics()
					then Enum.FriendStatus.NotFriend
					else nil,
				recommendationSessionId = "mockedRecommendationSessionId",
			})
		)

		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(
			MOCKED_RECOMMENDATIONS_COUNT + 1
		)

		Roact.act(function()
			triggerUpdate({
				omniSessionId = "newOmniSessionId",
			})
		end)

		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledTimes(
			MOCKED_RECOMMENDATIONS_COUNT + 2
		)

		jestExpect(mockedAnalytics.EventStream.setRBXEventStream).toHaveBeenCalledWith(
			mockedAnalytics.EventStream,
			validateEvent(EventNames.CarouselLoadedWithUsers, {
				uid = "123456",
				source = "HomepagePYMKCarousel",
				recommendationCount = MOCKED_RECOMMENDATIONS_COUNT,
				refreshCount = 1,
				recommendationSessionId = "mockedRecommendationSessionId",
			})
		)
	end)
end)

it("SHOULD mount and unmount with default state", function()
	local PYMKCarousel = createTreeWithProviders(PYMKCarouselComponent, {
		store = mockStore({
			LocalUserId = 1,
			PYMKCarousel = {
				Analytics = {
					bySessionKey = { [RECOMMENDATION_SESSION_ID_KEY] = "mockedRecommendationSessionId" },
				},
			},
		}),
		props = DEFAULT_PROPS,
	})

	runWhileMounted(PYMKCarousel, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD render Carousel component", function()
	local PYMKCarousel = createTreeWithProviders(PYMKCarouselComponent, {
		store = mockStore(state),
		props = DEFAULT_PROPS,
	})

	runWhileMounted(PYMKCarousel, function(parent)
		local component = RhodiumHelpers.findFirstInstance(parent, {
			Name = "Carousel",
		})
		jestExpect(component).never.toBeNil()
	end)
end)

it("SHOULD render User tiles", function()
	local PYMKCarousel = createTreeWithProviders(PYMKCarouselComponent, {
		store = mockStore(state),
		props = DEFAULT_PROPS,
	})

	runWhileMounted(PYMKCarousel, function(parent)
		waitForEvents.act()
		local component = RhodiumHelpers.findFirstInstance(parent, {
			Name = "PYMKCarouselUserTile",
		})
		jestExpect(component).never.toBeNil()
	end)
end)

it("SHOULD render Carousel header", function()
	local PYMKCarousel = createTreeWithProviders(PYMKCarouselComponent, {
		store = mockStore(state),
		props = DEFAULT_PROPS,
	})

	runWhileMounted(PYMKCarousel, function(parent)
		waitForEvents.act()
		local component = RhodiumHelpers.findFirstInstance(parent, {
			Text = "carouselTitle",
		})
		jestExpect(component).never.toBeNil()
	end)
end)
