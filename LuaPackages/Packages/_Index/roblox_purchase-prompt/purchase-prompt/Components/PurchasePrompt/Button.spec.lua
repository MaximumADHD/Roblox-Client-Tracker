return function()
	local Root = script.Parent.Parent.Parent

	local LuaPackages = Root.Parent
	local Roact = require(LuaPackages.Roact)

	local UnitTestContainer = require(Root.Test.UnitTestContainer)

	local Button = require(script.Parent.Button)

	Button = Button.getUnconnected()

	it("should create and destroy without errors with gamepad disabled", function()
		local element = Roact.createElement(UnitTestContainer, nil, {
			Roact.createElement(Button, {
				gamepadEnabled = false,

				stringKey = "testing123",
				gamepadButton = Enum.KeyCode.ButtonA,
				font = Enum.Font.SourceSans,
				imageUp = "ButtonUp",
				imageDown = "ButtonDown",
				onClick = function()
				end,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with gamepad enabled", function()
		local element = Roact.createElement(UnitTestContainer, nil, {
			Roact.createElement(Button, {
				gamepadEnabled = true,

				stringKey = "testing123",
				gamepadButton = Enum.KeyCode.ButtonA,
				font = Enum.Font.SourceSans,
				imageUp = "ButtonUp",
				imageDown = "ButtonDown",
				onClick = function()
				end,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end