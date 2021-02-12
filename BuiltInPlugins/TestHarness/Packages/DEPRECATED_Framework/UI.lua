--[[
	Public interface for UI
]]

local Src = script

local strict = require(Src.Parent.Util.strict)

local FrameworkStyles = require(Src.FrameworkStyles)

local Image = require(Src.Image)
local Box = require(Src.Box)
local RoundBox = require(Src.RoundBox)
local Container = require(Src.Container)
local DropdownMenu = require(Src.DropdownMenu)
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
local Tooltip = require(Src.Tooltip)
local RangeSlider = require(Src.RangeSlider)
local RadioButton = require(Src.RadioButton)
local RadioButtonList = require(Src.RadioButtonList)
local TextLabel = require(Src.TextLabel)
local TextInput = require(Src.TextInput)
local TreeView = require(Src.TreeView)
local InstanceTreeView = require(Src.InstanceTreeView)
local BulletList = require(Src.BulletList)
local ScrollingFrame = require(Src.ScrollingFrame)
local SelectInput = require(Src.SelectInput)
local Separator = require(Src.Separator)
local Slider = require(Src.Slider)
local InfiniteScrollingFrame = require(Src.InfiniteScrollingFrame)

-- NOTE: Please keep components in alphabetical order
local UI = strict({
	-- Empty default styles for Framework components
	FrameworkStyles = FrameworkStyles,

	-- UI Components
	BulletList = BulletList,
	Button = Button,
	CaptureFocus = CaptureFocus,
	Container = Container,
	DragListener = DragListener,
	DropShadow = DropShadow,
	DropdownMenu = DropdownMenu,
	FakeLoadingBar = FakeLoadingBar,
	HoverArea = HoverArea,
	InfiniteScrollingFrame = InfiniteScrollingFrame,
	InstanceTreeView = InstanceTreeView,
	KeyboardListener = KeyboardListener,
	LinkText = LinkText,
	LoadingBar = LoadingBar,
	LoadingIndicator = LoadingIndicator,
	RadioButton = RadioButton,
	RadioButtonList = RadioButtonList,
	RangeSlider = RangeSlider,
	ScrollingFrame = ScrollingFrame,
	ShowOnTop = ShowOnTop,
	SelectInput = SelectInput,
	Separator = Separator,
	Slider = Slider,
	TextInput = TextInput,
	ToggleButton = ToggleButton,
	Tooltip = Tooltip,
	TreeView = TreeView,

	Decoration = {
		Box = Box,
		Image = Image,
		RoundBox = RoundBox,
		TextLabel = TextLabel,
	},
})

return UI
