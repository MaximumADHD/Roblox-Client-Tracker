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
	it("SHOULD return a dictionary without throwing", function()
		expect(mapDispatchToProps()).toEqual({
			fetchChatSettings = expect.any("function"),
		})
	end)
end)
