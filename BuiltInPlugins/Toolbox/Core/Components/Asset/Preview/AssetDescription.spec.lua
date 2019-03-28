return function()
	local Plugin = script.Parent.Parent.Parent.Parent

	local Libs = Plugin.Libs
	local Roact = require(Libs.Roact)

	local AssetDescription = require(Plugin.Core.Components.Asset.Preview.AssetDescription)

	local function createTestAsset(container, name)
		local element = Roact.createElement(AssetDescription, {}, {
			position = UDim2.new(1, 0, 1, 0),
			size = UDim2.new(1, 0, 1, 0),
			leftContent = "",
			rightContent = "",

			useBoldLine = false,
		})

		return Roact.mount(element, container or nil, name or "")
	end

	it("should create and destroy without errors", function()
		local instance = createTestAsset()
		Roact.unmount(instance)
	end)
end
