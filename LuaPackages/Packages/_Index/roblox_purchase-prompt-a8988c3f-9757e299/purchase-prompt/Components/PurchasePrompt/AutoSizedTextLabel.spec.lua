return function()
	local Root = script.Parent.Parent.Parent

	local LuaPackages = Root.Parent
	local Roact = require(LuaPackages.Roact)

	local AutoSizedTextLabel = require(script.Parent.AutoSizedTextLabel)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(AutoSizedTextLabel, {
			Text = "Hello",
			TextSize = 10,
			Font = Enum.Font.SourceSans,
			width = 100,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should not throw even if no text is provided", function()
		local element = Roact.createElement(AutoSizedTextLabel, {
			TextSize = 10,
			Font = Enum.Font.SourceSans,
			width = 100,
		})

		expect(Roact.mount(element)).to.be.ok()
	end)
end