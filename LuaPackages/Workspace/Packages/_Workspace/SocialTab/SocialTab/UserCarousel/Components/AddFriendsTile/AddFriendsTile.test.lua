local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)

local devDependencies = require(SocialTab.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local AddFriendsTile = require(script.Parent)

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(AddFriendsTile)

		cleanup()
	end)

	it("it should fire the onActivated callback when the tile is tapped", function()
		local activatedMock = jest.fn()

		local parent, cleanup = createInstanceWithProps(AddFriendsTile, {
			onActivated = activatedMock,
		})

		local button = RhodiumHelpers.findFirstInstance(parent, {
			Name = "AddFriendButton",
		})

		RhodiumHelpers.clickInstance(button)

		expect(activatedMock).toHaveBeenCalledTimes(1)

		cleanup()
	end)
end)
