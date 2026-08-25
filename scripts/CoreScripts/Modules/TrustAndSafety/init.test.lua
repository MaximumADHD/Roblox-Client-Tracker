local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local expect = JestGlobals.expect

it("should require without errors", function()
	local TrustAndSafety = require(script.Parent)
	expect(TrustAndSafety).never.toBeNil()
end)
