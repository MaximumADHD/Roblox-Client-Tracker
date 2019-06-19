return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local Preview = Plugin.Core.Components.Asset.Preview
	local ActionBar = require(Preview.ActionBar)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local function createTestAsset(container, name)
		local element = Roact.createElement(MockWrapper, {},{
				Roact.createElement(ActionBar, {
					size = UDim2.new(1, 0, 1, 0),
					position = UDim2.new(0, 0, 0, 0),
					anchorPoint = Vector2.new(0, 1),
				})
			})

		return Roact.mount(element, container or nil, name or "")
	end

	it("should create and destroy without errors", function()
		local instance = createTestAsset()
		Roact.unmount(instance)
	end)
end