local smartLargeSculptBrush = require(script.Parent.smartLargeSculptBrush)

return function()
	it("should return a function", function()
		expect(type(smartLargeSculptBrush)).to.equal("function")
	end)
end
