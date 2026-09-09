local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

return {
	Border = StyleKey.Border,
	ScrollHeaderPadding = {
		Right = 10,
	},
	ListPadding = {
		Top = 1,
		Left = 0,
		Bottom = 0,
		Right = 0,
	},
	RowHeight = 24,
	HeaderCellPadding = 5,
	HeaderHeight = 32,
	FooterHeight = 36,
	IconColor = StyleKey.Icon,
}
