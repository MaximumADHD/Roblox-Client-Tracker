return function()
	local NavigationSymbol = require(script.Parent.Parent.NavigationSymbol)

	it("should give an opaque object", function()
		local symbol = NavigationSymbol("foo")

		expect(symbol).to.be.a("userdata")
	end)

	it("should coerce to the given name", function()
		local symbol = NavigationSymbol("foo")

		expect(tostring(symbol)).to.equal("foo")
	end)

	it("should be unique when constructed", function()
		local symbolA = NavigationSymbol("abc")
		local symbolB = NavigationSymbol("abc")

		expect(symbolA).never.to.equal(symbolB)
	end)
end
