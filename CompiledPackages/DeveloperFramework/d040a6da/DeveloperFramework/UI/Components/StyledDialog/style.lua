local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

return {
	Background = StyleKey.MainBackground,
	Modal = false,
	Resizable = false,
	ButtonHorizontalAlignment = Enum.HorizontalAlignment.Right,
	ButtonWidth = 120,
	ButtonHeight = 32,
	ButtonPadding = {
		Top = 24,
	},
	ButtonSpacing = 24,
	ContentPadding = 24,

	["&Alert"] = {
		Buttons = {
			{ Style = "RoundPrimary" }, -- OK
		},
		Modal = true,
	},

	["&AcceptCancel"] = {
		Buttons = {
			{ Style = "RoundPrimary" }, -- OK
			{ Style = "Round" }, -- Cancel
		},
	},

	["&CancelAccept"] = {
		Buttons = {
			{ Style = "Round" }, -- Cancel
			{ Style = "RoundPrimary" }, -- OK
		},
	},

	["&FullBleed"] = {
		ButtonPadding = 24,
		ContentPadding = 0,
	},

	["&LargeCenterButtons"] = {
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center,
		ButtonWidth = 150,
		ButtonHeight = 36,
	},
}
