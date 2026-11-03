local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

return {
	Size = UDim2.fromOffset(100, 50),
	Hover = {
		Background = StyleKey.ButtonHover,
	},
	Disabled = {
		Background = StyleKey.ButtonDisabled,
		TextColor = StyleKey.DimmedText,
	},
	IconSize = 16,
	Padding = 10,
	Spacing = 10,
	["&Primary"] = {
		BackgroundColor = StyleKey.TextPrimary,
		TextColor = StyleKey.SecondaryMuted,
		Hover = {
			Background = StyleKey.TextSecondary,
		},
	},
	["&PrimaryBrand"] = {
		BackgroundColor = StyleKey.PrimaryMain,
		BorderColor = StyleKey.DialogMainButton,
		Font = Enum.Font.SourceSansBold,
		TextColor = StyleKey.DialogMainButtonText,
		Hover = {
			Background = StyleKey.DialogMainButtonHover,
		},
	},
	["&Link"] = {},
	["&Compact"] = {
		Padding = 5,
		Spacing = 5,
	},
	["&IconOnly"] = {
		Padding = 0,
		Spacing = 0,
	},
}
