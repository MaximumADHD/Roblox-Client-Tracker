--[[
	Creates the theme for the plugin.
	Extends the default StudioFrameworkStyles, and also defines values specific
	to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be
			set to true in testing.
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local ui = Style.ComponentSymbols
-- local _StyleKey = Style.StyleKey -- uncomment to use

ui:add("AlertDialog")

local PluginTheme = {
	Button = {
		Size = UDim2.fromOffset(75, 28),
		Style = "Round",
	},

	TextInput = {
		Size = UDim2.fromOffset(60, 20),
		Style = "RoundedBorder",
	},

	[ui.AlertDialog] = {
		PopupMessageSize = Vector2.new(400, 60),
		TextSize = 18,
	}
}

if THEME_REFACTOR then
	return function(createMock)
		local styleRoot
		if createMock then
			styleRoot = StudioTheme.mock()
		else
			styleRoot = StudioTheme.new()
		end

		return styleRoot:extend(PluginTheme)
	end
else
	-- TODO: DEVTOOLS-4731: Once THEME_REFACTOR is on, remove this
	warn("Stylizer is required for this plugin")
	return
end
