local Plugin = script.Parent.Parent.Parent
local Tile = require(Plugin.Src.Components.Tile)

local MockServiceWrapper = require(Plugin.Src.TestHelpers.MockServiceWrapper)

local Roact = require(Plugin.Packages.Roact)

return function()
	it("should construct and destroy without any errors", function()
		local container = Instance.new("Folder")

		local element = Roact.createElement(MockServiceWrapper, {}, {
			Tile = Roact.createElement(Tile, {
				AssetData = {
					name = "Test Name",
					ClassName = "Folder",
				}
			})
		})

		local instance = Roact.mount(element, container)

		Roact.unmount(instance)
	end)
end