return function()
	local NoneSymbol = require(script.Parent.Parent.NoneSymbol)

	it("should return same object for each token for multiple calls", function()
		expect(NoneSymbol).to.equal(NoneSymbol)
	end)

	it("should return matching string names for symbols", function()
		expect(tostring(NoneSymbol)).to.equal("NONE")
	end)
end
