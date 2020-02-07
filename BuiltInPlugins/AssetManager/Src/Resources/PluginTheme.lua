local Plugin = script.Parent.Parent.Parent
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local StudioUI = require(Plugin.Packages.Framework.StudioUI)
local Util = require(Plugin.Packages.Framework.Util)
local Theme = ContextServices.Theme
local StyleValue = Util.StyleValue
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local UILibrary = require(Plugin.Packages.UILibrary)
local StudioTheme = UILibrary.Studio.Theme
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

local function createValues(theme, getColor)
	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	return {
		Plugin = {
			BackgroundColor = theme:GetColor(c.MainBackground),
			ButtonColor = theme:GetColor(c.Button),
			ProgressBarColor = theme:GetColor(c.DialogMainButton, m.Selected),
			HoverColor = theme:GetColor(c.Button, m.Hover),
			BorderColor = theme:GetColor(c.Border),
			SubTextColor = theme:GetColor(c.SubText),
			InfoTextColor = theme:GetColor(c.DimmedText),
			TextColor = theme:GetColor(c.MainText),
			ErrorColor = theme:GetColor(c.ErrorText),
			LinkColor = theme:GetColor(c.LinkText),
			Green = Color3.fromRGB(64, 166, 81),
			White = Color3.fromRGB(255, 255, 255),
			DisabledColor = theme:GetColor(c.MainText, m.Disabled),
			ScrollbarTransparency = 0.7,
			ScrollbarSize = 8,
			Font = Enum.Font.SourceSans,
            FontBold = Enum.Font.SourceSansSemibold
		},

		Framework = StudioFrameworkStyles.new(theme, getColor),
	}
end

local function getUILibraryTheme()
	local theme = settings().Studio.Theme

	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local UILibraryPalette = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, c, m)

	local UILibraryOverrides = {

	}

	return createTheme(UILibraryPalette, UILibraryOverrides)
end


local function createDummyValues(getColor, c, m)
	return {
		PluginTheme = {},
		UILibraryStylePalette = {},
		UILibraryOverrides = {},
	}
end

local PluginTheme = {}

function PluginTheme.makePluginTheme()
	local theme = Theme.new(createValues)
	function theme:getUILibraryTheme()
		return getUILibraryTheme()
	end

	return theme
end

function PluginTheme.mock()
	return StudioTheme.newDummyTheme(createDummyValues)
end

return PluginTheme