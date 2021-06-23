local smartColumnSculptBrush = require(script.Parent.smartColumnSculptBrush)

return function()
	it("should return a function", function()
		expect(type(smartColumnSculptBrush)).to.equal("function")
	end)
end
