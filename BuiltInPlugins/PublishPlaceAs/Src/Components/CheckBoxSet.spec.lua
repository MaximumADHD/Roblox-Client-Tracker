return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

	local CheckBoxSet = require(Plugin.Src.Components.CheckBoxSet)

	it("should create and destroy with boxes without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			CheckBoxSet = Roact.createElement(CheckBoxSet, {
				Boxes = {
					{
						Id = "SomeId",
						Title = "Tiiiitle!",
						Selected = true,
					},
					{
						Id = "SomeId2",
						Title = "Not a Title!",
						Selected = false,
					},
				},
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			CheckBoxSet = Roact.createElement(CheckBoxSet, {
				Boxes = {},
			}),
		})
		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end
