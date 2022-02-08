return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local isValidScreenComponent = require(script.Parent.Parent.isValidScreenComponent)
	local TestComponent = Roact.Component:extend("TestFoo")
	it("should return true for valid element types", function()
		-- Function Component is valid
		expect(isValidScreenComponent(function()  end)).to.equal(true)
		-- Stateful Component is valid
		expect(isValidScreenComponent(TestComponent)).to.equal(true)
		expect(isValidScreenComponent(
			{ render = function() return TestComponent end })).to.equal(true)
		expect(isValidScreenComponent( -- we do not test if render function returns valid component
			{ render = function() end })).to.equal(true)
	end)

	it("should return false for invalid element types", function()
		expect(isValidScreenComponent("foo")).to.equal(false)
		expect(isValidScreenComponent(Roact.createElement("Frame"))).to.equal(false)
		expect(isValidScreenComponent(5)).to.equal(false)
		expect(isValidScreenComponent(Roact.Portal)).to.equal(false)
		expect(isValidScreenComponent({ render = "bad" })).to.equal(false)
		expect(isValidScreenComponent(
			{ notRender = function() return "foo" end })).to.equal(false)
	end)
end
