return function()
	local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
	local Root = script.Parent.Parent.Parent
	local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")
	local Roact = require(LuaPackages.Roact)

	local UnitTestContainer = require(script.Parent.Parent.Parent.Test.UnitTestContainer)

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