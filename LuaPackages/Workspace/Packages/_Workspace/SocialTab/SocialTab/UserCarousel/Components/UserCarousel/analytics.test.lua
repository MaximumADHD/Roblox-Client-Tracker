local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)

local devDependencies = require(SocialTab.devDependencies)
local TestUtils = devDependencies.TestUtils
local RhodiumHelpers = devDependencies.RhodiumHelpers
local ReactRoblox = devDependencies.ReactRoblox
local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

-- FIXME: APPFDN-1925
local story = require((script :: any).Parent["withProviders.story"]) :: any

describe("GIVEN mock analytics", function()
	local analytics
	local goToAddFriends
	local cleanup

	local function mountAndClick(props, buttonName)
		local parent
		parent, cleanup = createInstanceWithProps(story, props)
		wait()

		local button = nil
		TestUtils.waitUntil(function()
			button = RhodiumHelpers.findFirstInstance(parent, {
				Name = buttonName,
			})

			return button ~= nil
		end)

		assert(button, "Could not find " .. buttonName)
		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(button)
		end)
	end

	beforeEach(function()
		analytics = jest.fn().mockName("analytics")
		analytics.pageLoaded = jest.fn()
		analytics.buttonClick = jest.fn()
		analytics.navigate = jest.fn()
		goToAddFriends = jest.fn()
	end)

	afterEach(function()
		cleanup()
	end)

	describe("WHEN mounted with friends", function()
		describe("WHEN AddFriendsTile is clicked", function()
			it("SHOULD fire AddFriends is clicked", function()
				mountAndClick({
					analytics = analytics,
					goToAddFriends = goToAddFriends,
				}, "AddFriendButton")

				expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
				expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, "AddFriends")
			end)
		end)

		describe("WHEN a UserTile is clicked", function()
			it("SHOULD fire UserTile is clicked with additionalArgs", function()
				mountAndClick({
					analytics = analytics,
				}, "Thumbnail")

				expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
				expect(analytics.buttonClick).toHaveBeenCalledWith(
					analytics,
					"UserTile",
					expect.objectContaining({
						position = expect.any("number"),
						friendId = expect.any("string"),
					})
				)
			end)

			it("SHOULD fire UserTile is clicked with additionalArgs when luaProfile is enabled", function()
				mountAndClick({
					analytics = analytics,
					isLuaProfilePageEnabled = true,
				}, "Thumbnail")

				expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
				expect(analytics.buttonClick).toHaveBeenCalledWith(
					analytics,
					"UserTile",
					expect.objectContaining({
						position = expect.any("number"),
						friendId = expect.any("string"),
						subpage = expect.any("string"),
						page = expect.any("string"),
					})
				)

				expect(analytics.navigate).toHaveBeenCalledWith(analytics, "ViewUserProfile")
			end)
		end)
	end)

	describe("WHEN a FriendRequests is clicked", function()
		it("SHOULD fire FriendRequests is clicked with additionalArgs with badge", function()
			mountAndClick({
				analytics = analytics,
				hasFriendRequests = true,
				goToAddFriends = goToAddFriends,
			}, "FriendRequests")

			expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
			expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, "FriendRequests", { isBadgeShown = true })
		end)

		it("SHOULD fire FriendRequests is clicked with additionalArgs without badge", function()
			mountAndClick({
				analytics = analytics,
				hasFriendRequests = false,
				goToAddFriends = goToAddFriends,
			}, "FriendRequests")

			expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
			expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, "FriendRequests", { isBadgeShown = false })
		end)
	end)

	describe("WHEN a Carousel Title is clicked", function()
		it("SHOULD fire view add friends", function()
			mountAndClick({
				analytics = analytics,
			}, "Title")

			expect(analytics.buttonClick).toHaveBeenCalledTimes(1)
			expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, "CarouselTitle")
			expect(analytics.navigate).toHaveBeenCalledTimes(1)
			expect(analytics.navigate).toHaveBeenCalledWith(analytics, "CarouselTitle")
		end)

		it("SHOULD fire friends landing analytics if you navigate to friendsLanding instead", function()
			mountAndClick({
				analytics = analytics,
				goToFriendsLanding = function() end,
			}, "Title")

			expect(analytics.buttonClick).toHaveBeenCalledTimes(2)
			expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, "CarouselTitle")
			expect(analytics.buttonClick).toHaveBeenCalledWith(analytics, "friendsLanding")
			expect(analytics.navigate).toHaveBeenCalledTimes(2)
			expect(analytics.navigate).toHaveBeenCalledWith(analytics, "CarouselTitle")
			expect(analytics.navigate).toHaveBeenCalledWith(analytics, "FriendsLandingPage")
		end)
	end)
end)
