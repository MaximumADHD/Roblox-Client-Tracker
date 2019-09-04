return function()
	local BaseTileRoot = script.Parent
	local UIBloxRoot = BaseTileRoot.Parent.Parent

	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
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