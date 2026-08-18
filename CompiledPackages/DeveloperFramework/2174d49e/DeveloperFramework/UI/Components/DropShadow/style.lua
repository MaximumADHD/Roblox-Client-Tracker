local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

return {
	Color = StyleKey.Border,
	Image = "rbxasset://textures/StudioSharedUI/dropShadow.png",
	ImageSize = 16,
	Offset = Vector2.new(),
	Radius = 6,
	Transparency = 0,
}
