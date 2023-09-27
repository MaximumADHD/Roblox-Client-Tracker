return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	it("should require without errors", function()
		local TrustAndSafety = require(script.Parent)
		expect(TrustAndSafety).never.toBeNil()
	end)
end
