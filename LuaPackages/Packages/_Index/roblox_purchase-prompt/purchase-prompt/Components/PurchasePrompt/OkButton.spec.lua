return function()
	local Root = script.Parent.Parent.Parent

	local LuaPackages = Root.Parent
	local Roact = require(LuaPackages.Roact)

	local UnitTestContainer = require(Root.Test.UnitTestContainer)

	local OkButton = require(script.Parent.OkButton)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UnitTestContainer, nil, {
			Roact.createElement(OkButton, {
				onClick = function()
				end,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end