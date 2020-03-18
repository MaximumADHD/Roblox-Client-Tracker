local getAABBRegion = require(script.Parent.getAABBRegion)

return function()
	it("should be a function", function()
		expect(type(getAABBRegion)).to.equal("function")
	end)
end
