local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)
return {
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	BackgroundColor3 = StyleKey.MainBackground,

	TopImage = "rbxasset://textures/StudioSharedUI/ScrollBarTop.png",
	MidImage = "rbxasset://textures/StudioSharedUI/ScrollBarMiddle.png",
	BottomImage = "rbxasset://textures/StudioSharedUI/ScrollBarBottom.png",

	AutoSizeCanvas = true,
	AutoSizeLayoutElement = "UIListLayout",
	AutoSizeLayoutOptions = {
		Padding = UDim.new(0, 4),
	},
	ScrollBarBackgroundColor = StyleKey.ScrollBarBackground,

	ScrollingEnabled = true,
	ScrollingDirection = Enum.ScrollingDirection.Y,
	ScrollBarThickness = 8,
	ScrollBarImageTransparency = 0,
	ScrollBarImageColor3 = StyleKey.ScrollBar,
	VerticalScrollBarInset = Enum.ScrollBarInset.Always,
}
