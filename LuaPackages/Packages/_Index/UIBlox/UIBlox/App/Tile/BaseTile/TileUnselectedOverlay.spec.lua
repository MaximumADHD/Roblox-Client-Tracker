return function()
	local BaseTile = script.Parent
	local Tile = BaseTile.Parent
	local App = Tile.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local TileUnselectedOverlay = require(script.Parent.TileUnselectedOverlay)

	it("should create and destroy without errors", function()
		local element = mockStyleComponent({
			Frame = Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			}, {
				TileUnselectedOverlay = Roact.createElement(TileUnselectedOverlay, {
					ZIndex = 2,
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end