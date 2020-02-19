local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local Framework = Plugin.Packages.Framework
local ContextServices = require(Framework.ContextServices)
local Theme = ContextServices.Theme

local StudioUI = require(Framework.StudioUI)
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local Util = require(Framework.Util)
local StyleTable = Util.StyleTable
local Style = Util.Style
local StyleModifier = Util.StyleModifier

local UI = require(Framework.UI)
local Decoration = UI.Decoration

local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style
local Spritesheet = UILibrary.Util.Spritesheet

local function createStyles(theme, getColor)
	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local studioStyles = StudioFrameworkStyles.new(theme, getColor)

	local arrowSpritesheet = Spritesheet("rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", {
		SpriteSize = 12,
		NumSprites = 4,
	})
	local rightArrowProps = arrowSpritesheet[2]
	local leftArrowProps = arrowSpritesheet[4]

	local button = StyleTable.new("Button", function()
		-- Defining a new button style that uses images
		local TopBarButton = Style.new({
			Background = Decoration.Box,
			BackgroundStyle = {
				Color = theme:GetColor(c.MainBackground),
				BorderColor = Color3.fromRGB(0, 0, 0),
				BorderSize = 1,
			},
			Foreground = Decoration.Image,
			ForegroundStyle = {
				Color = theme:GetColor(c.MainText),
			},
			[StyleModifier.Hover] = {
				BackgroundStyle = {
					Color = theme:GetColor(c.Button, m.Hover),
				},
			},

			[StyleModifier.Disabled] = {
				ForegroundStyle = {
					Color = theme:GetColor(c.MainText, m.Disabled),
				},
			},
		})

		local OverlayButton = Style.extend(TopBarButton, {
			ForegroundStyle = Style.extend(TopBarButton.ForegroundStyle, {
				Image = "rbxasset://textures/StudioSharedUI/menu.png",
			})
		})

		local PreviousButton = Style.extend(TopBarButton, {
			ForegroundStyle = Style.extend(TopBarButton.ForegroundStyle, Cryo.Dictionary.join(leftArrowProps, {
				Size = UDim2.new(0, 10, 0, 10),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			}))
		})

		local NextButton = Style.extend(TopBarButton, {
			ForegroundStyle = Style.extend(TopBarButton.ForegroundStyle, Cryo.Dictionary.join(rightArrowProps, {
				Size = UDim2.new(0, 10, 0, 10),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
			}))
		})

		return {
			OverlayButton = OverlayButton,
			PreviousButton = PreviousButton,
			NextButton = NextButton,
		}
	end)

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

				BorderColor = Color3.fromRGB(0, 0, 0),

				Button = {
					Size = 24,
				},

				Padding = 15,
			},
		},

		Framework = Style.extend(studioStyles, {
				Button = button,
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