local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local Rodux = require(Packages.Rodux)

local installReducer = require(script.Parent.installReducer)

it("SHOULD return function", function()
	expect(installReducer).toEqual(expect.any("function"))
end)

it("SHOULD have expected default state", function()
	local store = Rodux.Store.new(installReducer(), {})

	expect(store:getState()).toEqual({
		NetworkStatus = {},
		Users = expect.any("table"),
		ShareUrl = {},
	})
end)
