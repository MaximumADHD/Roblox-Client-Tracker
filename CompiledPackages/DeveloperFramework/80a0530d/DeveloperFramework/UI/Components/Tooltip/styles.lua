local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-Tooltip", {}, {}, {
	DropShadowPadding = 6,
	MaxWidth = 200,
	Offset = Vector2.new(10, 5),
	Padding = 5,
	ShowDelay = 0.3,
})
