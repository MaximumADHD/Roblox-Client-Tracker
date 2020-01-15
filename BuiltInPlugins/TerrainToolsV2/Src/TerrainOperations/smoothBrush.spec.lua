local smoothBrush = require(script.Parent.smoothBrush)

return function()
	it("should return a function", function()
		expect(type(smoothBrush)).to.equal("function")
	end)
end
