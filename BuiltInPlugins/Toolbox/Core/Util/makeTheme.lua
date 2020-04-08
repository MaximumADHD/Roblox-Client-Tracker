local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs

local UILibrary = require(Libs.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

local ContextServices = require(Libs.Framework.ContextServices)
local StudioUI = require(Libs.Framework.StudioUI)
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local Theme = ContextServices.Theme

local Util = Plugin.Core.Util
local Colors = require(Util.Colors)
local Images = require(Util.Images)
local Constants = require(Util.Constants)

local ToolboxTheme = {}
ToolboxTheme.__index = ToolboxTheme

local function createValues(theme, getColor)
	local c = Enum.StudioStyleGuideColor

	return {
		Plugin = {
			backgroundColor = theme:GetColor(c.InputFieldBackground),
			progressBarColor = Colors.BLUE_PRIMARY,
		},
		Framework = StudioFrameworkStyles.new(theme, getColor),
	}
end

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

local function makeTheme(uiLibraryDeprecatedTheme)
	local theme = Theme.new(createValues)
	function theme:getUILibraryTheme()
		return getUILibraryTheme(uiLibraryDeprecatedTheme)
	end

	return theme
end

return makeTheme