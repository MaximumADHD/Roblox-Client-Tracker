local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local Theme = ContextServices.Theme
local Util = require(Plugin.Packages.Framework.Util)
local StyleValue = Util.StyleValue

local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

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

	local pluginTheme = {
		Toggle = toggle,
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
	local constants = {
		TOOLBAR_ICON_PATH = "rbxasset://textures/StudioPlayerEmulator/player_emulator_32.png",
		PLUGIN_WINDOW_SIZE = Vector2.new(300, 600),
		PLUGIN_WINDOW_SIZE_MIN = Vector2.new(150, 150),

		MAINVIEW_PADDING_TOP = UDim.new(0, 15),
		MAINVIEW_PADDING_LEFT = UDim.new(0, 10),
		SECTION_LABEL_SIZE = UDim2.new(0, 50, 0, 25),
		DROPDOWN_BUTTON_SIZE = UDim2.new(0, 170, 0, 25),
		HORIZONTAL_LISTLAYOUT_PADDING = UDim.new(0, 5),
		SELECTOR_SIZE = UDim2.new(0,sectionWidth,0,30),
		LANGUAGE_SECTION_SIZE = UDim2.new(0,sectionWidth,0,50),
		LANGUAGE_INSTRUCTION_SIZE = UDim2.new(0,sectionWidth,0,20),
		TEXT_INDENT_PADDING = UDim.new(0, 4),
		DROPDOWN_MAX_HEIGHT = 8 * 25,
		LOCALEID_TEXTBOX_SIZE = UDim2.new(0, 50, 0, 25),
		SCROLLBAR_THICKNESS = 10,
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
