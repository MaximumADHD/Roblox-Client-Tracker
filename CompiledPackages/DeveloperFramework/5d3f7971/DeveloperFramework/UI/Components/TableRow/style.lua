local Framework = script:FindFirstAncestor("UI").Parent

local StyleModifier = require(Framework.Util.StyleModifier)
local StyleKey = require(Framework.Style.StyleKey)

return {
	Text = StyleKey.MainText,
	Border = StyleKey.SubBackground,
	BackgroundOdd = StyleKey.MainBackground,
	BackgroundEven = StyleKey.SubBackground2,
	[StyleModifier.Hover] = {
		Text = StyleKey.BrightText,
		BackgroundOdd = StyleKey.ActionHover,
		BackgroundEven = StyleKey.ActionHover,
		-- BUG RIDE-4870: These should be inherited by Stylizer (and in fact are for Table, but for some reason not TreeTable)
		Border = StyleKey.SubBackground,
		Tooltip = {
			MaxWidth = 1000,
		},
		RowHeight = 24,
	},
	[StyleModifier.Selected] = {
		Text = StyleKey.BrightText,
		BackgroundOdd = StyleKey.ActionSelected,
		BackgroundEven = StyleKey.ActionSelected,
		-- BUG RIDE-4870: These should be inherited by Stylizer (and in fact are for Table, but for some reason not TreeTable)
		Border = StyleKey.SubBackground,
		Tooltip = {
			MaxWidth = 1000,
		},
		RowHeight = 24,
	},
	Tooltip = {
		MaxWidth = 1000,
	},
	RowHeight = 24,
}
