return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

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