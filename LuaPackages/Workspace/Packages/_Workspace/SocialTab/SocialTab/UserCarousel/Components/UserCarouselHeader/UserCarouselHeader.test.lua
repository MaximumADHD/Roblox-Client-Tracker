local SocialTab = script:FindFirstAncestor("SocialTab")
local LocalizedKeys = require(SocialTab.Enums.LocalizedKeys)
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)

local devDependencies = require(SocialTab.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local UserCarouselHeader = require(script.Parent)

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(UserCarouselHeader)

		cleanup()
	end)
end)

describe("props", function()
	it("SHOULD have badge if user has friends requests", function()
		local userCarouselHeader, cleanup = createInstanceWithProps(UserCarouselHeader, {
			hasFriendRequests = true,
		})

		local friendRequestsBadge = RhodiumHelpers.findFirstInstance(userCarouselHeader, {
			Name = "FriendRequestsBadge",
		})

		expect(friendRequestsBadge).toEqual(expect.any("Instance"))

		cleanup()
	end)

	it("SHOULD not have badge if user doesn't have friends requests", function()
		local userCarouselHeader, cleanup = createInstanceWithProps(UserCarouselHeader, {
			hasFriendRequests = false,
		})

		local friendRequestsBadge = RhodiumHelpers.findFirstInstance(userCarouselHeader, {
			Name = "FriendRequestsBadge",
		})

		expect(friendRequestsBadge).toBeNil()

		cleanup()
	end)

	it("SHOULD show correct title if user doesn't have friends", function()
		local userCarouselHeader, cleanup = createInstanceWithProps(UserCarouselHeader, {
			friendCount = 0,
		})

		local title = RhodiumHelpers.findFirstInstance(userCarouselHeader, {
			Name = "Title",
		})

		expect(title.Text).toBe(LocalizedKeys.FriendsHeader.rawValue())

		cleanup()
	end)

	it("SHOULD show correct title if user has more than 0 friends", function()
		local userCarouselHeader, cleanup = createInstanceWithProps(UserCarouselHeader, {
			friendCount = 5,
		})

		local title = RhodiumHelpers.findFirstInstance(userCarouselHeader, {
			Name = "Title",
		})

		expect(title.Text).toBe(LocalizedKeys.FriendsHeaderWithCount.rawValue())

		cleanup()
	end)
end)

it("SHOULD fire the onActivated callback when FriendRequests Icon is tapped", function()
	local goToFriendRequestsPageMock = jest.fn()
	local userCarouselHeader, cleanup = createInstanceWithProps(UserCarouselHeader, {
		goToFriendRequestsPage = goToFriendRequestsPageMock,
	})

	local friendRequests = RhodiumHelpers.findFirstInstance(userCarouselHeader, {
		Name = "FriendRequests",
	})

	RhodiumHelpers.clickInstance(friendRequests)
	expect(goToFriendRequestsPageMock).toHaveBeenCalledTimes(1)

	cleanup()
end)

it("SHOULD fire the onActivated callback when header is tapped", function()
	local goToFriendsPageMock = jest.fn()
	local userCarouselHeader, cleanup = createInstanceWithProps(UserCarouselHeader, {
		goToFriendsPage = goToFriendsPageMock,
	})

	local title = RhodiumHelpers.findFirstInstance(userCarouselHeader, {
		Name = "Title",
	})

	RhodiumHelpers.clickInstance(title)
	expect(goToFriendsPageMock).toHaveBeenCalledTimes(1)

	cleanup()
end)
