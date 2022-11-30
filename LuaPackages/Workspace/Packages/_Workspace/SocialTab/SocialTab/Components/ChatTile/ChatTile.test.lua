local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)

local devDependencies = require(SocialTab.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local ChatTile = require(script.Parent)

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(ChatTile)

		cleanup()
	end)

	it("SHOULD have a notifications badge if there are more than zero notifications", function()
		local folder, cleanup = createInstanceWithProps(ChatTile, {
			unreadConversationCount = 87,
		})

		local badge = RhodiumHelpers.findFirstInstance(folder, {
			Text = "87",
		})

		expect(badge).toEqual(expect.any("Instance"))

		cleanup()
	end)

	it("SHOULD NOT have a notifications badge if there are zero notifications", function()
		local folder, cleanup = createInstanceWithProps(ChatTile, {
			unreadConversationCount = 0,
		})

		local badge = RhodiumHelpers.findFirstInstance(folder, {
			Text = "0",
		})

		expect(badge).toBeNil()

		cleanup()
	end)

	it("it should fire the onActivated callback when the tile is tapped", function()
		RhodiumHelpers.testOnActivated(ChatTile)
	end)
end)
