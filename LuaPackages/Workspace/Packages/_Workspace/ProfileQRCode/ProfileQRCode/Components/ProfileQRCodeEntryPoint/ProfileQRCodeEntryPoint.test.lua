local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local ProfileQRCodeEntryPoint = require(script.Parent)
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it

it("SHOULD load in element", function()
	expect(ProfileQRCodeEntryPoint).toEqual(expect.any("function"))
end)
