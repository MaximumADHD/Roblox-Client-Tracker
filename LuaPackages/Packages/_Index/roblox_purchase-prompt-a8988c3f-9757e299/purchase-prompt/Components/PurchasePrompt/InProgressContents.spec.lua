return function()
	local Root = script.Parent.Parent.Parent

	local LuaPackages = Root.Parent
	local Roact = require(LuaPackages.Roact)

	local UnitTestContainer = require(Root.Test.UnitTestContainer)

	local InProgressContents = require(script.Parent.InProgressContents)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UnitTestContainer, nil, {
			Roact.createElement(InProgressContents, {
				anchorPoint = Vector2.new(0, 0),
				position = UDim2.new(0, 0, 0, 0),
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end