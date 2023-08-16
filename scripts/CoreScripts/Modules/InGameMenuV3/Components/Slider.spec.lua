return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox


	local FocusHandlerContextProvider = require(script.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
	local Slider = require(script.Parent.Slider)

	it("should create and destroy without errors", function()
		local slider = Roact.createElement(Slider, {
			min = 0,
			max = 10,
			stepInterval = 1,
			value = 5,
			valueChanged = function() end,
		})

		local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			FocusHandlerContextProvider = Roact.createElement(FocusHandlerContextProvider, {}, {
				Slider = slider,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
