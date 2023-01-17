local Root = script.Parent
local Packages = Root.Parent
local ProfileQRCode = require(Root)

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it

it("SHOULD have expected API", function()
	expect(ProfileQRCode).toEqual({
		["jest.config"] = expect.anything(),
		DisplayQRCode = expect.any("function"),
		ECLevels = expect.any("table"),
	})
end)
