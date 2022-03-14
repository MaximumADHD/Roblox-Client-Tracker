local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local ShimmerPanel = require(Packages.UIBlox.App.Loading.ShimmerPanel)

return Roact.createElement(ShimmerPanel, {
	AnchorPoint = Vector2.new(0, 0),
	LayoutOrder = 0,
	shimmerSpeed = 2,
	imageScale = 2,
	Position = UDim2.new(0, 0, 0, 0),
	Size = UDim2.new(0, 100, 0, 100),
})
