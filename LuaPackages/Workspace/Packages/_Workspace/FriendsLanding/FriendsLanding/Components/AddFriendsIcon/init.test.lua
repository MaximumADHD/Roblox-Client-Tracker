local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local findImageSet = devDependencies.findImageSet
local RhodiumHelpers = devDependencies.RhodiumHelpers

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local AddFriendsIcon = require(script.Parent)

-- FIXME: APPFDN-1925
local noFriendRequests = require((script :: any).Parent["noFriendRequests.story"]) :: any
local showToolTipStory = require((script :: any).Parent["showTooltip.story"]) :: any

describe("AddFriendsIcon", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(mockLocale)(AddFriendsIcon)

		cleanup()
	end)

	it("SHOULD not have a badge if request count is 0", function()
		local parent, cleanup = createInstanceWithProps(mockLocale)(noFriendRequests)

		local friendRequestsBadge = RhodiumHelpers.findFirstInstance(parent, {
			Name = "FriendRequestsBadge",
		})
		local callToActionTooltip = RhodiumHelpers.findFirstInstance(parent, {
			Name = "CallToActionTooltip",
		})

		expect(callToActionTooltip).toBeNil()
		expect(friendRequestsBadge).toBeNil()

		cleanup()
	end)

	it("SHOULD have a badge if request count is > 0", function()
		local parent, cleanup = createInstanceWithProps(mockLocale)(noFriendRequests, {
			friendRequestCount = 10,
		})

		local friendRequestsBadge = RhodiumHelpers.findFirstInstance(parent, {
			Name = "FriendRequestsBadge",
		})
		local callToActionTooltip = RhodiumHelpers.findFirstInstance(parent, {
			Name = "CallToActionTooltip",
		})

		expect(friendRequestsBadge).toEqual(expect.any("Instance"))
		expect(callToActionTooltip).toBeNil()

		cleanup()
	end)

	it("SHOULD have a tooltip if showTooltip is set to true", function()
		local parent, cleanup = createInstanceWithProps(mockLocale)(showToolTipStory)

		local friendRequestsBadge = RhodiumHelpers.findFirstInstance(parent, {
			Name = "FriendRequestsBadge",
		})
		local callToActionTooltip = RhodiumHelpers.findFirstInstance(parent, {
			Name = "CallToActionTooltip",
		})

		expect(callToActionTooltip).toEqual(expect.any("Instance"))
		expect(friendRequestsBadge).toEqual(expect.any("Instance"))

		cleanup()
	end)

	it("SHOULD place the tooltip caret underneath the icon", function()
		local parent, cleanup = createInstanceWithProps(mockLocale)(showToolTipStory)

		local icon = RhodiumHelpers.findFirstInstance(parent, {
			Name = "ImagesContainer",
		})
		local caretFrame = RhodiumHelpers.findFirstInstance(parent, {
			Name = "CaretFrame",
		})

		expect(caretFrame).toBeBelow(icon)

		cleanup()
	end)

	it("SHOULD fire the onActivated callback when the tile is tapped", function()
		local activatedMock = jest.fn()

		local parent, cleanup = createInstanceWithProps(mockLocale)(AddFriendsIcon, {
			onActivated = function()
				activatedMock()
			end,
			position = UDim2.new(0, 20, 0, 20),
		})

		local button = RhodiumHelpers.findFirstInstance(parent, findImageSet("icons/actions/friends/friendAdd"))

		RhodiumHelpers.clickInstance(button)

		expect(activatedMock).toHaveBeenCalledTimes(1)

		cleanup()
	end)
end)
