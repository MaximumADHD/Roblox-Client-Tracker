local ShapeFiller = require(script.Parent.ShapeFiller)

return function()
	it("should be a table", function()
		expect(type(ShapeFiller)).to.equal("table")
		expect(type(ShapeFiller.fillBlock)).to.equal("function")
		expect(type(ShapeFiller.fillCylinder)).to.equal("function")
		expect(type(ShapeFiller.fillBall)).to.equal("function")
		expect(type(ShapeFiller.fillWedge)).to.equal("function")
		expect(type(ShapeFiller.fillShapeSlow)).to.equal("function")
	end)
end
