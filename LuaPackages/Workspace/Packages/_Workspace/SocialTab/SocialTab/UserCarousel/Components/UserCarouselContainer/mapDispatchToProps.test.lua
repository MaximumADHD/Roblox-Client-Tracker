local SocialTab = script:FindFirstAncestor("SocialTab")

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local mapDispatchToProps = require(script.Parent.mapDispatchToProps)

it("SHOULD return a function", function()
	expect(mapDispatchToProps).toEqual(expect.any("function"))
end)

describe("WHEN called", function()
	local returnValue = mapDispatchToProps(nil)

	it("SHOULD return a table", function()
		expect(returnValue).toEqual(expect.any("table"))
	end)
end)
