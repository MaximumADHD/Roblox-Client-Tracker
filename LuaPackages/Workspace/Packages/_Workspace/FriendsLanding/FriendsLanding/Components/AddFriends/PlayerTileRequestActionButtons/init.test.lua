local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)

local devDependencies = require(FriendsLanding.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local mockLocale = devDependencies.UnitTestHelpers.mockLocale

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local PlayerTileRequestActionButtons = require(script.Parent)

local function testButtonsExist(status, shouldExist)
	local parent, cleanup = createInstanceWithProps(mockLocale)(PlayerTileRequestActionButtons, {
		status = status,
	})

	local declineButton = RhodiumHelpers.findFirstInstance(parent, {
		Name = "DeclineButton",
	})
	local acceptButton = RhodiumHelpers.findFirstInstance(parent, {
		Name = "AcceptButton",
	})

	if shouldExist then
		expect(declineButton).toEqual(expect.any("Instance"))
		expect(acceptButton).toEqual(expect.any("Instance"))
	else
		expect(declineButton).toBeNil()
		expect(acceptButton).toBeNil()
	end

	cleanup()
end

local function testButtonClick(callbackProp, buttonName)
	local activatedMock = jest.fn()

	local parent, cleanup = createInstanceWithProps(mockLocale)(PlayerTileRequestActionButtons, {
		[callbackProp] = function()
			activatedMock()
		end,
	})

	local button = RhodiumHelpers.findFirstInstance(parent, {
		Name = buttonName,
	})

	RhodiumHelpers.clickInstance(button)

	expect(activatedMock).toHaveBeenCalledTimes(1)

	cleanup()
end

describe("PlayerTileRequestActionButtons", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(mockLocale)(PlayerTileRequestActionButtons)

		cleanup()
	end)

	it("SHOULD show the buttons by default", function()
		testButtonsExist(nil, true)
	end)

	it("SHOULD show the buttons with status: Enum.FriendStatus.FriendRequestReceived", function()
		testButtonsExist(Enum.FriendStatus.FriendRequestReceived, true)
	end)

	it("SHOULD NOT show the buttons with status: Enum.FriendStatus.NotFriend", function()
		testButtonsExist(Enum.FriendStatus.NotFriend, false)
	end)

	it("SHOULD NOT show the buttons with status: Enum.FriendStatus.Friend", function()
		testButtonsExist(Enum.FriendStatus.Friend, false)
	end)

	it("SHOULD NOT show the buttons with status: Enum.FriendStatus.FriendRequestSent", function()
		testButtonsExist(Enum.FriendStatus.FriendRequestSent, false)
	end)

	it("SHOULD NOT show the buttons with status: Enum.FriendStatus.Unknown", function()
		testButtonsExist(Enum.FriendStatus.Unknown, false)
	end)

	it("SHOULD fire the onDecline callback when the DeclineButton is tapped", function()
		testButtonClick("onDecline", "DeclineButton")
	end)

	it("SHOULD fire the onAccept callback when the AcceptButton is tapped", function()
		testButtonClick("onAccept", "AcceptButton")
	end)
end)
