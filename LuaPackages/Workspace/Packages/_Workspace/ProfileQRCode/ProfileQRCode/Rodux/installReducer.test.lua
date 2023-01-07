local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it

local installReducer = require(script.Parent.installReducer)

it("SHOULD return function", function()
	expect(installReducer).toEqual(expect.any("function"))
end)
