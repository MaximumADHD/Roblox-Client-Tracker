return function()
	local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
	local Root = script.Parent.Parent.Parent
	local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")
	local Roact = require(LuaPackages.Roact)

	local UnitTestContainer = require(script.Parent.Parent.Parent.Test.UnitTestContainer)

	local AdditionalDetailLabel = require(script.Parent.AdditionalDetailLabel)

	AdditionalDetailLabel = AdditionalDetailLabel.getUnconnected()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UnitTestContainer, nil, {
			Roact.createElement(AdditionalDetailLabel, {
				layoutOrder = 1,
				messageKey = "test",
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when showing no text", function()
		local emptyMessageElement = Roact.createElement(UnitTestContainer, nil, {
			Roact.createElement(AdditionalDetailLabel, {
				layoutOrder = 1,
			})
		})

		local instance = Roact.mount(emptyMessageElement)
		Roact.unmount(instance)
	end)
end