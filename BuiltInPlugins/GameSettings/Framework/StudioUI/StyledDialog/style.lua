local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Style = Util.Style
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
	return {
		Background = StyleKey.MainBackground,
		Modal = false,
		Resizable = false,

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
	}
else
	return function(theme, getColor)

		local Default = Style.new({
			Background = theme:GetColor("MainBackground"),
			Modal = false,
			Resizable = false,
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

		return {
			Default = Default,
			Alert = Alert,
			AcceptCancel = AcceptCancel,
		}
	end
end