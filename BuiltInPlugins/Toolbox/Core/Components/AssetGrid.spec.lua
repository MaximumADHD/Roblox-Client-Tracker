return function()
	local Plugin = script.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local AssetGrid = require(Plugin.Core.Components.AssetGrid)

	local function createTestAssetGrid(name, container)
		local element = Roact.createElement(MockWrapper, {}, {
			AssetGridContainer = Roact.createElement(AssetGrid, {
				parentAbsolutePosition = Vector2.new(400, 400),
				parentSize = Vector2.new(400, 400),
				Size = UDim2.new(0, 400, 0, 400),
			}),
		})

		return Roact.mount(element, container or nil, name or "")
	end

	it("should create and destroy without errors", function()
		local instance = createTestAssetGrid()
		Roact.unmount(instance)
	end)
end
