local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local LocalizedKeys = require(FriendsLanding.AddFriends.Enums.LocalizedKeys)
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local PlayerTileFriendshipButton = require(script.Parent)

local TEXT_FRIEND_STATUS_NOT_FRIEND = LocalizedKeys.AddFriend.rawValue()
local TEXT_FRIEND_STATUS_FRIEND_REQUEST_SENT = LocalizedKeys.RequestPending.rawValue()

local function testStatus(status, text)
	local parent, cleanup = createInstanceWithProps(mockLocale)(PlayerTileFriendshipButton, {
		status = status,
	})

	local buttonText = RhodiumHelpers.findFirstInstance(parent, {
		Text = text,
	})

	expect(buttonText).toBeDefined()

	cleanup()
end

describe("PlayerTileFriendshipButton", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(mockLocale)(PlayerTileFriendshipButton)

		cleanup()
	end)

	it("SHOULD have default status: Enum.FriendStatus.NotFriend", function()
		testStatus(nil, TEXT_FRIEND_STATUS_NOT_FRIEND)
	end)

	it("SHOULD be set to status: Enum.FriendStatus.NotFriend", function()
		testStatus(Enum.FriendStatus.NotFriend, TEXT_FRIEND_STATUS_NOT_FRIEND)
	end)

	it("SHOULD be set to status: Enum.FriendStatus.FriendRequestSent", function()
		testStatus(Enum.FriendStatus.FriendRequestSent, TEXT_FRIEND_STATUS_FRIEND_REQUEST_SENT)
	end)

	it("SHOULD fire the onActivated callback when tapped", function()
		local activatedMock = jest.fn()

		local parent, cleanup = createInstanceWithProps(mockLocale)(PlayerTileFriendshipButton, {
			onActivated = function()
				activatedMock()
			end,
		})

		local button = RhodiumHelpers.findFirstInstance(parent, {
			ClassName = "ImageButton",
		})

		RhodiumHelpers.clickInstance(button)

		expect(activatedMock).toHaveBeenCalledTimes(1)

		cleanup()
	end)
end)
