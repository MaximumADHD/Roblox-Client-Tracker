--[[
	Creates the theme for the plugin.
	Extends the default StudioFrameworkStyles, and also defines values specific
	to components created within this plugin and constant values shared across components.

	Params:
		bool createMock: An optional param that should only be
			set to true in testing.
]]

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local Style = Framework.Style
local StudioTheme = Style.Themes.StudioTheme
local ui = Style.ComponentSymbols
-- local _StyleKey = Style.StyleKey -- uncomment to use

local Constants = require(Plugin.Src.Util.Constants)

local FFlag9SliceEditorNewDraggers = game:GetFastFlag("9SliceEditorNewDraggers")

ui:add("AlertDialog")
ui:add("ImageDragger")
ui:add("SliceEditor")

local PluginTheme = {
	Button = {
		Size = UDim2.fromOffset(75, 28),
		Style = "Round",
	},

	TextEditor = {
		OffsetItemSpacing = UDim.new(0, 7),
	},

	TextOffsetItem = {
		PaneSize = UDim2.fromOffset(110, 20),
		LabelXWidth = 50,
		TextBoxSize = UDim2.fromOffset(50, 20),
		LabelTextBoxSpacing = 10,
		Style = "RoundedBorder",
	},

	[ui.AlertDialog] = {
		PopupMessageSize = Vector2.new(400, 60),
		TextSize = 18,
	},

	[ui.ImageDragger] = {
		EdgeHandleSize = FFlag9SliceEditorNewDraggers and UDim2.fromOffset(30, 28) or UDim2.fromOffset(30, 27),
		EdgeHandleInsetPx = 2,
	},

	[ui.SliceEditor] = {
		ImageAreaSize = UDim2.fromOffset(Constants.BACKGROUND_SIZE + 10 + Constants.TEXTEDITOR_XSIZE,
			Constants.BACKGROUND_SIZE + Constants.TEXTSIZE + 10),
		ButtonsAreaSize = UDim2.fromOffset(Constants.BACKGROUND_SIZE + 10 + Constants.TEXTEDITOR_XSIZE + 10, 32),
		ButtonsSpacing = UDim.new(0, 10),
		VerticalSpacing = UDim.new(0, 5),
		HorizontalSpacing = UDim.new(0, 5),
		InfoBoxSize = UDim2.fromOffset(300, 200),
	},
}

if THEME_REFACTOR then
	return function(createMock)
		local styleRoot
		if createMock then
			styleRoot = StudioTheme.mock()
		else
			styleRoot = StudioTheme.new()
		end

		return styleRoot:extend(PluginTheme)
	end
else
	-- TODO: DEVTOOLS-4731: Once THEME_REFACTOR is on, remove this
	warn("Stylizer is required for this plugin")
	return
end
