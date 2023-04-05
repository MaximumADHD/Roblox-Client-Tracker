local Root = script.Parent
local Packages = Root.Parent
local ProfileQRCode = require(Root)

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it

it("SHOULD have expected API", function()
	expect(ProfileQRCode).toEqual({
		["jest.config"] = expect.anything(),
		Experiments = expect.any("table"),
		installReducer = expect.any("function"),
		ProfileQRCodeEntryPoint = expect.any("function"),
		RoduxKey = expect.any("string"),
		TitleKey = expect.any("string"),
	})
end)
