return function()
	it("should require without errors", function()
		local TopBarApp = require(script.Parent)
		local CorePackages = game:GetService("CorePackages")

		local JestGlobals = require(CorePackages.JestGlobals)
		local expect = JestGlobals.expect

		expect(TopBarApp).never.toBeNil()
	end)
end
