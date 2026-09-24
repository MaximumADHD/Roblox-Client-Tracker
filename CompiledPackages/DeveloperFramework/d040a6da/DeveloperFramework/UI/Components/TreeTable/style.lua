local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

return {
	Arrow = {
		Image = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png",
		Size = 12,
		ExpandedOffset = Vector2.new(24, 0),
		CollapsedOffset = Vector2.new(12, 0),
		Color = StyleKey.MainText,
	},
	Indent = 20,
	CellSpacing = 5,
	CellPadding = {
		Top = 1,
		Bottom = 1,
		Left = 5,
		Right = 5,
	},
	SchemaCellPadding = {
		Top = 1,
		Bottom = 1,
		Left = 1,
		Right = 1,
	},
	IconSize = 24,
}
