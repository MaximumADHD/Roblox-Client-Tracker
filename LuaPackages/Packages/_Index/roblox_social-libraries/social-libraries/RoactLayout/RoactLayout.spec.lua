return function()
	local RoactLayout = require(script.Parent)

	it("should have all and only expected fields", function(context)
		context.UnitTestHelpers.expectedFields(RoactLayout, {
			"vertical",
			"insert",
		})
	end)
end
