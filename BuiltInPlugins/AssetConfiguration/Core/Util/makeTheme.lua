local FFlagToolboxUseDevFrameworkDialogs = game:GetFastFlag("ToolboxUseDevFrameworkDialogs")
local FFlagToolboxReplaceUILibraryComponentsPt1 = game:GetFastFlag("ToolboxReplaceUILibraryComponentsPt1")
local FFlagToolboxReplaceUILibraryComponentsPt2 = game:GetFastFlag("ToolboxReplaceUILibraryComponentsPt2")
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")

local Plugin = script.Parent.Parent.Parent

local Images = require(Plugin.Core.Util.Images)
local FFlagRemoveUILibraryFromToolbox = require(Plugin.Core.Util.getFFlagRemoveUILibraryFromToolbox)()

local Libs = Plugin.Libs

local UILibrary = require(Libs.UILibrary)
local createTheme
local StudioStyle
if (not FFlagRemoveUILibraryFromToolbox) then
	createTheme = UILibrary.createTheme
	StudioStyle = UILibrary.Studio.Style
end

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices

local Stylizer = ContextServices.Stylizer

local Util = Plugin.Core.Util
local Colors = require(Util.Colors)
local isCli = require(Util.isCli)
local TestHelpers = require(Util.Test.TestHelpers)

local FrameworkStyle = Framework.Style
local StudioTheme = FrameworkStyle.Themes.StudioTheme
local StyleKey = FrameworkStyle.StyleKey
local StyleColors = FrameworkStyle.Colors
local DarkTheme = require(Libs.Framework).Style.Themes.DarkTheme
local LightTheme = require(Libs.Framework).Style.Themes.LightTheme

local Cryo = require(Plugin.Libs.Cryo)

local function getUILibraryTheme(styleRoot, overrides)
	if FFlagRemoveUILibraryFromToolbox then
		return
	end
	local theme = settings().Studio.Theme

	local styleGuide = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, Enum.StudioStyleGuideColor, Enum.StudioStyleGuideModifier)

	local styleKeysTable = Stylizer:getStyleKeysTable(styleRoot)
	overrides = Stylizer:convertStyleKeys(overrides or {}, nil, nil, styleKeysTable)

	return createTheme(styleGuide, overrides)
end

local makeTheme = function(uiLibraryDeprecatedTheme, themeExtension)
	local styleRoot
	if FFlagToolboxReplaceUILibraryComponentsPt1 or FFlagRemoveUILibraryFromToolbox or FFlagToolboxRemoveWithThemes then
		local overridedDarkTheme = Cryo.Dictionary.join(DarkTheme, {
			[StyleKey.Toolbox_AssetOutlineTransparency] = 0,
			[StyleKey.Toolbox_AssetDropdownSize] = 8,
			[StyleKey.Toolbox_AssetBorderSize] = 1,
			[StyleKey.Toolbox_AssetBackgroundImage] = "",
			[StyleKey.Toolbox_AssetIconColor] = Color3.fromRGB(178, 178, 178),
			[StyleKey.Toolbox_DropdownItemSelectedColor] = StyleColors.Blue_Dark,
			[StyleKey.Toolbox_DropdownIconColor] = StyleColors.White,
			[StyleKey.Toolbox_HorizontalLineColor] = Color3.fromRGB(34, 34, 34),
			[StyleKey.Toolbox_TipsTextColor] = Color3.fromRGB(102, 102, 102),
			[StyleKey.Toolbox_TabTopBorderColor] = StyleColors.Blue,
			[StyleKey.Toolbox_TabSelectedColor] = StyleColors.White,
			[StyleKey.Toolbox_DeleteIconColor] = Color3.fromRGB(136, 136, 136),

		})
		local overridedLightTheme = Cryo.Dictionary.join(LightTheme, {
			[StyleKey.Toolbox_AssetOutlineTransparency] = 0.08,
			[StyleKey.Toolbox_AssetDropdownSize] = 0,
			[StyleKey.Toolbox_AssetBorderSize] = 0,
			[StyleKey.Toolbox_AssetBackgroundImage] = Images.NO_BACKGROUND_ICON,
			[StyleKey.Toolbox_AssetIconColor] = Color3.fromRGB(170, 170, 170),
			[StyleKey.Toolbox_DropdownItemSelectedColor] = StyleColors.Blue_Light,
			[StyleKey.Toolbox_DropdownIconColor] = Color3.fromRGB(25, 25, 25),
			[StyleKey.Toolbox_HorizontalLineColor] = Color3.fromRGB(227, 227, 227),
			[StyleKey.Toolbox_TipsTextColor] = Colors.GRAY_3,
			[StyleKey.Toolbox_TabTopBorderColor] = Color3.fromRGB(182, 182, 182),
			[StyleKey.Toolbox_TabSelectedColor] = StyleColors.Blue,
			[StyleKey.Toolbox_DeleteIconColor] = Color3.fromRGB(184, 184, 184),
		})

		if isCli() then
			styleRoot = StudioTheme.mock(overridedDarkTheme, overridedLightTheme)
		else
			styleRoot = StudioTheme.new(overridedDarkTheme, overridedLightTheme)
		end
	else
		if isCli() then
			styleRoot = StudioTheme.mock()
		else
			styleRoot = StudioTheme.new()
		end
	end

	styleRoot:extend({
		-- TODO: Move colors from ToolboxTheme to here
		backgroundColor = StyleKey.InputFieldBackground,
		progressBarColor = Colors.BLUE_PRIMARY,
		horizontalLineColor = FFlagToolboxReplaceUILibraryComponentsPt1 and StyleKey.Toolbox_HorizontalLineColor or nil,
		link = FFlagToolboxReplaceUILibraryComponentsPt1 and StyleKey.LinkText or nil,
		redText = Color3.fromRGB(255, 68, 68),

		asset = FFlagToolboxRemoveWithThemes and {
			assetName = {
				textColor = StyleKey.LinkText,
			},

			background = {
				color = StyleKey.MainBackground,
				borderSize = StyleKey.Toolbox_AssetBorderSize,
				image = StyleKey.Toolbox_AssetBackgroundImage,
			},

			dropShadowSize = StyleKey.Toolbox_AssetDropdownSize,

			icon = {
				borderColor = StyleKey.ItemHovered,
				buttonColor = StyleKey.Toolbox_AssetIconColor,
			},

			outline = {
				backgroundColor = StyleKey.MainBackground,
				borderColor = StyleKey.Border,
				transparency = StyleKey.Toolbox_AssetOutlineTransparency,
			},

			textColor = StyleKey.MainText,
		} or nil,

		creatorName = FFlagToolboxRemoveWithThemes and {
			textColor = StyleKey.SubText,
		} or nil,

		dropdownMenu = FFlagToolboxRemoveWithThemes and {
			dropdownIconColor = StyleKey.Toolbox_DropdownIconColor,

			currentSelection = {
				backgroundColor = StyleKey.Dropdown,
				backgroundSelectedColor = StyleKey.CurrentMarker,
				borderColor = StyleKey.Border,
				borderSelectedColor = StyleKey.CurrentMarker,
				textColor = StyleKey.MainText,
				textSelectedColor = StyleKey.MainTextSelected,
			},

			item = {
				backgroundColor = StyleKey.Item,
				backgroundSelectedColor = StyleKey.Toolbox_DropdownItemSelectedColor,
				selectedBarColor = StyleKey.CurrentMarker,
				textColor = StyleKey.MainText,
				labelTextColor = StyleKey.DimmedText,
			},

			dropdownFrame = {
				borderColor = StyleKey.Border,
			},
		} or nil,

		header = FFlagToolboxRemoveWithThemes and {
			backgroundColor = StyleKey.Titlebar,
			borderColor = StyleKey.Border,
		} or nil,

		infoBanner = FFlagToolboxRemoveWithThemes and {
			backgroundColor = StyleKey.Titlebar,
			textColor = StyleKey.SubText,
		} or nil,

		linkButton = FFlagToolboxRemoveWithThemes and {
			textColor = Color3.fromRGB(0, 162, 255),
		} or nil,

		assetIcon = FFlagToolboxRemoveWithThemes and {
			buttonColor = StyleKey.Toolbox_AssetIconColor,
		} or nil,

		purchaseDialog = FFlagToolboxUseDevFrameworkDialogs and {
			promptText = StyleKey.MainText,
			balanceText = StyleKey.DimmedText,
		} or nil,

		assetConfig = FFlagToolboxReplaceUILibraryComponentsPt1 and {
			labelTextColor = StyleKey.DimmedText,
		} or nil,

		publishAsset = FFlagToolboxReplaceUILibraryComponentsPt1 and {
			titleTextColor = StyleKey.SubText,
			textColor = StyleKey.MainText,
			tipsTextColor = not isCli() and StyleKey.Toolbox_TipsTextColor or nil,
		} or nil,

		tabSet = FFlagToolboxRemoveWithThemes and {
			backgroundColor = StyleKey.MainBackground,
			borderColor = StyleKey.Border,
			topBorderColor = StyleKey.Toolbox_TabTopBorderColor,
			tabBackground = StyleKey.Titlebar,
			contentColor = StyleKey.TitlebarText,
			selectedColor = StyleKey.Toolbox_TabSelectedColor,
		} or nil,
	})

	if FFlagToolboxReplaceUILibraryComponentsPt2 and themeExtension then
		styleRoot:extend(themeExtension)
	end

	if (not FFlagRemoveUILibraryFromToolbox) then
		if isCli() then
			function styleRoot:getUILibraryTheme()
				local styleGuide = StudioStyle.new(
					function(...)
						return Color3.new()
					end,
					TestHelpers.createMockStudioStyleGuideColor(),
					TestHelpers.createMockStudioStyleGuideModifier()
				)

				return createTheme(styleGuide, {})
			end
		else
			function styleRoot:getUILibraryTheme()
				return getUILibraryTheme(styleRoot, uiLibraryDeprecatedTheme)
			end
		end
	end

	return styleRoot
end

return makeTheme