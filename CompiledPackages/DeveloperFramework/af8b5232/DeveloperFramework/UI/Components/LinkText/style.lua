local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

return {
	Font = Enum.Font.SourceSans,
	TextSize = 18,
	TextColor = StyleKey.LinkText,
	TextColorHovered = StyleKey.LinkTextHover,

	["&Body"] = {
		TextSize = 14,
	},

	["&Underlined"] = {
		ForceUnderline = true,
		ShowUnderline = true,
	},

	["&Unobtrusive"] = {
		ShowUnderline = false,
		TextColor = StyleKey.MainText,
		TextColorHovered = StyleKey.LinkTextHover,
		TextSize = 14,
	},
}
