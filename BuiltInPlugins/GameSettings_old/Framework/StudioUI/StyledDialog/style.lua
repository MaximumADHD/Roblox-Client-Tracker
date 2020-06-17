local Framework = script.Parent.Parent.Parent

local Util = require(Framework.Util)
local Style = Util.Style

local UI = require(Framework.UI)
local Decoration = UI.Decoration

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
