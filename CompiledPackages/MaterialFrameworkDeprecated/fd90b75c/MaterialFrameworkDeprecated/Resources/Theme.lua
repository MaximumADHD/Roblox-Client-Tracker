local main = script.Parent.Parent
local Packages = main.Parent
local componentsFolder = main.Components

local Framework = require(Packages.Framework)
local Dash = require(Packages.Dash)

local Util = Framework.Util
local deepCopy = Util.deepCopy
local StyleModifier = Util.StyleModifier

-- local FrameworkTypes = require(Packages._Index.DeveloperFramework.DeveloperFramework.Types)

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local makeTheme = Style.makeTheme
local StyleKey = Style.StyleKey
local getRawComponentStyle = Style.getRawComponentStyle
local ui = Style.ComponentSymbols

local frameworkButton = getRawComponentStyle("Button")

local roundAppliedButton = deepCopy(frameworkButton["&RoundPrimary"])
roundAppliedButton["BackgroundStyle"]["Color"] = StyleKey.BackgroundDefault
roundAppliedButton[StyleModifier.Hover]["BackgroundStyle"]["Color"] = StyleKey.ButtonHover

local roundActiveAppliedButton = deepCopy(frameworkButton["&RoundActive"])
roundActiveAppliedButton["BackgroundStyle"]["Color"] = StyleKey.BackgroundDefault

local button = Dash.join(frameworkButton, {
	["&RoundApplied"] = roundAppliedButton,
	["&RoundActiveApplied"] = roundActiveAppliedButton,
})
local LibraryTheme = {
	[ui.Button] = button,
}

local Theme = {}

function Theme.new(darkThemeOverride, lightThemeOverride)
	local baseTheme = StudioTheme.new(darkThemeOverride, lightThemeOverride)
	return makeTheme(componentsFolder, LibraryTheme, baseTheme)()
end

function Theme.mock(themeOverride)
	local baseTheme = StudioTheme.mock(themeOverride)
	return makeTheme(componentsFolder, LibraryTheme, baseTheme)()
end

return Theme
