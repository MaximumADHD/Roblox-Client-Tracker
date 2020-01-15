local smartLargeSmoothBrush = require(script.Parent.smartLargeSmoothBrush)

return function()
	it("should return a function", function()
		expect(type(smartLargeSmoothBrush)).to.equal("function")
	end)
end
