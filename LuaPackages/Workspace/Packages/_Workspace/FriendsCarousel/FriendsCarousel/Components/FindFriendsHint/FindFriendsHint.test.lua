local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local createTreeWithProviders = require(FriendsCarousel.TestHelpers.createTreeWithProviders)
local mockStore = require(FriendsCarousel.TestHelpers.mockStore)

local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local runWhileMounted = UnitTestHelpers.runWhileMounted

local getFFlagSocialOnboardingExperimentEnabled = dependencies.getFFlagSocialOnboardingExperimentEnabled

local FindFriendsHint = require(script.Parent)

describe("FindFriendsHint", function()
	local state = {}

	it("should create and destroy without errors", function()
		local element = createTreeWithProviders(FindFriendsHint, {
			store = mockStore(state),
			props = {
				layoutOrder = 1,
			},
		})
		runWhileMounted(element, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("should show correct text when showNewAddFriendsUIVariant = false", function()
		local element = createTreeWithProviders(FindFriendsHint, {
			store = mockStore(state),
			props = {
				layoutOrder = 1,
			},
		})
		runWhileMounted(element, function(parent)
			local tooltip = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Tooltip",
			})

			jestExpect(tooltip.TooltipContainer.Content.Header.Text).toEqual(
				"Feature.SocialTab.Label.AddFriendHintBody"
			)
		end)
	end)

	it("should show correct text when showNewAddFriendsUIVariant = true", function()
		local element = createTreeWithProviders(FindFriendsHint, {
			store = mockStore(state),
			props = {
				layoutOrder = 1,
				showNewAddFriendsUIVariant = true,
			},
		})
		runWhileMounted(element, function(parent)
			local tooltip = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Tooltip",
			})

			if getFFlagSocialOnboardingExperimentEnabled() then
				jestExpect(tooltip.TooltipContainer.Content.Header.Text).toEqual(
					"Feature.AddFriends.Title.AddFriendsTooltipTitle"
				)
			else
				jestExpect(tooltip.TooltipContainer.Content.Header.Text).toEqual(
					"Feature.SocialTab.Label.AddFriendHintBody"
				)
			end
		end)
	end)
end)
