--[[
	This file is essentially deprecated.
	The terrain tools originally used UI library, but was ported to use developer framework.
	How components handle theme wasn't ported, so this file exists as legacy for those components.
	New components should prefer to use makeTheme.lua where possible instead.
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)

local UILibraryCompat = Plugin.Src.UILibraryCompat
local StudioTheme = require(UILibraryCompat.StudioTheme)
local StudioStyle = require(UILibraryCompat.StudioStyle)

local deepJoin = Framework.Util.deepJoin

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local Theme = {}

local ColorSheet = {
	buttonColor = Color3.fromRGB(0, 162, 255),
	buttonHover = Color3.fromRGB(50, 181, 255),
	buttonPressed = Color3.fromRGB(0, 116, 189),

	buttonColorDisabled = Color3.fromRGB(153, 218, 255),
	buttonColorDisabled_Dark = Color3.fromRGB(60, 60, 60),

	buttonTextColor = Color3.fromRGB(255, 255, 255),

	buttonTextDisabled_Dark = Color3.fromRGB(102, 102, 102),

	borderColor_dark = Color3.fromRGB(26, 26, 26),
	errorColor = Color3.fromRGB(216, 104, 104),

	panelColor = Color3.fromRGB(240, 240, 240),
	panelColor_dark = Color3.fromRGB(53, 53, 53), -- used in panel
	textBox_dark = Color3.fromRGB(37, 37, 37),

	singleSelectButtonSelected = Color3.fromRGB(219, 219, 219),
	singleSelectButtonSelected_dark = Color3.fromRGB(85, 85, 85),
	singleSelectButtonHovered = Color3.fromRGB(228, 238, 253), -- TODO: Get final light theme hover from design
	singleSelectButtonHovered_dark = Color3.fromRGB(63, 63, 63),

	propertyLockPaperclipColor = Color3.fromRGB(151, 151, 151),
	propertyLockIconBackgroundHover = Color3.fromRGB(228, 238, 254),
	propertyLockIconBackgroundHover_dark = Color3.fromRGB(163, 162, 165),
	propertyLockIconBorderHover = Color3.fromRGB(219, 219, 219),
	propertyLockIconBorderHover_dark = Color3.fromRGB(227, 227, 227),
}

local function getStudioTheme()
	-- settings doesn't exist in CLI so have to mock a theme
	if DebugFlags.RunningUnderCLI() then
		return {
			Name = "Light",
		}
	end

	return settings().Studio.Theme
end

-- getColor : function<Color3>(color enum)
-- c = Enum.StudioStyleGuideColor
-- m = Enum.StudioStyleGuideModifier
function Theme.createValues(getColor, c, m)
	local theme = getStudioTheme()

	local function defineTheme(defaults, overrides)
		local override = overrides and overrides[theme.Name]
		if override then
			return Cryo.Dictionary.join(defaults, override)
		else
			return defaults
		end
	end

	-- define the color palette for the UILibrary, override where necessary
	local UILibraryStylePalette = StudioStyle.new(getColor, c, m)

	local roundedBorderImage = "rbxasset://textures/StudioToolbox/RoundedBorder.png"
	local roundedBackgroundImage = "rbxasset://textures/StudioToolbox/RoundedBackground.png"
	local roundedElementSlice = Rect.new(3, 3, 13, 13)

	local toggleTheme = defineTheme({
		toggleOnImage = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
		toggleOffImage = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",

		toggleLockModeOnImage = "rbxasset://textures/RoactStudioWidgets/toggle_on_disable_light.png",
		toggleLockModeOffImage = "rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png",
	}, {
		Dark = {
			toggleOnImage = "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png",
			toggleOffImage = "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png",

			toggleLockModeOnImage = "rbxasset://textures/RoactStudioWidgets/toggle_on_disable_dark.png",
			toggleLockModeOffImage = "rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png",
		}
	})

	local brushSettingsTheme = defineTheme({
		sphereBrushImage = "rbxasset://textures/TerrainTools/icon_shape_sphere.png",
		cubeBrushImage = "rbxasset://textures/TerrainTools/icon_shape_cube.png",
		cylinderBrushImage = "rbxasset://textures/TerrainTools/icon_shape_cylinder.png",

		flattenBothImage = "rbxasset://textures/TerrainTools/icon_flatten_both.png",
		flattenErodeImage = "rbxasset://textures/TerrainTools/icon_flatten_erode.png",
		flattenGrowImage = "rbxasset://textures/TerrainTools/icon_flatten_grow.png",

		pickHeightEnableImage = "rbxasset://textures/TerrainTools/icon_picker_enable.png",
		pickHeightDisableImage = "rbxasset://textures/TerrainTools/icon_picker_disable.png",
	}, {
		Dark = {
			pickHeightDisableImage = "rbxasset://textures/TerrainTools/icon_picker_disable_dark.png",
		}
	})

	local panelTheme = defineTheme({
		closeIcon = "rbxasset://textures/TerrainTools/button_arrow.png",
		openIcon = "rbxasset://textures/TerrainTools/button_arrow_down.png",
		panelColor = ColorSheet.panelColor,
		font = Enum.Font.SourceSansBold,
		textSize = 18,
	},{
		Dark = {
			panelColor = ColorSheet.panelColor_dark,
		}
	})

	local roundTextButtonTheme = defineTheme({
		styleSheet = {
			ButtonColor = ColorSheet.buttonColor,
			ButtonColor_Hover = ColorSheet.buttonHover,
			ButtonColor_Disabled = ColorSheet.buttonColorDisabled,
			TextColor = ColorSheet.buttonTextColor,
			TextColor_Disabled = ColorSheet.buttonTextColor,
			BorderColor = UILibraryStylePalette.borderColor,
		},

		textSize = 16,
		textBoxColor = UILibraryStylePalette.backgroundColor,
	}, {
		Dark = {
			styleSheet = {
				ButtonColor = ColorSheet.buttonColor,
				ButtonColor_Hover = ColorSheet.buttonHover,
				ButtonColor_Disabled = ColorSheet.buttonColorDisabled_Dark,
				TextColor = ColorSheet.buttonTextColor,
				TextColor_Disabled = ColorSheet.buttonTextDisabled_Dark,
				BorderColor = ColorSheet.borderColor_dark,
			},
			textBoxColor = ColorSheet.textBox_dark,
		}
	})

	local roundToggleTextButtonTheme = defineTheme({
		styleSheet = {
			ButtonColor = Color3.fromRGB(255, 255, 255),
			ButtonColor_Hover = Color3.fromRGB(228, 238, 253),
			TextColor = ColorSheet.textBox_dark,
			BorderColor = UILibraryStylePalette.borderColor,
		},

		styleSheetNotToggled = {
			ButtonColor = Color3.fromRGB(219, 219, 219),
			ButtonColor_Hover = Color3.fromRGB(239, 239, 239),
			TextColor = ColorSheet.textBox_dark,
			BorderColor = UILibraryStylePalette.borderColor,
		},

		textSize = 14,
		textBoxColor = UILibraryStylePalette.backgroundColor,
	}, {
		Dark = {
			styleSheet = {
				ButtonColor = Color3.fromRGB(85, 85, 85),
				ButtonColor_Hover = Color3.fromRGB(55, 55, 55),
				TextColor = ColorSheet.buttonTextColor,
				BorderColor = UILibraryStylePalette.borderColor,
			},

			styleSheetNotToggled = {
				ButtonColor = Color3.fromRGB(35, 35, 35),
				ButtonColor_Hover = Color3.fromRGB(45, 45, 45),
				TextColor = ColorSheet.buttonTextColor,
				BorderColor = UILibraryStylePalette.borderColor,
			},

			textBoxColor = UILibraryStylePalette.backgroundColor,
		}
	})

	local singleSelectButtonGroupTheme = defineTheme({
		roundedBorderImage = roundedBorderImage,
		roundedBackgroundImage = roundedBackgroundImage,
		roundedElementSlice = roundedElementSlice,

		buttonSelectedColor = ColorSheet.singleSelectButtonSelected,
		buttonHoveredColor = ColorSheet.singleSelectButtonHovered,
	}, {
		Dark = {
			buttonSelectedColor = ColorSheet.singleSelectButtonSelected_dark,
			buttonHoveredColor = ColorSheet.singleSelectButtonHovered_dark,
		}
	})

	local propertyLockTheme = defineTheme({
		lockedIcon = "rbxasset://textures/TerrainTools/locked.png",
		unlockedIcon = "rbxasset://textures/TerrainTools/unlocked.png",
		paperclipColor = ColorSheet.propertyLockPaperclipColor,
		iconBackgroundHover = ColorSheet.propertyLockIconBackgroundHover,
		iconBorderHover = ColorSheet.propertyLockIconBorderHover,
		iconBackgroundHoverTransparency = 0,
	}, {
		Dark = {
			iconBackgroundHover = ColorSheet.propertyLockIconBackgroundHover_dark,
			iconBorderHover = ColorSheet.propertyLockIconBorderHover_dark,
			iconBackgroundHoverTransparency = 0.5,
		}
	})

	local toolRenderTheme = defineTheme({
		scrollTopImage = "rbxasset://textures/StudioToolbox/ScrollBarTop.png",
		scrollMidImage = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png",
		scrollBotImage = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png",
		verticalScrollBarInset = Enum.ScrollBarInset.None,
	})

	local tabBorderSize = 2
	local tabTheme = defineTheme({
		currentTabSize = UDim2.new(1, -tabBorderSize * 2, 1, -tabBorderSize),
		currentTabOffset = UDim2.new(0, tabBorderSize, 0, tabBorderSize),
		otherTabSize = UDim2.new(1, 0, 1, -tabBorderSize),
		otherTabOffset = UDim2.new(0, 0, 0, 0),
	})

	local promptSelectorWithPreviewTheme = defineTheme({
		expandIcon = "rbxasset://textures/StudioSharedUI/preview_expand.png",
		clearIcon = "rbxasset://textures/StudioSharedUI/preview_clear.png",
		importIcon = "rbxasset://textures/StudioSharedUI/import@2x.png",

		previewBackgroundColor = getColor(c.RibbonButton),
		previewHoveredBackgroundColor = getColor(c.RibbonButton, m.Hover),
		previewBorderColor = getColor(c.Border),

		buttonIconColor = Color3.fromRGB(167, 167, 167),
		buttonIconHoveredColor = Color3.fromRGB(254, 254, 254),

		toolbarTransparency = 0.4,
		toolbarBackgroundColor = Color3.fromRGB(0, 0, 0),
		toolbarButtonBackgroundColor = Color3.fromRGB(39, 39, 39),
	}, {
		Dark = {
			buttonIconColor = Color3.fromRGB(167, 167, 167),
			buttonIconHoveredColor = Color3.fromRGB(254, 254, 254),

			toolbarBackgroundColor = Color3.fromRGB(0, 0, 0),
			toolbarButtonBackgroundColor = Color3.fromRGB(39, 39, 39),
		},
	})

	-- In the first part of the move to dev framework, we've had to port some components from UI library
	-- Those components used colours etc. defined inside UI library, so we port them here too

	-- These values come from previous overrides defined in the terrain tools
	local checkBox = defineTheme({
		backgroundColor = Color3.fromRGB(182, 182, 182),
		titleColor = getColor(c.MainText, m.Default),

		backgroundImage = "rbxasset://textures/GameSettings/UncheckedBox.png",
		selectedImage = "rbxasset://textures/GameSettings/CheckedBoxLight.png",
	})

	-- Rest of the values come from UILibrary createTheme.lua and StudioStyle.lua
	local roundFrame = defineTheme({
		slice = Rect.new(3, 3, 13, 13),
		backgroundImage = "rbxasset://textures/StudioToolbox/RoundedBackground.png",
		borderImage = "rbxasset://textures/StudioToolbox/RoundedBorder.png",
	})

	local textButton = defineTheme({
		font = Enum.Font.SourceSans,
	})

	local iconButton = defineTheme({
		resetIcon = "rbxasset://textures/StudioToolbox/AssetConfig/restore.png",

		buttonIconColor = Color3.fromRGB(128, 128, 128),
	}, {
		Dark = {
			buttonIconColor = Color3.fromRGB(204, 204, 204),
		},
	})

	local button = {
		Default = {
			font = UILibraryStylePalette.font,
			isRound = true,

			backgroundColor = UILibraryStylePalette.itemColor,
			textColor = UILibraryStylePalette.textColor,
			borderColor = UILibraryStylePalette.borderColor,

			hovered = {
				backgroundColor = UILibraryStylePalette.hoveredItemColor,
				textColor = UILibraryStylePalette.hoveredTextColor,
				borderColor = UILibraryStylePalette.borderColor,
			},
		},

		Primary = {
			font = UILibraryStylePalette.font,
			isRound = true,

			backgroundColor = UILibraryStylePalette.primaryItemColor,
			textColor = UILibraryStylePalette.primaryTextColor,
			borderColor = UILibraryStylePalette.primaryBorderColor,

			hovered = {
				backgroundColor = UILibraryStylePalette.primaryHoveredItemColor,
				textColor = UILibraryStylePalette.primaryHoveredTextColor,
				borderColor = UILibraryStylePalette.primaryHoveredBorderColor,
			},
		},
	}

	local pluginTheme = deepJoin(UILibraryStylePalette, {
		textSize = 16,
		padding = 4,
		font = Enum.Font.SourceSans,

		errorColor = Color3.fromRGB(216, 104, 104),
		warningColor = Color3.fromRGB(255, 128, 0),
		selectionBorderColor = Color3.fromRGB(0, 162, 255),

		tabTheme = tabTheme,
		toggleTheme = toggleTheme,
		toolRenderTheme = toolRenderTheme,
		brushSettingsTheme = brushSettingsTheme,
		panelTheme = panelTheme,
		roundTextButtonTheme = roundTextButtonTheme,
		roundToggleTextButtonTheme = roundToggleTextButtonTheme,
		singleSelectButtonGroupTheme = singleSelectButtonGroupTheme,
		propertyLockTheme = propertyLockTheme,
		promptSelectorWithPreviewTheme = promptSelectorWithPreviewTheme,

		-- Extras for ui library compatibility
		checkBox = checkBox,
		roundFrame = roundFrame,
		textButton = textButton,
		iconButton = iconButton,
		button = button,
	}, {
		Dark = {
			borderColor = Color3.fromRGB(26, 26, 26),
		}
	})

	return pluginTheme
end

function Theme.new()
	return StudioTheme.new(Theme.createValues)
end

function Theme.mock()
	return StudioTheme.newDummyTheme(Theme.createValues)
end

return Theme
