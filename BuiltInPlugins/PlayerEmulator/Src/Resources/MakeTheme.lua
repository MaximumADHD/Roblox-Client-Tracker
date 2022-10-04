local Plugin = script.Parent.Parent.Parent
local DebugFlags = require(Plugin.Src.Util.DebugFlags)
local Cryo = require(Plugin.Packages.Cryo)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local StudioTheme = Framework.Style.Themes.StudioTheme
local Stylizer = ContextServices.Stylizer
local StyleKey = Framework.Style.StyleKey

local UILibrary = require(Plugin.Packages.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style
local Spritesheet = Framework.Util.Spritesheet

local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateTextLabels = SharedFlags.getFFlagDevFrameworkMigrateTextLabels()

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
		SECTION_LABEL_SIZE = if FFlagDevFrameworkMigrateTextLabels then nil else UDim2.new(0, 50, 0, rowHeight),
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
		TOGGLE_ITEM_LABEL_SIZE = if FFlagDevFrameworkMigrateTextLabels then nil else UDim2.new(0, 200, 0, rowHeight),
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

local function getMockUILibraryTheme()
	local mockStyleGuideColor = {}
	setmetatable(mockStyleGuideColor, {
		__index = function()
			return Color3.new(math.random(), math.random(), math.random())
		end
	})

	local mockStyleGuideModifier = {}
	setmetatable(mockStyleGuideModifier, {
		__index = function()
			return nil
		end
	})

	local styleGuide = StudioStyle.new(
		function(...)
			return Color3.new()
		end,
		mockStyleGuideColor,
		mockStyleGuideModifier
	)

	return createTheme(styleGuide, {})
end

local function makeTheme()
	local makeMockTheme = DebugFlags.RunningUnderCLI()

	local styleRoot
	if makeMockTheme then
		styleRoot = StudioTheme.mock()
		function styleRoot:getUILibraryTheme()
			return getMockUILibraryTheme()
		end
	else
		styleRoot = StudioTheme.new()
		local theme = settings().Studio.Theme
		function styleRoot:getUILibraryTheme()
			return getUILibraryTheme(theme, styleRoot)
		end
	end
	styleRoot:extend(themeExtended())

	return styleRoot
end

return makeTheme
