local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

local StyleKey = Framework.Style.StyleKey

return {
	Border = StyleKey.Border,
	ScrollHeaderPadding = {
		Right = 8,
	},
	RowHeight = 24,
	HeaderCellPadding = 5,
	HeaderHeight = 32,
	FooterHeight = 36,
	IconColor = StyleKey.Icon,
}
