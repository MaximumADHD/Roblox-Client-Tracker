local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local CheckBoxModule = require(Plugin.Src.Components.CheckBoxModule)

return function()
	it("should create and destroy without errors with props", function()
		local mockServiceWrapper = Roact.createElement(MockServiceWrapper, {}, {
			CheckBoxModule = Roact.createElement(CheckBoxModule, {
				ItemKey = "item",
				Selected = true,
				CheckBoxCallback = function() end,
			})
		})

		local instance = Roact.mount(mockServiceWrapper)
		Roact.unmount(instance)
	end)
end