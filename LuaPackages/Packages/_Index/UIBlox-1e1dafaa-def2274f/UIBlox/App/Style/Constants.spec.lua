return function()
	it("should be able to require Constants without errors", function()
		local Constants = require(script.Parent.Constants)
		expect(Constants).to.be.a("table")
	end)
end