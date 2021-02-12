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
local Cryo = require(Plugin.Packages.Cryo)

local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local Style = Framework.Style
local StyleKey = Style.StyleKey
local BaseTheme = Style.Themes.BaseTheme
local StudioTheme = Style.Themes.StudioTheme
local ui = Style.ComponentSymbols

local PluginTheme = {
	[ui.Box] = Cryo.Dictionary.join(BaseTheme[ui.Box], {
		["&__Item"] = {
			Color = StyleKey.CategoryItem,
		},
	}),

	[ui.RoundBox] = Cryo.Dictionary.join(BaseTheme[ui.RoundBox], {
		["&__Item"] = {
			Color = StyleKey.CategoryItem,
			BorderTransparency = 1,
		},

		["&__Example"] = {
			Color = StyleKey.Mid,
		},
	}),

	[ui.Button] = Cryo.Dictionary.join(BaseTheme[ui.Button], {
		["&__Item"] ={
			Color = StyleKey.Button,
			BorderSize = 1,
		}
	}),
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
	warn("Stylizer is required for this template")
	return
end
