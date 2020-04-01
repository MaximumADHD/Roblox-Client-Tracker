return function()
	local StyleRoot = script.Parent
	local UIBloxRoot = StyleRoot.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local testStyle = require(StyleRoot.Validator.TestStyle)
	local StyleProvider = require(StyleRoot.StyleProvider)

	it("should create and destroy without errors", function()
		local someComponent = Roact.createElement("TextLabel", {
			Text = "test",
		})
		local styleProvider = Roact.createElement(StyleProvider, {
			style = testStyle,
		}, {
			SomeComponent = someComponent,
		})

		local roactInstance = Roact.mount(styleProvider)
		Roact.unmount(roactInstance)
	end)

	it("should throw given an invalid style palette", function()
		local invalidStyle = {}
		local someComponent = Roact.createElement("TextLabel", {
			Text = "test",
		})
		local styleProvider = Roact.createElement(StyleProvider, {
			style = invalidStyle,
		}, {
			SomeComponent = someComponent,
		})
		expect(function()
			local roactInstance = Roact.mount(styleProvider)
			Roact.unmount(roactInstance)
		end).to.throw()
	end)
end