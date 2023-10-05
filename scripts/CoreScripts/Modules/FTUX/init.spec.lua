return function()
	it("should require without errors", function()
		local CorePackages = game:GetService("CorePackages")
		local FTUXMenu = require(script.Parent)

		local JestGlobals = require(CorePackages.JestGlobals)
		local expect = JestGlobals.expect
		expect(FTUXMenu).never.toBeNil()
	end)
end
