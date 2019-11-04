return function()
	local BaseTile = script.Parent
	local Tile = BaseTile.Parent
	local App = Tile.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local TileThumbnail = require(script.Parent.TileThumbnail)

	it("should create and destroy without errors", function()
		local testImage = "https://t5.rbxcdn.com/ed422c6fbb22280971cfb289f40ac814"
		local element = mockStyleComponent({
			Frame = Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			}, {
				ItemTileIcon = Roact.createElement(TileThumbnail, {
					Image = testImage,
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy with additional components without errors", function()
		local testImage = "https://t5.rbxcdn.com/ed422c6fbb22280971cfb289f40ac814"
		local element = mockStyleComponent({
			Frame = Roact.createElement("Frame", {
				Size = UDim2.new(0, 100, 0, 100),
			}, {
				ItemTileIcon = Roact.createElement(TileThumbnail, {
					Image = testImage,
					isSelected = true,
					overlayComponents = {
						Roact.createElement("Frame", {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 1, 0),
						}),
					}
				})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end