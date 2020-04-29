--[[
	Public interface for UI
]]

local Src = script

local FrameworkStyles = require(Src.FrameworkStyles)

local Image = require(Src.Decoration.Image)
local Box = require(Src.Decoration.Box)
local RoundBox = require(Src.Decoration.RoundBox)
local Container = require(Src.Container)
local Button = require(Src.Button)
local LoadingBar = require(Src.LoadingBar)
local FakeLoadingBar = require(Src.FakeLoadingBar)
local HoverArea = require(Src.HoverArea)
local CaptureFocus = require(Src.CaptureFocus)
local ShowOnTop = require(Src.ShowOnTop)
local DragListener = require(Src.DragListener)
local KeyboardListener = require(Src.KeyboardListener)
local LinkText = require(Src.LinkText)
local ToggleButton = require(Src.ToggleButton)
local RadioButton = require(Src.RadioButton)
local RadioButtonList = require(Src.RadioButtonList)

local UI = {
	-- Empty default styles for Framework components
	FrameworkStyles = FrameworkStyles,

	-- UI Components
	Container = Container,
	Button = Button,
	LoadingBar = LoadingBar,
	FakeLoadingBar = FakeLoadingBar,
	HoverArea = HoverArea,
	CaptureFocus = CaptureFocus,
	ShowOnTop = ShowOnTop,
	DragListener = DragListener,
	KeyboardListener = KeyboardListener,
	LinkText = LinkText,
	ToggleButton = ToggleButton,
	RadioButton = RadioButton,
	RadioButtonList = RadioButtonList,

	Decoration = {
		Image = Image,
		Box = Box,
		RoundBox = RoundBox,
	},
}

return UI
