local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)

local devDependencies = require(SocialTab.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local it = JestGlobals.it

local GroupsTile = require(script.Parent)

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(GroupsTile)

		cleanup()
	end)

	it("SHOULD fire the onActivated callback when the tile is tapped", function()
		RhodiumHelpers.testOnActivated(GroupsTile)
	end)
end)
