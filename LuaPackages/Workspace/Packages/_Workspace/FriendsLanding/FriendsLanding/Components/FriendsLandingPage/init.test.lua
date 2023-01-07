local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)
local isAutomaticSizingEnabled = require(FriendsLanding.TestHelpers.isAutomaticSizingEnabled)

local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local FriendsLandingPage = require(script.Parent)

-- FIXME: APPFDN-1925
local noFriendsStory = require((script :: any).Parent["noFriends.story"]) :: any
local noResultsStory = require((script :: any).Parent["noResults.story"]) :: any
local withResultStory = require((script :: any).Parent["withResult.story"]) :: any

local SHOW_MORE_CONTAINER_HEIGHT = 10

describe("FriendsLandingPage", function()
	local mockNavigation, mockNavigate, mockAnalytics

	beforeEach(function()
		mockNavigation = jest.fn().mockName("Navigation")
		mockNavigate = jest.fn().mockName("Navigate")
		mockAnalytics = {
			pageLoadingTimeReport = jest.fn(),
			pageMountingTimeReport = jest.fn(),
		}
		mockNavigation.navigate = mockNavigate
	end)

	describe("lifecycle", function()
		it("SHOULD mount and render without issue", function()
			local _, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingPage, {
				props = {
					analytics = mockAnalytics,
				},
			})

			cleanup()
		end)
	end)

	describe("noFriends", function()
		local parent, cleanup

		beforeEach(function()
			parent, cleanup = createInstanceWithProviders(mockLocale)(noFriendsStory, {
				props = {
					navigation = mockNavigation,
				},
			})
		end)

		afterEach(function()
			cleanup()
		end)

		it("SHOULD show no results page if the user has no friends", function()
			local noResultsView = RhodiumHelpers.findFirstInstance(parent, {
				Name = "noResultsView",
			})
			local friendsGrid = RhodiumHelpers.findFirstInstance(parent, {
				Name = "friendsGrid",
			})

			expect(noResultsView).toEqual(expect.any("Instance"))
			expect(friendsGrid).toBeNil()
		end)

		it("SHOULD disable the filter button if user has no friends", function()
			local filterByButton = RhodiumHelpers.findFirstInstance(parent, {
				Name = "filterByButton",
			})

			RhodiumHelpers.clickInstance(filterByButton)

			expect(mockNavigate).never.toHaveBeenCalled()
		end)
	end)

	describe("noResults", function()
		local parent, cleanup

		beforeEach(function()
			parent, cleanup = createInstanceWithProviders(mockLocale)(noResultsStory, {
				props = {
					navigation = mockNavigation,
				},
			})
		end)

		afterEach(function()
			cleanup()
		end)

		it("SHOULD show no results page if the user has no results friends", function()
			local noResultsView = RhodiumHelpers.findFirstInstance(parent, {
				Name = "noResultsView",
			})
			local friendsGrid = RhodiumHelpers.findFirstInstance(parent, {
				Name = "friendsGrid",
			})

			expect(noResultsView).toEqual(expect.any("Instance"))
			expect(friendsGrid).toBeNil()
		end)

		it("SHOULD not disable the filter button if user has friends", function()
			if isAutomaticSizingEnabled() then
				local filterByButton = RhodiumHelpers.findFirstInstance(parent, {
					Name = "filterByButton",
				})
				local button = RhodiumHelpers.findFirstInstance(filterByButton, {
					Name = "Button",
				})

				RhodiumHelpers.clickInstance(button)

				expect(mockNavigate).toHaveBeenCalledTimes(1)
			end
		end)
	end)

	describe("some Friends (2)", function()
		local parent, cleanup

		beforeEach(function()
			parent, cleanup = createInstanceWithProviders(mockLocale)(withResultStory, {
				props = {
					navigation = mockNavigation,
				},
			})
		end)

		afterEach(function()
			cleanup()
		end)

		it("SHOULD show friends grid results page if the user has friends", function()
			local noResultsView = RhodiumHelpers.findFirstInstance(parent, {
				Name = "noResultsView",
			})
			local friendsGrid = RhodiumHelpers.findFirstInstance(parent, {
				Name = "friendsGrid",
			})

			expect(noResultsView).toBeNil()
			expect(friendsGrid).toEqual(expect.any("Instance"))
		end)

		it("SHOULD not disable the filter button if user has friends", function()
			if isAutomaticSizingEnabled() then
				local filterByButton = RhodiumHelpers.findFirstInstance(parent, {
					Name = "filterByButton",
				})
				local button = RhodiumHelpers.findFirstInstance(filterByButton, {
					Name = "Button",
				})

				RhodiumHelpers.clickInstance(button)

				expect(mockNavigate).toHaveBeenCalledTimes(1)
			end
		end)

		it("SHOULD not excess space at the bottom", function()
			local scrollingFrame = RhodiumHelpers.findFirstInstance(parent, {
				Name = "scrollingFrame",
			})

			expect(scrollingFrame).never.toBeNil()
			expect(scrollingFrame.CanvasPosition.Y).toBe(0)
			-- scroll to bottom
			scrollingFrame.CanvasPosition = scrollingFrame.CanvasPosition + Vector2.new(0, 9001)
			expect(scrollingFrame.CanvasPosition.Y).toBe(1)
		end)
	end)

	describe("showMoreContainer", function()
		local parent, cleanup

		beforeEach(function()
			parent, cleanup = createInstanceWithProviders(mockLocale)(withResultStory, {
				props = {
					navigation = mockNavigation,
					renderShowMore = function(layout)
						return Roact.createFragment({
							showMore = Roact.createElement("Frame", {
								Size = UDim2.new(1, 0, 0, SHOW_MORE_CONTAINER_HEIGHT),
								LayoutOrder = layout,
							}),
						})
					end,
				},
			})
		end)

		afterEach(function()
			cleanup()
		end)

		it("SHOULD render the showMore button below the friends grid", function()
			local friendsGrid = RhodiumHelpers.findFirstInstance(parent, {
				Name = "friendsGrid",
			})
			local showMore = RhodiumHelpers.findFirstInstance(parent, {
				Name = "showMore",
			})

			expect(friendsGrid).toEqual(expect.any("Instance"))
			expect(showMore).toEqual(expect.any("Instance"))
			expect(showMore).toBeBelow(friendsGrid)
		end)
	end)
end)
