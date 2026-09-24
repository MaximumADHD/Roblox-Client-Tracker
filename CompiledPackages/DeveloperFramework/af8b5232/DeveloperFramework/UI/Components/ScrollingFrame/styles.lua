local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-ScrollingFrame", {}, {
	rule("> ScrollingFrame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		TopImage = "rbxasset://textures/StudioSharedUI/ScrollBarTop.png",
		MidImage = "rbxasset://textures/StudioSharedUI/ScrollBarMiddle.png",
		BottomImage = "rbxasset://textures/StudioSharedUI/ScrollBarBottom.png",

		ScrollingEnabled = true,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		ScrollBarThickness = 8,
		ScrollBarImageTransparency = 0,
		ScrollBarImageColor3 = "$SecondaryMain",
		VerticalScrollBarInset = Enum.ScrollBarInset.Always,
	}),
	rule(".modern > ScrollingFrame", {
		ScrollBarImageTransparency = 0,
		ScrollBarImageColor3 = "$ScrollBarColor",
	}),
})
