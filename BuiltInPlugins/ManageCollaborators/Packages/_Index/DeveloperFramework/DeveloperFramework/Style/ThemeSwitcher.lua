--[[
	ThemeSwitcher is a DeveloperFramework theme that can be included in place of StudioTheme.
	For example, instead of `StudioTheme.new()`, use `ThemeSwitcher.new()`.

	It has methods setTheme(name: string) and getThemeName() to let developers programatically change
	or query the current theme. This is used in the Developer Storybook to let stories dynamically
	change which theme they are displaying under in the plugin itself.
]]
local Framework = script.Parent.Parent

local Signal = require(Framework.Util.Signal)
local Util = require(Framework.Util)
local Cryo = Util.Cryo
local Style = Framework.Style
local DarkTheme = require(Style.Themes.DarkTheme)
local LightTheme =  require(Style.Themes.LightTheme)
local createDefaultTheme =  require(Style.createDefaultTheme)
local getStudioTheme = function()
	local ok, theme = pcall(function()
		return settings().Studio.Theme.Name
	end)
	if not ok then
		return "Dark"
	else
		return theme
	end
end

local themeSignal = Signal.new()
pcall(function()
	settings().Studio.ThemeChanged:Connect(function()
		themeSignal:Fire()
	end)
end)

local ThemeSwitcher = {
	current = "Default",
}

function ThemeSwitcher.getThemeName()
	if ThemeSwitcher.current == "Default" then
		return getStudioTheme()
	else
		return ThemeSwitcher.current
	end
end

function ThemeSwitcher.setTheme(name: string)
	ThemeSwitcher.current = name
	themeSignal:Fire()
end

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
		themeChangedConnection = themeSignal
	}, ThemeSwitcher)

	return createDefaultTheme(themeProps)
end

return ThemeSwitcher
