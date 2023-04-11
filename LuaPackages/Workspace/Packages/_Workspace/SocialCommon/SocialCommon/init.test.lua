local Root = script.Parent
local Packages = Root.Parent
local SocialCommon = require(Root)

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it

it("SHOULD have expected API", function()
	expect(SocialCommon).toEqual({
		["jest.config"] = expect.anything(),
		Components = expect.any("table"),
		Utils = expect.any("table"),
	})
end)
