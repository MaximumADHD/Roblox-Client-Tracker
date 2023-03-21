local Root = script.Parent
local Packages = Root.Parent
local UserSearch = require(Root)

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it

it("SHOULD have expected API", function()
	expect(UserSearch).toEqual({
		["jest.config"] = expect.anything(),
		UserSearchTile = expect.any("function"),
		ImpressionsTagWrapper = expect.any("table"),
		ProfileInsightsContextFetchWrapper = expect.any("function"),
	})
end)
