local Plugin = script.Parent.Parent.Parent

local Roact =require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local ListItemsModule = require(Plugin.Src.Components.ListItemsModule)

return function()
	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ListItemsModule = Roact.createElement(ListItemsModule, {
				LabelText = "Aloha",
				Items = {"a", "b", "c", "d"},
				ListItemsCheckBoxCallback = function() end,
				ListStatus = {"a", "b"},
			})
		})

		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end