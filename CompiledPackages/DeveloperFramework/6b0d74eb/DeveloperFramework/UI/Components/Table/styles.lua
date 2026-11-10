local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-Table", {}, {}, {
	FooterHeight = 36,
	HeaderHeight = 32,
	RowHeight = 24,
	ScrollHeaderPadding = 10,
})
