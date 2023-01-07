local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local waitUntil = require(FriendsLanding.TestHelpers.waitUntil)
local createInstanceWithProps = require(FriendsLanding.TestHelpers.createInstanceWithProps)

local devDependencies = require(FriendsLanding.devDependencies)
local mockLocale = devDependencies.UnitTestHelpers.mockLocale
local RhodiumHelpers = devDependencies.RhodiumHelpers

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local ShowMoreButton = require(script.Parent)

-- FIXME: APPFDN-1925
local wideModeStory = require((script :: any).Parent["wideMode.story"]) :: any
local compactModeStory = require((script :: any).Parent["compactMode.story"]) :: any

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(mockLocale)(ShowMoreButton)

		cleanup()
	end)

	it("SHOULD fire the onActivated callback when the button is tapped", function()
		local activatedMock = jest.fn()
		local parent, cleanup = createInstanceWithProps(mockLocale)(ShowMoreButton, {
			onActivated = function()
				activatedMock()
			end,
		})

		local button = RhodiumHelpers.findFirstInstance(parent, {
			Text = "Feature.Friends.Action.ShowMore",
		})

		RhodiumHelpers.clickInstance(button)

		expect(activatedMock).toHaveBeenCalledTimes(1)

		cleanup()
	end)

	it("SHOULD not go beyond its max width", function()
		local parent, cleanup = createInstanceWithProps(mockLocale)(wideModeStory)

		local button = RhodiumHelpers.findFirstInstance(parent, {
			Name = "showMore",
		})

		waitUntil(function()
			return button.AbsoluteSize.X == ShowMoreButton.MAX_WIDTH
		end)

		expect(button.AbsoluteSize.X).toBe(ShowMoreButton.MAX_WIDTH)

		cleanup()
	end)

	it("SHOULD match parent width in compactMode", function()
		local fixedWidth = 200
		local parent, cleanup = createInstanceWithProps(mockLocale)(compactModeStory, {
			width = fixedWidth,
		})
		local button = RhodiumHelpers.findFirstInstance(parent, {
			Name = "showMore",
		})

		waitUntil(function()
			return button.AbsoluteSize.X == fixedWidth
		end)

		expect(button.AbsoluteSize.X).toBe(fixedWidth)

		cleanup()
	end)
end)
