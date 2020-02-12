local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local Theme = ContextServices.Theme
local StudioUI = require(Framework.StudioUI)
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles
local Style = require(Framework.Util).Style

local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

local function createStyles(theme, getColor)
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
			FontBold = Enum.Font.SourceSansSemibold,

			Overlay = {
				Background = {
					WidthScale = -0.25,
					Transparency = 0.75,
				},

				Foreground = {
					WidthScale = 0.75,
				},

				CloseButton = {
					Size = 16,

					Images = {
						Close = "rbxasset://textures/StudioSharedUI/close.png",
					},
				},

				Padding = {
					Right = 11,
				}
			},

			TopBar = {
				Height = 53,

				BorderColor = Color3.fromRGB(75, 75, 75),

				Button = {
					Size = 24,
				},

				Padding = {
					Left = 15,
					Right = 20,
				},
			},
		},

		Framework = Style.extend(StudioFrameworkStyles.new(theme, getColor), {
			RoundBox = {
				AssetManagerMenu = {
					BackgroundImage = "rbxasset://textures/ui/Settings/Radial/Menu.png",
					BorderColor = Color3.fromRGB(151, 151, 151),
					BorderImage = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
					BorderTransparency = 0,
					SliceCenter = Rect.new(3, 3, 13, 13),
					Transparency = 0,
				},
			}
		}),
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

local function getTheme()
	return settings().Studio.Theme
end

local PluginTheme = {}

function PluginTheme.makePluginTheme()
	local theme = Theme.new(createStyles)
	function theme:getUILibraryTheme()
		return getUILibraryTheme()
	end

	return theme
end

function PluginTheme.mock()
	local theme = Theme.mock(createStyles, getTheme)
	function theme:getUILibraryTheme()
		return getUILibraryTheme()
	end
	return theme
end

return PluginTheme