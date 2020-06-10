return function()
	local Root = script.Parent.Parent.Parent

	local LuaPackages = Root.Parent
	local Roact = require(LuaPackages.Roact)

	local UnitTestContainer = require(Root.Test.UnitTestContainer)

	local PriceDeprecated = require(script.Parent.PriceDeprecated)

	PriceDeprecated = PriceDeprecated.getUnconnected()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UnitTestContainer, nil, {
			Roact.createElement(PriceDeprecated, {
				layoutOrder = 1,
				imageUrl = "",
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
