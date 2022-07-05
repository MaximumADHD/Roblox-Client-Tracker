local Plugin = script.Parent.Parent.Parent
local PopUpButton = require(Plugin.Src.Components.PopUpButton)

local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local Roact = require(Plugin.Packages.Roact)

return function()
	it("should construct and destroy without any errors", function()
		local container = Instance.new("Folder")

		local element = Roact.createElement(MockServiceWrapper, {}, {
			NavBar = Roact.createElement(PopUpButton, {
				Position = UDim2.new(0, 36, 0, 0),

				Image = "rbxasset://textures/ui/common/robux_small.png",
				ShowIcon = true,
				OnClick = function()
					print("foo")
				end,
				OnRightClick = function()
					print("bar")
				end,
			})
		})

		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)
end