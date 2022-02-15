--[[
	Public interface for UI
]]
local FFlagDevFrameworkSplitPane = game:GetFastFlag("DevFrameworkSplitPane")
local FFlagDevFrameworkTextInput2 = game:GetFastFlag("DevFrameworkTextInput2")
local FFlagDevFrameworkTimeProgressBar = game:GetFastFlag("DevFrameworkTimeProgressBar")
local FFlagDevFrameworkResponsiveGrid2 = game:GetFastFlag("DevFrameworkResponsiveGrid2")

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
local ExpandableWidget = require(Src.ExpandableWidget)
local FakeLoadingBar = require(Src.FakeLoadingBar)
local HoverArea = require(Src.HoverArea)
local CaptureFocus = require(Src.CaptureFocus)
local ShowOnTop = require(Src.ShowOnTop)
local DragBar = require(Src.DragBar)
local DragListener = require(Src.DragListener)
local DropShadow = require(Src.DropShadow)
local KeyboardListener = require(Src.KeyboardListener)
local LinkText = require(Src.LinkText)
local Pane = require(Src.Pane)
local PageNavigation = require(Src.PageNavigation)
local PaginatedTable = require(Src.PaginatedTable)
local IconButton = require(Src.IconButton)
local ToggleButton = require(Src.ToggleButton)
local Tooltip = require(Src.Tooltip)
local RangeSlider = require(Src.RangeSlider)
local RadioButton = require(Src.RadioButton)
local RadioButtonList = require(Src.RadioButtonList)
local ResponsiveGrid = require(Src.ResponsiveGrid)
local SimpleExpandablePane = require(Src.ExpandablePane.SimpleExpandablePane)
local Table = require(Src.Table)
local TableRow = require(Src.TableRow)
local Tabs = require(Src.Tabs)
local TextLabel = require(Src.TextLabel)
local TextWithInlineLink = require(Src.TextWithInlineLink)
local TextInput = require(Src.TextInput)
local TextInput2 = require(Src.TextInput2)
local TextInputDialog = require(Src.TextInputDialog)
local TreeTable = require(Src.TreeTable)
local TreeTableCell = require(Src.TreeTable.TreeTableCell)
local TreeView = require(Src.TreeView)
local TreeViewRow = require(Src.TreeViewRow)
local CheckboxTreeView = require(Src.CheckboxTreeView)
local InstanceTreeView = require(Src.InstanceTreeView)
local BulletList = require(Src.BulletList)
local ScrollingFrame = require(Src.ScrollingFrame)
local SelectInput = require(Src.SelectInput)
local Separator = require(Src.Separator)
local SimpleTab = require(Src.SimpleTab)
local SplitPane = require(Src.SplitPane)
local Slider = require(Src.Slider)
local InfiniteScrollingFrame = require(Src.InfiniteScrollingFrame)
local MultiLineTextInput = require(Src.MultiLineTextInput)
local TruncatedTextLabel = require(Src.TruncatedTextLabel)
local Checkbox = require(Src.Checkbox)
local ExpandablePane = require(Src.ExpandablePane)
local TimeProgressBar = require(Src.TimeProgressBar)

-- NOTE: Please keep components in alphabetical order
local UI = strict({
	-- Empty default styles for Framework components
	FrameworkStyles = FrameworkStyles,

	-- UI Components
	BulletList = BulletList,
	Button = Button,
	CaptureFocus = CaptureFocus,
	Checkbox = Checkbox,
	CheckboxTreeView = CheckboxTreeView,
	Container = Container,
	DragBar = FFlagDevFrameworkSplitPane and DragBar or nil,
	DragListener = DragListener,
	DropdownMenu = DropdownMenu,
	DropShadow = DropShadow,
	ExpandablePane = ExpandablePane,
	ExpandableWidget = ExpandableWidget, -- To be deprecated
	FakeLoadingBar = FakeLoadingBar,
	HoverArea = HoverArea,
	IconButton = IconButton,
	InfiniteScrollingFrame = InfiniteScrollingFrame,
	InstanceTreeView = InstanceTreeView,
	KeyboardListener = KeyboardListener,
	LinkText = LinkText,
	LoadingBar = LoadingBar,
	LoadingIndicator = LoadingIndicator,
	MultiLineTextInput = MultiLineTextInput,
	Pane = Pane,
	PageNavigation = PageNavigation,
	PaginatedTable = PaginatedTable,
	RadioButton = RadioButton,
	RadioButtonList = RadioButtonList,
	ResponsiveGrid = FFlagDevFrameworkResponsiveGrid2 and ResponsiveGrid or nil,
	RangeSlider = RangeSlider,
	ScrollingFrame = ScrollingFrame,
	SelectInput = SelectInput,
	Separator = Separator,
	SimpleExpandablePane = SimpleExpandablePane,
	SimpleTab = SimpleTab,
	ShowOnTop = ShowOnTop,
	Slider = Slider,
	SplitPane = FFlagDevFrameworkSplitPane and SplitPane or nil,
	Table = Table,
	TableRow = TableRow,
	Tabs = Tabs,
	TextInput = TextInput,
	TextInput2 = FFlagDevFrameworkTextInput2 and TextInput2 or nil,
	TextInputDialog = TextInputDialog,
	TextWithInlineLink = TextWithInlineLink,
	ToggleButton = ToggleButton,
	Tooltip = Tooltip,
	TreeTable = TreeTable,
	TreeTableCell = TreeTableCell,
	TreeView = TreeView,
	TreeViewRow = TreeViewRow,
	TruncatedTextLabel = TruncatedTextLabel,
	TimeProgressBar = FFlagDevFrameworkTimeProgressBar and TimeProgressBar or nil,

	Decoration = {
		Box = Box,
		Image = Image,
		RoundBox = RoundBox,
		TextLabel = TextLabel,
	},
})

return UI
