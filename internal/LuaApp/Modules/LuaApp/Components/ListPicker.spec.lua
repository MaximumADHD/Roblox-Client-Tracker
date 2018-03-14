return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)
	local ListPicker = require(Modules.LuaApp.Components.ListPicker)

	it("should create and destroy without errors", function()
		local listIcons = {
			"rbxasset://textures/ui/LuaApp/category/ic-featured.png",
			"rbxasset://textures/ui/LuaApp/category/ic-popular.png",
			"rbxasset://textures/ui/LuaApp/category/ic-top rated.png"
		}
		local listItems = {
			"Featured",
			"Popular",
			"Top Rated"
		}

		local element = Roact.createElement(ListPicker, {
			onSelectItem = nil,
			items = listItems,
			icons = listIcons,
		})

		local instance = Roact.reify(element)
		Roact.teardown(instance)
	end)
end