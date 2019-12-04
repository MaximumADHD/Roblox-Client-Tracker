local Plugin = script.Parent.Parent.Parent

local Roact =require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local ToggleItemModule = require(Plugin.Src.Components.ToggleItemModule)

return function()
	it("should create and destroy without errors", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			ToggleItemModule = Roact.createElement(ToggleItemModule, {
				Key = "Aloha",
				IsOn = true,
				ToggleCallback = function() end,
			})
		})

		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end