local Root = script.Parent
local Packages = Root.Parent
local ProfileQRCode = require(Root)

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it

it("SHOULD have expected API", function()
	expect(ProfileQRCode).toEqual({
		installReducer = expect.any("function"),
		RoduxKey = expect.any("string"),
		ProfileQRCodeEntryPoint = expect.any("function"),
		profileQRCodeIXP = expect.any("table"),
		["jest.config"] = expect.anything(),
	})
end)
