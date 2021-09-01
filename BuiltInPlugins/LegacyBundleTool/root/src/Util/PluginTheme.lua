local root = script:FindFirstAncestor("root")

local DeveloperFramework = root.lib.DeveloperFramework

local ContextServices = require(DeveloperFramework.ContextServices)
local Theme = ContextServices.Theme

local StudioUI = require(DeveloperFramework.StudioUI)
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local Util = require(DeveloperFramework.Util)
local Style = Util.Style

local UILibrary = require(root.lib.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

local function createStyles(theme, getColor)
	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	return {
		Framework = StudioFrameworkStyles.new(theme, getColor),
		Plugin = Style.extend({
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
		}, {}),
	}
end

local function getUILibraryTheme()
	local theme = settings().Studio.Theme

	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local UILibraryPalette = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, c, m)

	local mainColor = theme:GetColor(Enum.StudioStyleGuideColor.MainBackground)
	local isDark = (mainColor.r + mainColor.g + mainColor.b) / 3 < 0.5

	local UILibraryOverrides = {
		button = {
			LargeHitboxButton = {
				backgroundColor = theme:GetColor(c.MainBackground, m.Default),

				hovered = {
					backgroundColor = theme:GetColor(c.Button, m.Hover),
				},
			},
		},

		textBox = {
			background = theme:GetColor(c.InputFieldBackground),
			disabled = theme:GetColor(c.Tab),
			borderDefault = theme:GetColor(c.Border),
			borderHover = isDark and theme:GetColor(c.MainButton) or theme:GetColor(c.CurrentMarker),
			tooltip = theme:GetColor(c.DimmedText),
			text = theme:GetColor(c.MainText),
		},
	}

	return createTheme(UILibraryPalette, UILibraryOverrides)
end

local PluginTheme = {}

function PluginTheme.makePluginTheme()
	local theme = Theme.new(createStyles)
	function theme:getUILibraryTheme()
		return getUILibraryTheme()
	end
	return theme
end

return PluginTheme
