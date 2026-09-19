--[[
	ThemeSwitcher is a DeveloperFramework theme that can be included in place of StudioTheme.
	For example, instead of `StudioTheme.new()`, use `ThemeSwitcher.new()`.

	It has methods setTheme(name: string) and getThemeName() to let developers programatically change
	or query the current theme. This is used in the Developer Storybook to let stories dynamically
	change which theme they are displaying under in the plugin itself.

	The name/override/signal state lives in ThemeSwitcherState; this module adds theme
	construction (.new) on top of it.
]]
local Framework = script.Parent.Parent
local Cryo = require(Framework.Parent.Cryo)
local Style = Framework.Style
local DarkTheme = require(Style.Themes.DarkTheme)
local LightTheme = require(Style.Themes.LightTheme)
local createDefaultTheme = require(Style.createDefaultTheme)
local ThemeSwitcherState = require(Style.ThemeSwitcherState)

local ThemeSwitcher = {
	getThemeName = ThemeSwitcherState.getThemeName,
	subscribe = ThemeSwitcherState.subscribe,
	setTheme = ThemeSwitcherState.setTheme,
}

function ThemeSwitcher.new(darkThemeOverride, lightThemeOverride)
	local darkTheme = DarkTheme
	if darkThemeOverride then
		darkTheme = Cryo.Dictionary.join(DarkTheme, darkThemeOverride)
	end

	local lightTheme = LightTheme
	if lightThemeOverride then
		lightTheme = Cryo.Dictionary.join(LightTheme, lightThemeOverride)
	end

	local themeProps = Cryo.Dictionary.join({
		themesList = {
			["Dark"] = darkTheme,
			["Light"] = lightTheme,
		},
		themeChangedConnection = ThemeSwitcherState.themeSignal,
	}, ThemeSwitcher)

	local theme = createDefaultTheme(themeProps)
	-- Yes, this is stupid, but we actually must reset the design derived and copying the code here would be worse.
	ThemeSwitcherState.setTheme(ThemeSwitcherState.current)
	return theme
end

return ThemeSwitcher
