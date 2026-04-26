local Framework = script:FindFirstAncestor("UI").Parent
local StyleModifier = require(Framework.Util.StyleModifier)
local StyleKey = require(Framework.Style.StyleKey)

return {
	Arrow = {
		Image = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png",
		Size = 12,
		ExpandedOffset = Vector2.new(24, 0),
		CollapsedOffset = Vector2.new(12, 0),
		Color = StyleKey.MainText,
	},
	Border = StyleKey.SubBackground,
	Background = StyleKey.MainBackground,
	Indent = 17,
	[StyleModifier.Hover] = {
		Background = StyleKey.ButtonHover,
	},
	[StyleModifier.Selected] = {
		Background = StyleKey.ActionSelected,
	},
	Tooltip = {
		MaxWidth = 1000,
	},
	RowHeight = 24,
	Spacing = 5,
	TailPadding = {
		Top = 0,
		Bottom = 0,
		Left = 3,
		Right = 10,
	},
	Padding = {
		Top = 1,
		Bottom = 1,
		Left = 5,
		Right = 5,
	},
}
