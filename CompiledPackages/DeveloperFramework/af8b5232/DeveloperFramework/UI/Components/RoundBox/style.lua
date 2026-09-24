local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

return {
	Color = StyleKey.MainBackground,
	BorderColor = StyleKey.Border,
	Transparency = 0,
	BorderTransparency = 0,
	BackgroundImage = "rbxasset://textures/StudioToolbox/RoundedBackground.png",
	BorderImage = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
	SliceCenter = Rect.new(3, 3, 13, 13),
}
