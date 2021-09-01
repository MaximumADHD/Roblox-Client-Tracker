local FFlagDevFrameworkStyledDialogFullBleed = game:GetFastFlag("DevFrameworkStyledDialogFullBleed")

local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Style = Util.Style
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

if THEME_REFACTOR then
	return {
		Background = StyleKey.MainBackground,
		Modal = false,
		Resizable = false,
		ButtonHorizontalAlignment = Enum.HorizontalAlignment.Right,
		ButtonPadding = FFlagDevFrameworkStyledDialogFullBleed and {
			Top = 24,
		} or nil,
		ButtonSpacing = FFlagDevFrameworkStyledDialogFullBleed and 24 or nil,
		ContentPadding = FFlagDevFrameworkStyledDialogFullBleed and 24 or nil,

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

		["&FullBleed"] = FFlagDevFrameworkStyledDialogFullBleed and {
			ButtonPadding = 24,
			ContentPadding = 0,
		} or nil,
	}
else
	return function(theme, getColor)

		local Default = Style.new({
			Background = theme:GetColor("MainBackground"),
			Modal = false,
			Resizable = false,
			ButtonHorizontalAlignment = Enum.HorizontalAlignment.Right,
			ButtonPadding = FFlagDevFrameworkStyledDialogFullBleed and {
				Top = 24,
			} or nil,
			ButtonSpacing = FFlagDevFrameworkStyledDialogFullBleed and 24 or nil,
			ContentPadding = FFlagDevFrameworkStyledDialogFullBleed and {
				Left = 24,
				Top = 24,
				Right = 24,
				Bottom = 24,
			} or nil,
		})

		local Alert = Style.extend(Default, {
			Buttons = {
				{ Style = "RoundPrimary" }, -- OK
			},
			Modal = true,
		})

		local AcceptCancel = Style.extend(Default, {
			Buttons = {
				{ Style = "RoundPrimary" }, -- OK
				{ Style = "Round" }, -- Cancel
			},
		})

		local FullBleed = FFlagDevFrameworkStyledDialogFullBleed and Style.extend(Default, {
			ContentPadding = {
				Left = 0,
				Top = 0,
				Right = 0,
				Bottom = 24,
			},
		}) or nil

		return {
			Default = Default,
			Alert = Alert,
			AcceptCancel = AcceptCancel,
			FullBleed = FullBleed,
		}
	end
end
