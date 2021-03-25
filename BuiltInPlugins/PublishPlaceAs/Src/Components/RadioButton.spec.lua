return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local RadioButton = require(Plugin.Src.Components.RadioButton)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			RadioButton = Roact.createElement(RadioButton, {
				Title = "testTitle",
				Id = "id",
				Description = "desc",
				Selected = true,
				Index = 1,
				Enabled = true,
				RadioButtonStyle = {},
				LayoutOrder = 1,
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end
