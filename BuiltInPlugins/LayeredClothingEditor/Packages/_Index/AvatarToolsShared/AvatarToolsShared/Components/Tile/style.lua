local Packages = script.Parent.Parent.Parent.Parent
local Framework = require(Packages.Framework)
local StyleKey = Framework.Style.StyleKey

return {
	TileSize = UDim2.new(0, 140, 0, 160),
	TileInnerBorder = Vector2.new(10, 10),
	ImageFrameSize = UDim2.new(0, 120, 0, 118),
	ImageSize = UDim2.new(0, 100, 0, 98),
	TextLabelSize = UDim2.new(0, 120, 0, 22),

	ButtonBackgroundColor = StyleKey.ButtonPressed,
	TextSize = 18,
	ImageBackgroundColor = StyleKey.CategoryItem,
}