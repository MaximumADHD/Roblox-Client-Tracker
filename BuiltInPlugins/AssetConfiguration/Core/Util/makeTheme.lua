local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs

local UILibrary = require(Libs.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices
local StudioUI = Framework.StudioUI
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local Theme = ContextServices.Theme
local Stylizer = ContextServices.Stylizer

local Util = Plugin.Core.Util
local Colors = require(Util.Colors)
local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local FrameworkStyle = Framework.Style
local StudioTheme = FrameworkStyle.Themes.StudioTheme
local StyleKey = FrameworkStyle.StyleKey

local ToolboxTheme = {}
ToolboxTheme.__index = ToolboxTheme

local makeTheme
if THEME_REFACTOR then
	local function getUILibraryTheme(styleRoot, overrides)
		local theme = settings().Studio.Theme

		local styleGuide = StudioStyle.new(function(...)
			return theme:GetColor(...)
		end, Enum.StudioStyleGuideColor, Enum.StudioStyleGuideModifier)

		local styleKeysTable = Stylizer:getStyleKeysTable(styleRoot)
		overrides = Stylizer:convertStyleKeys(overrides or {}, nil, nil, styleKeysTable)
		-- TODO: Move colors from ToolboxTheme to here

		return createTheme(styleGuide, overrides)
	end

	makeTheme = function(uiLibraryDeprecatedTheme)
		local styleRoot = StudioTheme.new()
		styleRoot:extend({
			backgroundColor = StyleKey.InputFieldBackground,
			progressBarColor = Colors.BLUE_PRIMARY,
		})
		function styleRoot:getUILibraryTheme()
			return getUILibraryTheme(styleRoot, uiLibraryDeprecatedTheme)
		end
		return styleRoot
	end

else
	local function getUILibraryTheme(overrides)
		local theme = settings().Studio.Theme

		local c = Enum.StudioStyleGuideColor
		local m = Enum.StudioStyleGuideModifier

		local styleGuide = StudioStyle.new(function(...)
			return theme:GetColor(...)
		end, c, m)

		-- TODO: Move colors from ToolboxTheme to here

		return createTheme(styleGuide, overrides)
	end

	local function createValues(theme, getColor)
		local studioStyleGuideColor = Enum.StudioStyleGuideColor

		return {
			Plugin = {
				backgroundColor = theme:GetColor(studioStyleGuideColor.InputFieldBackground),
				progressBarColor = Colors.BLUE_PRIMARY,
			},
			Framework = StudioFrameworkStyles.new(theme, getColor),
		}
	end

	makeTheme = function(uiLibraryDeprecatedTheme)
		local theme = Theme.new(createValues)
		function theme:getUILibraryTheme()
			return getUILibraryTheme(uiLibraryDeprecatedTheme)
		end

		return theme
	end
end

return makeTheme