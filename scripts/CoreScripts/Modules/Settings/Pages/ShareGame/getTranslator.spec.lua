return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local getTranslator = require(script.Parent.getTranslator)
	it("should return a valid Localization mock in unit tests", function()
		expect(getTranslator()).never.toBeNil()
		expect(getTranslator().FormatByKey).never.toBeNil()
	end)
end
