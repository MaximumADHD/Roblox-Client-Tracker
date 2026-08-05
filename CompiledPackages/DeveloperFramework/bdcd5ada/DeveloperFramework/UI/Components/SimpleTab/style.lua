local Framework = script:FindFirstAncestor("UI").Parent

local StyleModifier = require(Framework.Util.StyleModifier)

local StyleKey = require(Framework.Style.StyleKey)

return {
	BorderSize = 1,
	Spacing = 5,
	Padding = {
		Left = 20,
		Top = 4,
		Bottom = 0,
		Right = 20,
	},
	TopLineHeight = 3,
	Color = StyleKey.ButtonText,
	BackgroundColor = StyleKey.SubBackground,
	BorderColor = StyleKey.SubBackground,
	TopLineColor = StyleKey.DialogMainButton,
	BottomLineColor = StyleKey.Border,
	[StyleModifier.Hover] = {
		Color = StyleKey.DialogMainButton,
	},
	[StyleModifier.Selected] = {
		BottomLineColor = StyleKey.SubBackground,
		BackgroundColor = StyleKey.MainBackground,
		BorderColor = StyleKey.Border,
	},
	[StyleModifier.Disabled] = {
		Color = StyleKey.ButtonTextDisabled,
	},
}
