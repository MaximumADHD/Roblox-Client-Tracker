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

local getFFlagMaterialPickerUIChanges = require(main.Flags.getFFlagMaterialPickerUIChanges)

local LibraryTheme
if getFFlagMaterialPickerUIChanges() then
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
	LibraryTheme = {
		-- Global styles that apply to the entire library
		[ui.Button] = button,
	}
else
	LibraryTheme = {
		-- Global styles that apply to the entire library
	}
end

local Theme = {}

function Theme.new(darkThemeOverride, lightThemeOverride)
	local baseTheme = StudioTheme.new(darkThemeOverride, lightThemeOverride)
	local getTheme = makeTheme(componentsFolder, LibraryTheme, baseTheme)
	return getTheme()
end

function Theme.mock(themeOverride)
	local baseTheme = StudioTheme.mock(themeOverride)
	local getTheme = makeTheme(componentsFolder, LibraryTheme, baseTheme)
	return getTheme()
end

return Theme
