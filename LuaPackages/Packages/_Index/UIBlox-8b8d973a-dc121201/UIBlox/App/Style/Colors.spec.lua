return function()
	it("should be able to require Colors without errors", function()
		local Colors = require(script.Parent.Colors)
		expect(Colors).to.be.a("table")
	end)
end