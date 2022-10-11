return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			RadioButtonSet = Roact.createElement(RadioButtonSet, {
				Title = "testTitle",
				Description = "testDesc",
				LayoutOrder = 10,
				Buttons = {
					{
						Id = "Test",
						Title = "Title",
						Description = "Desc",
					},
				},
				Enabled = true,
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end
