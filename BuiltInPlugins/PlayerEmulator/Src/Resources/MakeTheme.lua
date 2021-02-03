local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local Theme = ContextServices.Theme
local StudioTheme = Framework.Style.Themes.StudioTheme
local Stylizer = ContextServices.Stylizer
local StyleKey = Framework.Style.StyleKey
local Util = Framework.Util
local StyleValue = Util.StyleValue

local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style
local Spritesheet = UILibrary.Util.Spritesheet

local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local function getUILibraryTheme(theme, styleRoot)
	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local UILibraryPalette = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, c, m)

	local UILibraryOverrides = {
		checkBox = {
			font = Enum.Font.Arial,
		}
	}

	local styleKeysTable = Stylizer:getStyleKeysTable(styleRoot)
	UILibraryOverrides = Stylizer:convertStyleKeys(UILibraryOverrides, nil, nil, styleKeysTable)

	return createTheme(UILibraryPalette, UILibraryOverrides)
end

local function themeExtended()
	local arrowDimension = 12

	local arrowSpritesheet = Spritesheet("rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", {
		SpriteSize = arrowDimension,
		NumSprites = 4,
	})

	local arrow = {
		rightArrowImage = arrowSpritesheet[1],
		downArrowImage = arrowSpritesheet[3],
		dimension = arrowDimension,
	}

	local pluginTheme = {
		Arrow = arrow,
		BackgroundColor = StyleKey.MainBackground,
		ButtonColor = StyleKey.MainBackground,
		HoverColor = StyleKey.ButtonHover,
		PressedColor = StyleKey.ButtonPressed,
		BorderColor = StyleKey.Border,
		TextColor = StyleKey.MainText,
		ErrorColor = StyleKey.ErrorText,
		LinkColor = StyleKey.LinkText,
		Green = Color3.fromRGB(64, 166, 81),
		White = Color3.fromRGB(255, 255, 255),
		DisabledColor = StyleKey.MainTextDisabled,
	}

	local sectionWidth = 300
	local rowHeight = 25
	local constants = {
		ROW_HEIGHT = 25,

		MAINVIEW_PADDING_TOP = UDim.new(0, 15),
		MAINVIEW_PADDING_LEFT = UDim.new(0, 10),
		MAINSWITCH_LABEL_SIZE = UDim2.new(0, 150, 0, rowHeight),
		SECTION_LABEL_SIZE = UDim2.new(0, 50, 0, rowHeight),
		TEXT_INDENT_PADDING = UDim.new(0, 4),
		HORIZONTAL_LISTLAYOUT_PADDING = UDim.new(0, 5),

		DROPDOWN_BUTTON_SIZE = UDim2.new(0, 170, 0, rowHeight),
		DROPDOWN_ARROW_IMAGE = "rbxasset://textures/menuDownArrow.png",
		DROPDOWN_ARROW_POSITION = UDim2.new(1, -15, 0.5, 0),
		DROPDOWN_ARROW_SIZE = UDim2.new(0, 5, 0, 3),
		SELECTOR_SIZE = UDim2.new(0,sectionWidth,0,30),
		DROPDOWN_MAX_HEIGHT = 8 * rowHeight,
		SCROLLBAR_THICKNESS = 10,

		LANGUAGE_SECTION_SIZE = UDim2.new(0,sectionWidth,0,50),
		LANGUAGE_INSTRUCTION_SIZE = UDim2.new(0,sectionWidth,0,20),
		LOCALEID_TEXTBOX_SIZE = UDim2.new(0, 50, 0, rowHeight),

		TOGGLE_ITEM_FRAME_SIZE = UDim2.new(0, sectionWidth, 0, rowHeight),
		TOGGLE_ITEM_LABEL_SIZE = UDim2.new(0, 200, 0, rowHeight),
		TOGGLE_BUTTON_HEIGHT = 15,
		TOGGLE_BUTTON_WIDTH = 25,
		TOGGLE_BUTTON_OFFSET = 255,

		COLLAPSE_ARROW_OFFSET = 265,

		LISTITEM_INDENT_LEFT = UDim.new(0, 20),
		LISTITEM_CHECKBOX_HEIGHT = 18,

		CHECKBOX_FRAME_SIZE = UDim2.new(1,0,0,20),
		CHECKBOX_HEIGHT = 18,
		CHECKBOX_TEXT_SIZE = 11,
	}

	return Cryo.Dictionary.join(pluginTheme, constants)
end


local function DEPRECATED_createValues(theme)
	-- TODO: Replace with actual getColor from the DevFramework
	-- when the Palette becomes available
	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local toggle
	if not THEME_REFACTOR then
		local themeName = theme.Name

		local ToggleOn = StyleValue.new("ToggleOn", {
			Light = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
			Dark = "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png",
		})

		local ToggleOff = StyleValue.new("ToggleOff", {
			Light = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
			Dark = "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png",
		})

		toggle = {
			On = ToggleOn:get(themeName),
			Off = ToggleOff:get(themeName),
		}
	end

	local arrowDimension = 12

	local arrowSpritesheet = Spritesheet("rbxasset://textures/StudioSharedUI/arrowSpritesheet.png", {
		SpriteSize = arrowDimension,
		NumSprites = 4,
	})

	local arrow = {
		rightArrowImage = arrowSpritesheet[1],
		downArrowImage = arrowSpritesheet[3],
		dimension = arrowDimension,
	}

	local pluginTheme = {
		Toggle = toggle,
		Arrow = arrow,
		BackgroundColor = theme:GetColor(c.MainBackground),
		ButtonColor = theme:GetColor(c.MainBackground),
		HoverColor = theme:GetColor(c.Button, m.Hover),
		PressedColor = theme:GetColor(c.MainBackground),
		BorderColor = theme:GetColor(c.Border),
		TextColor = theme:GetColor(c.MainText),
		ErrorColor = theme:GetColor(c.ErrorText),
		LinkColor = theme:GetColor(c.LinkText),
		Green = Color3.fromRGB(64, 166, 81),
		White = Color3.fromRGB(255, 255, 255),
		DisabledColor = theme:GetColor(c.MainText, m.Disabled),
	}

	local sectionWidth = 300
	local rowHeight = 25
	local constants = {
		ROW_HEIGHT = 25,

		MAINVIEW_PADDING_TOP = UDim.new(0, 15),
		MAINVIEW_PADDING_LEFT = UDim.new(0, 10),
		MAINSWITCH_LABEL_SIZE = UDim2.new(0, 150, 0, rowHeight),
		SECTION_LABEL_SIZE = UDim2.new(0, 50, 0, rowHeight),
		TEXT_INDENT_PADDING = UDim.new(0, 4),
		HORIZONTAL_LISTLAYOUT_PADDING = UDim.new(0, 5),

		DROPDOWN_BUTTON_SIZE = UDim2.new(0, 170, 0, rowHeight),
		DROPDOWN_ARROW_IMAGE = "rbxasset://textures/menuDownArrow.png",
		DROPDOWN_ARROW_POSITION = UDim2.new(1, -15, 0.5, 0),
		DROPDOWN_ARROW_SIZE = UDim2.new(0, 5, 0, 3),
		SELECTOR_SIZE = UDim2.new(0,sectionWidth,0,30),
		DROPDOWN_MAX_HEIGHT = 8 * rowHeight,
		SCROLLBAR_THICKNESS = 10,

		LANGUAGE_SECTION_SIZE = UDim2.new(0,sectionWidth,0,50),
		LANGUAGE_INSTRUCTION_SIZE = UDim2.new(0,sectionWidth,0,20),
		LOCALEID_TEXTBOX_SIZE = UDim2.new(0, 50, 0, rowHeight),

		TOGGLE_ITEM_FRAME_SIZE = UDim2.new(0, sectionWidth, 0, rowHeight),
		TOGGLE_ITEM_LABEL_SIZE = UDim2.new(0, 200, 0, rowHeight),
		TOGGLE_BUTTON_HEIGHT = 15,
		TOGGLE_BUTTON_WIDTH = 25,
		TOGGLE_BUTTON_OFFSET = 255,

		COLLAPSE_ARROW_OFFSET = 265,

		LISTITEM_INDENT_LEFT = UDim.new(0, 20),
		LISTITEM_CHECKBOX_HEIGHT = 18,

		CHECKBOX_FRAME_SIZE = UDim2.new(1,0,0,20),
		CHECKBOX_HEIGHT = 18,
		CHECKBOX_TEXT_SIZE = 11,
	}

	if not THEME_REFACTOR then
		constants.TOOLBAR_ICON_PATH = "rbxasset://textures/StudioPlayerEmulator/player_emulator_32.png"
		constants.PLUGIN_WINDOW_SIZE = Vector2.new(300, 320)
		constants.PLUGIN_WINDOW_SIZE_MIN = Vector2.new(150, 150)
	end

	return {
		Plugin = Cryo.Dictionary.join(pluginTheme, constants),
	}
end

local function DEPRECATED_getUILibraryTheme()
	local theme = settings().Studio.Theme
	local themeName = theme.Name

	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local UILibraryPalette = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, c, m)

	local BaseColor = StyleValue.new("BaseColor", {
		Light = Color3.fromRGB(184, 184, 184),
		Dark = Color3.fromRGB(56, 56, 56),
	})

	local EndColor = StyleValue.new("EndColor", {
		Light = Color3.fromRGB(0, 162, 255),
		Dark = Color3.fromRGB(11, 90, 175),
	})

	local UILibraryOverrides = {
		loadingIndicator = {
			baseColor = BaseColor:get(themeName),
			endColor = EndColor:get(themeName),
		},
		button = {
			Default = {
				backgroundColor = theme:GetColor(c.Button),
				hovered = {
					backgroundColor = theme:GetColor(c.Button, m.Hover),
				},
			},

			Primary = {
				backgroundColor = theme:GetColor(c.DialogMainButton),

				hovered = {
					backgroundColor = theme:GetColor(c.DialogMainButton, m.Hover),
				},
			},
		},
		checkBox = {
			font = Enum.Font.Arial,
		}
	}

	return createTheme(UILibraryPalette, UILibraryOverrides)
end

local function makeTheme()
	if THEME_REFACTOR then
		local theme = settings().Studio.Theme
		local styleRoot = StudioTheme.new()
		local extended = themeExtended()
		styleRoot:extend(extended)
		function styleRoot:getUILibraryTheme()
			return getUILibraryTheme(theme, styleRoot)
		end
		return styleRoot
	else
		local theme = Theme.new(DEPRECATED_createValues)
		function theme:getUILibraryTheme()
			return DEPRECATED_getUILibraryTheme()
		end
		return theme
	end
end

return makeTheme
