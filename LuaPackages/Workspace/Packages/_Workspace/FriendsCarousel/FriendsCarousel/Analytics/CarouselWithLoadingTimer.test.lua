local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)

local Roact = dependencies.Roact
local React = dependencies.React
local llama = dependencies.llama
local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll

local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local jest = devDependencies.jest
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)
local RetrievalStatus = dependencies.RetrievalStatus
local RODUX_KEY = require(FriendsCarousel.Common.Constants).RODUX_KEY
local EventNames = require(FriendsCarousel.Analytics.EventNames)

local CarouselWithLoadingTimer = require(script.Parent.CarouselWithLoadingTimer)

local DEFAULT_PROPS = {
	fireEvent = function() end,
	renderComponent = function(_props)
		return Roact.createElement("Frame")
	end,
}

local LOCAL_USER_ID = "123"

local state = {
	LocalUserId = LOCAL_USER_ID,
	[RODUX_KEY] = {
		NetworkStatus = {},
		Friends = {
			byUserId = {},
			countsByUserId = {},
		},
		Users = {},
		Presence = {},
		ShowContactImporterParams = {},
	},
}

describe("CarouselWithLoadingTimer", function()
	local FriendsCarouselLoadingTimeThresholdSec
	beforeAll(function()
		FriendsCarouselLoadingTimeThresholdSec = game:SetFastIntForTesting("FriendsCarouselLoadingTimeThresholdSec", 30)
	end)

	afterAll(function()
		game:SetFastIntForTesting("FriendsCarouselLoadingTimeThresholdSec", FriendsCarouselLoadingTimeThresholdSec)
	end)

	describe("lifecycle", function()
		it("SHOULD mount and unmount", function()
			local CarouselWithLoadingTimer = createTreeWithProviders(CarouselWithLoadingTimer, {
				store = mockStore(state),
				props = DEFAULT_PROPS,
			})
			runWhileMounted(CarouselWithLoadingTimer, function(parent)
				jestExpect(#parent:GetChildren()).toBe(1)
			end)
		end)

		it("SHOULD render passed component", function()
			local renderComponentSpy = jest.fn()
			local CarouselWithLoadingTimer = createTreeWithProviders(CarouselWithLoadingTimer, {
				store = mockStore(state),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					renderComponent = function(_props)
						renderComponentSpy()
						return Roact.createFragment({
							TestElement = Roact.createElement("Frame"),
						})
					end,
				}),
			})
			runWhileMounted(CarouselWithLoadingTimer, function(parent)
				jestExpect(#parent:GetChildren()).toBe(1)
				jestExpect(renderComponentSpy).toHaveBeenCalledTimes(1)
				local TestElement = RhodiumHelpers.findFirstInstance(parent, {
					Name = "TestElement",
				})
				jestExpect(TestElement).toEqual(jestExpect.any("Instance"))
			end)
		end)
	end)

	describe("onSuccessfulRender", function()
		local TestElement = function(props)
			React.useEffect(function()
				props.onSuccessfulRender()
			end, {})

			return Roact.createElement("Frame")
		end

		it("SHOULD fire correct event for new carousel if IXP is fetched", function()
			local fireEventSpy = jest.fn()
			local CarouselWithLoadingTimer = createTreeWithProviders(CarouselWithLoadingTimer, {
				store = mockStore(state),
				props = llama.Dictionary.join(DEFAULT_PROPS, {
					isLegacyCarousel = false,
					IXPFetchingStatus = RetrievalStatus.Done,
					renderComponent = function(props)
						return Roact.createFragment({
							TestElement = Roact.createElement(TestElement, props),
						})
					end,
					fireEvent = function(...)
						fireEventSpy(...)
					end,
				}),
			})
			runWhileMounted(CarouselWithLoadingTimer, function(parent)
				jestExpect(fireEventSpy).toHaveBeenCalledTimes(1)
				jestExpect(fireEventSpy).toHaveBeenCalledWith(EventNames.CarouselLoadingTime, {
					friendsFetchingStatus = "NotStarted",
					recommendationFetchingStatus = "NotStarted",
					loadingTime = jestExpect.any("number"),
					reachedThreshold = false,
					loadingThreshold = 30,
				})
			end)
		end)
	end)
end)
