local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local Theme = ContextServices.Theme
local Util = require(Plugin.Packages.Framework.Util)
local StyleValue = Util.StyleValue

local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style
local Spritesheet = UILibrary.Util.Spritesheet

local function createValues(theme)
	-- TODO: Replace with actual getColor from the DevFramework
	-- when the Palette becomes available
	local themeName = theme.Name
	local c = Enum.StudioStyleGuideColor
	local m = Enum.StudioStyleGuideModifier

	local ToggleOn = StyleValue.new("ToggleOn", {
		Light = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
		Dark = "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png",
	})

	local ToggleOff = StyleValue.new("ToggleOff", {
		Light = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
		Dark = "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png",
	})

	local toggle = {
		On = ToggleOn:get(themeName),
		Off = ToggleOff:get(themeName),
	}

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
		TOOLBAR_ICON_PATH = "rbxasset://textures/StudioPlayerEmulator/player_emulator_32.png",
		PLUGIN_WINDOW_SIZE = Vector2.new(300, 300),
		PLUGIN_WINDOW_SIZE_MIN = Vector2.new(150, 150),

		ROW_HEIGHT = 25,

		MAINVIEW_PADDING_TOP = UDim.new(0, 15),
		MAINVIEW_PADDING_LEFT = UDim.new(0, 10),
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

	return {
		Plugin = Cryo.Dictionary.join(pluginTheme, constants),
	}
end

local function getUILibraryTheme()
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
	local theme = Theme.new(createValues)
	function theme:getUILibraryTheme()
		return getUILibraryTheme()
	end

	return theme
end

return makeTheme
