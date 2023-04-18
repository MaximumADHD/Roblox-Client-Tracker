local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AppScreens = require(FriendsLanding.AppScreens)
local createInstanceWithProviders = require(FriendsLanding.TestHelpers.createInstanceWithProviders)

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

local dependencies = require(FriendsLanding.dependencies)
local FriendsNetworking = dependencies.FriendsNetworking

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local VirtualInput = devDependencies.Rhodium.VirtualInput
local RhodiumHelpers = devDependencies.RhodiumHelpers
local ReactRoblox = devDependencies.ReactRoblox

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

-- FIXME: APPFDN-1925
local FriendsLandingEntryPoint = require((script :: any).Parent["FriendsLandingEntryPoint.story"]) :: any

local mockDiag = {
	reportCounter = function() end,
}
local mockEventStream = {
	setRBXEventStream = function() end,
}

describe("FriendsLandingEntryPoint", function()
	beforeEach(function()
		local mockData = { responseBody = { data = {} } }

		FriendsNetworking.GetFriendsFromUserId.Mock.clear()
		FriendsNetworking.GetFriendRequestsCount.Mock.clear()
		FriendsNetworking.GetFriendRequests.Mock.clear()
		if getFFlagFriendsLandingInactiveFriendsEnabled() then
			FriendsNetworking.GetInactiveFriends.Mock.clear()
		end
		FriendsNetworking.GetUserFollowers.Mock.clear()
		FriendsNetworking.GetFriendsFromUserId.Mock.reply(function()
			return mockData
		end)

		FriendsNetworking.GetFriendRequestsCount.Mock.reply(function()
			return mockData
		end)
		FriendsNetworking.GetFriendRequests.Mock.reply(function()
			return mockData
		end)

		if getFFlagFriendsLandingInactiveFriendsEnabled() then
			FriendsNetworking.GetInactiveFriends.Mock.reply(function()
				return mockData
			end)
		end

		FriendsNetworking.GetUserFollowers.Mock.reply(function()
			return mockData
		end)
	end)

	afterEach(function()
		FriendsNetworking.GetFriendsFromUserId.Mock.clear()
		FriendsNetworking.GetFriendRequestsCount.Mock.clear()
		FriendsNetworking.GetFriendRequests.Mock.clear()
		if getFFlagFriendsLandingInactiveFriendsEnabled() then
			FriendsNetworking.GetInactiveFriends.Mock.clear()
		end
	end)

	it("SHOULD mount and render without issue", function(c)
		local _, cleanup = createInstanceWithProviders(mockLocale)(
			FriendsLandingEntryPoint,
			{ props = { diagService = mockDiag, eventIngestService = mockEventStream } }
		)

		cleanup()
	end)

	it("SHOULD display the playerSearchPage input, whatever it is", function()
		local parent, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingEntryPoint, {
			props = {
				diagService = mockDiag,
				eventIngestService = mockEventStream,
			},
		})

		local playerSearchPage = RhodiumHelpers.findFirstInstance(parent, {
			Text = "this is a test",
		})

		expect(playerSearchPage).toBeNil()

		local searchFriendsIcon = RhodiumHelpers.findFirstInstance(parent, {
			Name = "SearchFriendsIcon",
		})

		expect(searchFriendsIcon).never.toBeNil()

		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(searchFriendsIcon)
		end)

		local inputTextBox = RhodiumHelpers.findFirstInstance(parent, {
			Name = "inputTextBox",
		})

		expect(inputTextBox).never.toBeNil()

		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(inputTextBox)

			inputTextBox.Text = "foo"

			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Return)
			wait()
		end)

		playerSearchPage = RhodiumHelpers.findFirstInstance(parent, {
			Text = "this is a test",
		})

		expect(playerSearchPage).never.toBeNil()

		cleanup()
	end)

	it("SHOULD remove search box if cancel is pressed", function()
		local parent, cleanup = createInstanceWithProviders(mockLocale)(
			FriendsLandingEntryPoint,
			{ props = { diagService = mockDiag, eventIngestService = mockEventStream } }
		)

		local searchFriendsIcon = RhodiumHelpers.findFirstInstance(parent, {
			Name = "SearchFriendsIcon",
		})
		local inputTextBox = RhodiumHelpers.findFirstInstance(parent, {
			Name = "inputTextBox",
		})

		expect(searchFriendsIcon).never.toBeNil()
		expect(inputTextBox).toBeNil()

		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(searchFriendsIcon)
		end)

		inputTextBox = RhodiumHelpers.findFirstInstance(parent, {
			Name = "inputTextBox",
		})
		searchFriendsIcon = RhodiumHelpers.findFirstInstance(parent, {
			Name = "SearchFriendsIcon",
		})

		expect(inputTextBox).never.toBeNil()
		expect(searchFriendsIcon).toBeNil()

		local cancelButton = RhodiumHelpers.findFirstInstance(parent, {
			Name = "cancel",
		})

		expect(cancelButton).never.toBeNil()
		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(cancelButton)
		end)

		searchFriendsIcon = RhodiumHelpers.findFirstInstance(parent, {
			Name = "SearchFriendsIcon",
		})
		cancelButton = RhodiumHelpers.findFirstInstance(parent, {
			Name = "cancel",
		})
		inputTextBox = RhodiumHelpers.findFirstInstance(parent, {
			Name = "inputTextBox",
		})

		expect(searchFriendsIcon).never.toBeNil()
		expect(inputTextBox).toBeNil()
		expect(cancelButton).toBeNil()
		cleanup()
	end)

	it("SHOULD display the playerSearchPage search bar", function()
		local parent, cleanup = createInstanceWithProviders(mockLocale)(
			FriendsLandingEntryPoint,
			{ props = { diagService = mockDiag, eventIngestService = mockEventStream } }
		)

		local playerSearchPage = RhodiumHelpers.findFirstInstance(parent, {
			Text = "this is a test",
		})

		expect(playerSearchPage).toBeNil()

		local searchFriendsIcon = RhodiumHelpers.findFirstInstance(parent, {
			Name = "SearchFriendsIcon",
		})

		expect(searchFriendsIcon).never.toBeNil()

		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(searchFriendsIcon)
		end)

		local inputTextBox = RhodiumHelpers.findFirstElement(parent, {
			Name = "inputTextBox",
		})

		expect(inputTextBox).never.toBeNil()

		ReactRoblox.act(function()
			inputTextBox:click()

			RhodiumHelpers.typeTextIntoElement(inputTextBox, "foo")

			VirtualInput.Keyboard.hitKey(Enum.KeyCode.Return)
			wait()
		end)

		inputTextBox = RhodiumHelpers.findFirstInstance(parent, {
			Name = "inputTextBox",
		})
		playerSearchPage = RhodiumHelpers.findFirstInstance(parent, {
			Text = "this is a test",
		})

		expect(playerSearchPage).never.toBeNil()
		expect(inputTextBox).never.toBeNil()
		expect(inputTextBox.Text).toBe("foo")

		cleanup()
	end)

	it("SHOULD display the correct entryPage - FriendsLanding", function()
		local parent, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingEntryPoint, {
			props = {
				entryPage = AppScreens.ViewFriends,
				diagService = mockDiag,
				eventIngestService = mockEventStream,
			},
		})

		local friendsGrid = RhodiumHelpers.findFirstInstance(parent, {
			Name = "friendsGrid",
		})

		expect(friendsGrid).never.toBeNil()

		cleanup()
	end)

	it("SHOULD display the correct entryPage - AddFriends", function()
		FriendsNetworking.GetFriendRequestsCount.Mock.clear()
		FriendsNetworking.GetFriendRequests.Mock.clear()
		if getFFlagFriendsLandingInactiveFriendsEnabled() then
			FriendsNetworking.GetInactiveFriends.Mock.clear()
		end
		FriendsNetworking.GetFriendRequestsCount.Mock.reply(function()
			return { responseBody = { data = {} } }
		end)
		FriendsNetworking.GetFriendRequests.Mock.reply(function()
			return { responseBody = { data = {} } }
		end)
		if getFFlagFriendsLandingInactiveFriendsEnabled() then
			FriendsNetworking.GetInactiveFriends.Mock.reply(function()
				return { responseBody = { data = {} } }
			end)
		end

		local parent, cleanup = createInstanceWithProviders(mockLocale)(FriendsLandingEntryPoint, {
			props = {
				entryPage = AppScreens.AddFriendsPage,
				diagService = mockDiag,
				eventIngestService = mockEventStream,
			},
		})

		local requestSection = RhodiumHelpers.findFirstInstance(parent, {
			Name = "requestSection",
		})

		expect(requestSection).never.toBeNil()

		cleanup()
	end)
end)
