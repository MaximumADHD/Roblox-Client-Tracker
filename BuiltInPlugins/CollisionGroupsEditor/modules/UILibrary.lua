--[[
	Public interface for UILibrary
]]

local Src = script
local Components = Src.Components
local Utils = Src.Utils

local Button = require(Components.Button)
local CheckBox = require(Components.CheckBox)
local DragTarget = require(Components.DragTarget)
local DropdownMenu = require(Components.DropdownMenu)
local DropShadow = require(Components.DropShadow)
local RoundFrame = require(Components.RoundFrame)
local RoundTextBox = require(Components.RoundTextBox)
local RoundTextButton = require(Components.RoundTextButton)
local Separator = require(Components.Separator)
local StyledDialog = require(Components.StyledDialog)
local StyledDropdown = require(Components.StyledDropdown)
local StyledScrollingFrame = require(Components.StyledScrollingFrame)
local TitledFrame = require(Components.TitledFrame)
local Tooltip = require(Components.Tooltip)
local Keyframe = require(Components.Timeline.Keyframe)
local Timeline = require(Components.Timeline.Timeline)
local TimelineTick = require(Components.Timeline.TimelineTick)
local Scrubber = require(Components.Timeline.Scrubber)
local ExpandableList = require(Components.ExpandableList)

local Spritesheet = require(Utils.Spritesheet)

local Focus = require(Src.Focus)

local UILibrary = {
	Component = {
		Button = Button,
		CheckBox = CheckBox,
		DragTarget = DragTarget,
		DropdownMenu = DropdownMenu,
		DropShadow = DropShadow,
		RoundFrame = RoundFrame,
		RoundTextBox = RoundTextBox,
		RoundTextButton = RoundTextButton,
		Separator = Separator,
		StyledDialog = StyledDialog,
		StyledDropdown = StyledDropdown,
		StyledScrollingFrame = StyledScrollingFrame,
		TitledFrame = TitledFrame,
		Tooltip = Tooltip,
		Keyframe = Keyframe,
		Timeline = Timeline,
		TimelineTick = TimelineTick,
		Scrubber = Scrubber,
		ExpandableList = ExpandableList,
	},

	Studio = {
		Localization = require(Src.Studio.Localization),
		Style = require(Src.Studio.StudioStyle),
		Theme = require(Src.Studio.StudioTheme),
	},

	Focus = {
		CaptureFocus = Focus.CaptureFocus,
		ShowOnTop = Focus.ShowOnTop,
		KeyboardListener = Focus.KeyboardListener,
	},
	
	Util = {
		Spritesheet = Spritesheet,
	},

	Localizing = require(Src.Localizing),
	Wrapper = require(Src.UILibraryWrapper),

	createTheme = require(Src.createTheme),
}

return UILibrary