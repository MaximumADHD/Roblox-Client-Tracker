--[[
	Public interface for UI
]]

local Src = script

local FrameworkStyles = require(Src.FrameworkStyles)

local Image = require(Src.Image)
local Box = require(Src.Box)
local RoundBox = require(Src.RoundBox)
local Container = require(Src.Container)
local Button = require(Src.Button)
local LoadingBar = require(Src.LoadingBar)
local LoadingIndicator = require(Src.LoadingIndicator)
local FakeLoadingBar = require(Src.FakeLoadingBar)
local HoverArea = require(Src.HoverArea)
local CaptureFocus = require(Src.CaptureFocus)
local ShowOnTop = require(Src.ShowOnTop)
local DragListener = require(Src.DragListener)
local DropShadow = require(Src.DropShadow)
local KeyboardListener = require(Src.KeyboardListener)
local LinkText = require(Src.LinkText)
local ToggleButton = require(Src.ToggleButton)
local RangeSlider = require(Src.RangeSlider)
local RadioButton = require(Src.RadioButton)
local RadioButtonList = require(Src.RadioButtonList)
local TextLabel = require(Src.TextLabel)
local ScrollingFrame = require(Src.ScrollingFrame)
local Separator = require(Src.Separator)
local TextInput = require(Src.TextInput)

-- NOTE: Please keep components in alphabetical order
local UI = {
	-- Empty default styles for Framework components
	FrameworkStyles = FrameworkStyles,

	-- UI Components
	Button = Button,
	CaptureFocus = CaptureFocus,
	Container = Container,
	DragListener = DragListener,
	DropShadow = DropShadow,
	FakeLoadingBar = FakeLoadingBar,
	HoverArea = HoverArea,
	KeyboardListener = KeyboardListener,
	LinkText = LinkText,
	LoadingBar = LoadingBar,
	LoadingIndicator = LoadingIndicator,
	RadioButton = RadioButton,
	RadioButtonList = RadioButtonList,
	RangeSlider = RangeSlider,
	ShowOnTop = ShowOnTop,
	ScrollingFrame = ScrollingFrame,
	Separator = Separator,
	TextInput = TextInput,
	ToggleButton = ToggleButton,

	Decoration = {
		Box = Box,
		Image = Image,
		RoundBox = RoundBox,
		TextLabel = TextLabel,
	},
}

return UI
