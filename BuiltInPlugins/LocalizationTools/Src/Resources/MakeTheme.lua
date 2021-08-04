--[[
	Creates the theme for the plugin.
	Extends the default StudioFrameworkStyles, and also defines values specific
	to components created within this plugin and constant values shared across components.
]]

local Plugin = script.Parent.Parent.Parent

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local Theme = ContextServices.Theme

local Util = require(Plugin.Packages.Framework).Util
local StyleTable = Util.StyleTable
local Style = Util.Style
local StyleModifier = Util.StyleModifier
local StyleValue = Util.StyleValue

local UI = require(Plugin.Packages.Framework).UI
local Decoration = UI.Decoration
local StudioUI = require(Plugin.Packages.Framework).StudioUI
local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

local function makeTheme()
	local theme = Theme.new(function(theme, getColor)
		local studioFrameworkStyles = StudioFrameworkStyles.new(theme, getColor)
		local button = StyleTable.new("Button", function()
			local buttonBase = Style.new({
				Background = Decoration.Box,
				BackgroundStyle = {
					Color = theme:GetColor("Button"),
					BorderColor = theme:GetColor("Border"),
					BorderSize = 1,
				},
			})

			local textButton = Style.extend(buttonBase, {
				TextColor = theme:GetColor("BrightText"),
				[StyleModifier.Hover] = {
					BackgroundStyle = {
						Color = theme:GetColor("Button", "Hover"),
					},
				},
			})

			local disabledTextButton = Style.extend(buttonBase, {
				TextColor = theme:GetColor("DimmedText"),
			})

			local primeTextButton = Style.extend(buttonBase, {
				TextColor = theme:GetColor("DialogMainButtonText"),
				BackgroundStyle = {
					Color = theme:GetColor("DialogMainButton"),
					BorderColor = theme:GetColor("Border"),
					BorderSize = 1,
				},
				[StyleModifier.Hover] = {
					BackgroundStyle = {
						Color = theme:GetColor("DialogMainButton", "Hover"),
					},
				},
			})

			return {
				TextButton = textButton,
				DisabledTextButton = disabledTextButton,
				PrimeTextButton = primeTextButton,
			}
		end)

		local linkText = StyleTable.new("LinkText", function()
			local linkText = Style.new({
				EnableHover = true,
				Font = Enum.Font.SourceSans,
				TextColor = theme:GetColor("LinkText"),
				TextSize = 16,
			})
			return {
				Default = linkText,
			}
		end)

		local progressSpinnerImage = StyleValue.new("ProgressSpinnerImage", {
			Light = "rbxasset://textures/LightThemeLoadingCircle.png",
			Dark = "rbxasset://textures/DarkThemeLoadingCircle.png",
		})

		return {
			Framework = StyleTable.extend(studioFrameworkStyles, {
				Button = button,
				LinkText = linkText,
			}),

			Plugin = {
				PluginIcon = "rbxasset://textures/localizationTestingIcon.png",
				WindowSize = Vector2.new(300, 250),
				DialogSize = Vector2.new(300, 370),
			},
			MainView = {
				EmptyFrameHeight = 1000,
				MainBackground = theme:GetColor("MainBackground"),
				Padding = 5,
				PaddingRight = 20,
				PaddingTop = 10,
				ScrollBarBorderColor = theme:GetColor("Border"),
				ScrollBarColor = theme:GetColor("ScrollBar"),
				ScrollingFrameackground = theme:GetColor("ScrollBarBackground"),
				ScrollingFrameCanvasHeight = 450,
				ScrollingFrameHeight = -20,
			},
			MessageFrame = {
				BackgroundColor = theme:GetColor("RibbonTab"),
				BorderColor = theme:GetColor("Border"),
				Height = 20,
				Padding = 5,
				TextColor = theme:GetColor("BrightText"),
			},
			CloudTableSection = {
				LeftIndent = 15,
				MessageFrameBackground = theme:GetColor("MainBackground"),
				MessageFrameBorder = theme:GetColor("Border"),
				PaddingTop = 5,
				SectionLabelSize = 20,
				SectionLabelTextSize = 10,
				TextColor = theme:GetColor("BrightText"),
				LinkTextHeight = 50,
				PublishMessageHeight = 150,
			},
			ProgressSpinner = {
				ImageRectSize = 80,
				ProgressSpinnerImageUrl = progressSpinnerImage:get(theme.Name),
				Size = 81,
			},
			LabeledTextButton = {
				ButtonWidth = 100,
				ButtonHeight = 35,
				Height = 50,
				LabelWidth = 210,
				TextColor = theme:GetColor("BrightText"),
				DisabledTextColor = theme:GetColor("DimmedText"),
			},
			Collapsible = {
				DisabledTextColor = theme:GetColor("DimmedText"),
				IconSize = 16,
				IconColor = theme:GetColor("BrightText"),
				IconImageOpen = "rbxasset://textures/collapsibleArrowDown.png",
				IconImageClosed = "rbxasset://textures/collapsibleArrowRight.png",
				TextColor = theme:GetColor("BrightText"),
				TopBarHeight = 24,
			},
			EmbeddedTableSection = {
				ExportButtonImage = "rbxasset://textures/localizationExport.png",
				ImportButtonImage = "rbxasset://textures/localizationImport.png",
				LeftIndent = 15,
				PaddingTop = 5,
				SectionLabelSize = 20,
				SectionLabelTextSize = 10,
				TextColor = theme:GetColor("BrightText"),
				TextCaptureButtonImage = {
					On = "rbxasset://textures/localizationUIScrapingOn.png",
					Off = "rbxasset://textures/localizationUIScrapingOff.png",
				},
			},
			LabeledImageButton = {
				BackgroundColor = theme:GetColor("Button"),
				BackgroundColorHovered = theme:GetColor("Button", "Hover"),
				Height = 50,
				ImageButtonSize = 50,
				ImageLabelSize = 30,
				LabelWidth = 260,
				TextColor = theme:GetColor("BrightText"),
				DisabledTextColor = theme:GetColor("DimmedText"),
				TextLabelSize = 20,
				TextLabelTextSize = 6,
			},
			UploadDialogContent = {
				BrightText = theme:GetColor("BrightText"),
				DimmedText = theme:GetColor("DimmedText"),
				ErrorText = theme:getColor("ErrorText"),
				WarningText = theme:getColor("WarningText"),
				Padding = 15,
				PatchInfoFrameHeight = 290,
				TableContentsFrameHeight = 90,
				TableContentPaddingLeft = 30,
				TableContentPaddingTop = 5,
				ThisPatchWIllFrameHeight = 130,
				ButtonFrameHeight = 40,
				ButtonWidth = 100,
				ButtonHeight = 35,
				BorderColor = theme:GetColor("Border"),
				MainBackground = theme:GetColor("MainBackground"),
				MainButton = theme:GetColor("MainButton"),
			}
		}
	end)

	return theme
end

return makeTheme
