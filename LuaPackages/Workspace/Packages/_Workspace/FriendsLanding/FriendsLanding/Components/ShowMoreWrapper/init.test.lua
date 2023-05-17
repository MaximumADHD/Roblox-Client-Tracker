local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)
local waitUntil = require(FriendsLanding.TestHelpers.waitUntil)
local ButtonClickEvents = require(FriendsLanding.FriendsLandingAnalytics.ButtonClickEvents)

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local RhodiumHelpers = devDependencies.RhodiumHelpers
local ReactRoblox = devDependencies.ReactRoblox

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local ShowMoreWrapper = require(script.Parent)

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)
local getFFlagAddFriendsImproveAnalytics = require(FriendsLanding.Flags.getFFlagAddFriendsImproveAnalytics)

-- FIXME: APPFDN-1925
local fullyLoadedStory = require((script :: any).Parent["fullyLoaded.story"]) :: any
local withMoreToLoadStory = require((script :: any).Parent["withMoreToLoad.story"]) :: any
local withShowMoreIntercepted = require((script :: any).Parent["withShowMoreIntercepted.story"]) :: any

describe("ShowMoreWrapper", function()
	describe("lifecycle", function()
		it("SHOULD mount and render without issue", function()
			local mockAnalytics = {
				buttonClick = jest.fn(),
				navigate = jest.fn(),
				pageLoadingTimeReport = jest.fn(),
				pageMountingTimeReport = jest.fn(),
			}

			local _, cleanup
			if getFFlagFriendsLandingInactiveFriendsEnabled() then
				_, cleanup = createInstanceWithProviders(mockLocale)(
					ShowMoreWrapper,
					{ props = {
						friends = {},
						analytics = mockAnalytics,
					} }
				)
			else
				_, cleanup = createInstanceWithProps(mockLocale)(ShowMoreWrapper, {
					friends = {},
					analytics = mockAnalytics,
				})
			end

			cleanup()
		end)
	end)

	describe("showMore", function()
		it("SHOULD not show showMore if there is nothing to load", function()
			local parent, cleanup = createInstanceWithProps(mockLocale)(fullyLoadedStory)
			waitUntil(function()
				local testComponent = RhodiumHelpers.findFirstInstance(parent, {
					Text = "Example",
				})

				return testComponent
			end)

			local testComponent = RhodiumHelpers.findFirstInstance(parent, {
				Text = "Example",
			})
			local showMore = RhodiumHelpers.findFirstInstance(parent, {
				Name = "showMore",
			})

			expect(testComponent).toEqual(expect.any("Instance"))
			expect(showMore).toBeNil()

			local showMoreSpacing = RhodiumHelpers.findFirstInstance(parent, {
				Name = "showMoreSpacing",
			})

			expect(showMoreSpacing).never.toBeNil()
			expect(showMoreSpacing.AbsoluteSize.Y).toEqual(48)
			cleanup()
		end)

		describe("with more to load", function()
			local parent, cleanup

			beforeEach(function()
				parent, cleanup = createInstanceWithProps(mockLocale)(withMoreToLoadStory)
				waitUntil(function()
					local showMore = RhodiumHelpers.findFirstInstance(parent, {
						Name = "showMore",
					})

					return showMore
				end)

				local testComponent = RhodiumHelpers.findFirstInstance(parent, {
					Text = "Example",
				})
				local showMore = RhodiumHelpers.findFirstInstance(parent, {
					Name = "showMore",
				})

				expect(testComponent).toEqual(expect.any("Instance"))
				expect(showMore).toEqual(expect.any("Instance"))

				RhodiumHelpers.clickInstance(showMore)
				waitUntil(function()
					local showMoreGone = RhodiumHelpers.findFirstInstance(parent, {
						Name = "showMore",
					})

					return showMoreGone == nil
				end)
			end)

			afterEach(function()
				cleanup()
			end)

			it("SHOULD cause the button to disappear when clicking showMore", function()
				local testComponent = RhodiumHelpers.findFirstInstance(parent, {
					Text = "Example",
				})
				local showMore = RhodiumHelpers.findFirstInstance(parent, {
					Name = "showMore",
				})

				expect(testComponent).toEqual(expect.any("Instance"))
				expect(showMore).toBeNil()

				local showMoreSpacing = RhodiumHelpers.findFirstInstance(parent, {
					Name = "showMoreSpacing",
				})

				expect(showMoreSpacing).never.toBeNil()
				expect(showMoreSpacing.AbsoluteSize.Y).toEqual(48)
			end)

			it("SHOULD make the showMore button reappear if reset is called", function()
				local showMore = RhodiumHelpers.findFirstInstance(parent, {
					Name = "showMore",
				})

				expect(showMore).toBeNil()

				local reset = RhodiumHelpers.findFirstInstance(parent, {
					Name = "reset",
				})
				RhodiumHelpers.clickInstance(reset)

				waitUntil(function()
					showMore = RhodiumHelpers.findFirstInstance(parent, {
						Name = "showMore",
					})

					return showMore
				end)

				showMore = RhodiumHelpers.findFirstInstance(parent, {
					Name = "showMore",
				})

				expect(showMore).toEqual(expect.any("Instance"))

				local showMoreSpacing = RhodiumHelpers.findFirstInstance(parent, {
					Name = "showMoreSpacing",
				})

				expect(showMoreSpacing).toBeNil()
			end)
		end)

		it("SHOULD call analytics showMore if there is more to load", function()
			local mockAnalytics = {
				buttonClick = jest.fn(),
			}
			local parent, cleanup = createInstanceWithProps(mockLocale)(withMoreToLoadStory, {
				analytics = mockAnalytics,
			})
			waitUntil(function()
				local showMore = RhodiumHelpers.findFirstInstance(parent, {
					Name = "showMore",
				})

				return showMore
			end)

			local showMore = RhodiumHelpers.findFirstInstance(parent, {
				Name = "showMore",
			})

			expect(showMore).toEqual(expect.any("Instance"))

			RhodiumHelpers.clickInstance(showMore)

			expect(mockAnalytics.buttonClick).toHaveBeenCalledTimes(1)
			if getFFlagAddFriendsImproveAnalytics() then
				expect(mockAnalytics.buttonClick).toHaveBeenCalledWith(mockAnalytics, ButtonClickEvents.LoadMoreUsers, {
					sectionType = "Friends",
				})
			else
				expect(mockAnalytics.buttonClick).toHaveBeenCalledWith(mockAnalytics, ButtonClickEvents.LoadMoreFriends)
			end
			cleanup()
		end)
	end)

	describe("showMore is intercepted", function()
		local clickShowMore

		beforeEach(function()
			clickShowMore = function(parent)
				local showMore = RhodiumHelpers.findFirstInstance(parent, {
					Name = "showMore",
				})
				ReactRoblox.act(function()
					RhodiumHelpers.clickInstance(showMore)
					wait()
				end)
			end
		end)

		it("SHOULD not cause the show more button to disappear and intercept the showMore button click", function()
			local handleShowMore = jest.fn()
			local parent, cleanup = createInstanceWithProps(mockLocale)(withMoreToLoadStory, {
				handleShowMore = handleShowMore,
			})
			expect(handleShowMore).toHaveBeenCalledTimes(0)
			clickShowMore(parent)
			expect(handleShowMore).toHaveBeenCalledTimes(1)

			local showMoreButtonAfterClick = RhodiumHelpers.findFirstInstance(parent, {
				Name = "showMore",
			})
			expect(showMoreButtonAfterClick).never.toBeNil()
			cleanup()
		end)

		it("SHOULD render correctly when showMore is intercepted and visibleRows changes", function()
			local initialVisibleRows = 3

			local currentVisibleRows = nil
			local currentVisibleFriendsCount = nil
			local currentFriendsPerRow = nil

			local parent, cleanup = createInstanceWithProps(mockLocale)(withShowMoreIntercepted.story, {
				initialVisibleRows = initialVisibleRows,
				onListComponentRendered = function(visibleFriends, visibleRows, friendsPerRow)
					currentVisibleFriendsCount = #visibleFriends
					currentVisibleRows = visibleRows
					currentFriendsPerRow = friendsPerRow
				end,
			})

			-- In default mode with Roact 17, we need to play the scheduler forward and wait before
			-- calling waitUntil. Otherwise, there is a race between the waitUntil and the showMoreButton
			-- resizing, which results in the currentVisibleFriendsCount being too low.
			ReactRoblox.act(function()
				wait()
			end)

			waitUntil(function()
				return currentVisibleRows == initialVisibleRows
			end)

			expect(currentVisibleFriendsCount).toBe(currentVisibleRows * currentFriendsPerRow)

			for i = 1, 5 do
				clickShowMore(parent)
				waitUntil(function()
					return currentVisibleRows == initialVisibleRows + 1
				end)
				expect(currentVisibleFriendsCount).toBe(currentVisibleRows * currentFriendsPerRow)
			end

			cleanup()
		end)
	end)
end)
