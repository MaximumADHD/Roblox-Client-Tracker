--[[
	Public interface for UI
]]
local Framework = script.Parent

local Dash = require(Framework.Parent.Dash)
local assign = Dash.assign

--[[
	Components must be registered manually by requiring them in the components object below, e.g.:

	    MyComponent = require(script.Components.MyComponent),

	To add or remove a component please introduce a shared flag:
	local FFlagDevFrameworkMyComponent = SharedFlags.getFFlagDevFrameworkMyComponent()

	Then in the components table add an entry for your component gated with your flag, e.g.:

		MyComponent = if FFlagDevFrameworkMyComponent then require(script.Components.MyComponent) else Dash.None

	If you are removing a component then use the reverse definition, e.g.:

		MyComponent = if FFlagDevFrameworkRemoveMyComponent then Dash.None else require(script.Components.MyComponent)

	Please avoid renaming components while Stylizer is still in use.
]]
local components = {
	Alert = require(script.Components.Alert),
	AssetPreview = require(script.Components.AssetPreview),
	AssetPreviewDetails = require(script.Components.AssetPreviewDetails),
	AssetRender = require(script.Components.AssetRender),
	AssetRenderImage = require(script.Components.AssetRenderImage),
	AssetRenderModel = require(script.Components.AssetRenderModel),
	AssetRenderThumbnail = require(script.Components.AssetRenderThumbnail),
	AudioPlayer = require(script.Components.AudioPlayer),
	Box = require(script.Components.Box),
	Breadcrumb = require(script.Components.Breadcrumb),
	BulletList = require(script.Components.BulletList),
	Button = require(script.Components.DEPRECATED_Button.adaptor),
	CaptureFocus = require(script.Components.CaptureFocus),
	Checkbox = require(script.Components.Checkbox),
	CheckboxTreeView = require(script.Components.CheckboxTreeView),
	ColorPicker = require(script.Components.ColorPicker),
	Container = require(script.Components.Container),
	DEPRECATED_Button = require(script.Components.DEPRECATED_Button),
	DEPRECATED_TextInput = require(script.Components.DEPRECATED_TextInput),
	Dialog = require(script.Components.Dialog),
	DockWidget = require(script.Components.DockWidget),
	DragBar = require(script.Components.DragBar),
	DragBox = require(script.Components.DragBox),
	DragListener = require(script.Components.DragListener),
	DragSource = require(script.Components.DragSource),
	DraggableTileList = require(script.Components.DraggableTileList),
	DropShadow = require(script.Components.DropShadow),
	DropdownMenu = require(script.Components.DropdownMenu),
	ExpandablePane = require(script.Components.ExpandablePane),
	FakeLoadingBar = require(script.Components.FakeLoadingBar),
	Favorites = require(script.Components.Favorites),
	Form = require(script.Components.Form),
	Grid = require(script.Components.Grid),
	HoverArea = require(script.Components.HoverArea),
	IconButton = require(script.Components.IconButton),
	Image = require(script.Components.Image),
	ImageCarousel = require(script.Components.ImageCarousel),
	InfiniteScrollingGrid = require(script.Components.InfiniteScrollingGrid),
	InlineLayout = require(script.Components.InlineLayout),
	InlineLayoutElements = require(script.Components.InlineLayout.InlineLayoutElements),
	InstanceTreeView = require(script.Components.InstanceTreeView),
	KeyboardListener = require(script.Components.KeyboardListener),
	LinkText = require(script.Components.LinkText),
	List = require(script.Components.List),
	LoadingBar = require(script.Components.LoadingBar),
	LoadingIndicator = require(script.Components.LoadingIndicator),
	MarkdownViewer = require(script.Components.MarkdownViewer),
	MediaPlayerControls = require(script.Components.MediaPlayerControls),
	MediaPlayerWrapper = require(script.Components.MediaPlayerWrapper),
	MultiImagePicker = require(script.Components.MultiImagePicker),
	MultiImagePickerWrapper = require(script.Components.MultiImagePickerWrapper),
	PageNavigation = require(script.Components.PageNavigation),
	PaginatedTable = require(script.Components.PaginatedTable),
	PaginationDots = require(script.Components.PaginationDots),
	Pane = require(script.Components.Pane),
	PluginButton = require(script.Components.PluginButton),
	PluginToolbar = require(script.Components.PluginToolbar),
	Popup = require(script.Components.Popup),
	PropertyCell = require(script.Components.PropertyCell),
	RadioButton = require(script.Components.RadioButton),
	RadioButtonList = require(script.Components.RadioButtonList),
	RangeSlider = require(script.Components.RangeSlider),
	ResponsiveGrid = require(script.Components.ResponsiveGrid),
	RoundBox = require(script.Components.RoundBox),
	ScreenFlow = require(script.Components.ScreenFlow),
	ScrollingFrame = require(script.Components.ScrollingFrame),
	SearchBar = require(script.Components.SearchBar),
	SegmentedButton = require(script.Components.SegmentedButton),
	SelectInput = require(script.Components.SelectInput),
	Separator = require(script.Components.Separator),
	Shimmer = require(script.Components.Shimmer),
	ShowOnTop = require(script.Components.ShowOnTop),
	SimpleTab = require(script.Components.SimpleTab),
	Slider = require(script.Components.Slider),
	SplitPane = require(script.Components.SplitPane),
	StatelessAudioPlayer = require(script.Components.StatelessAudioPlayer),
	StatelessVideoPlayer = require(script.Components.StatelessVideoPlayer),
	StyledDialog = require(script.Components.StyledDialog),
	Table = require(script.Components.Table),
	TableRow = require(script.Components.TableRow),
	Tabs = require(script.Components.Tabs),
	TextInput = require(script.Components.TextInput),
	TextInputDialog = require(script.Components.TextInputDialog),
	TextLabel = require(script.Components.TextLabel),
	TextLabelWithRobloxLinks = require(script.Components.TextLabelWithRobloxLinks),
	TextWithInlineLink = require(script.Components.TextWithInlineLink),
	TextWithLinks = require(script.Components.TextWithLinks),
	TimeProgressBar = require(script.Components.TimeProgressBar),
	TitledFrame = require(script.Components.TitledFrame),
	ToggleButton = require(script.Components.ToggleButton),
	Tooltip = require(script.Components.Tooltip),
	TreeTable = require(script.Components.TreeTable),
	TreeView = require(script.Components.TreeView),
	TreeViewRow = require(script.Components.TreeViewRow),
	TruncatedTextLabel = require(script.Components.TruncatedTextLabel),
	UIFolderData = require(script.Components.UIFolderData),
	UseDialogLayout = require(script.Components.UseDialogLayout),
	VideoPlayer = require(script.Components.VideoPlayer),
	ViewTypeButton = require(script.Components.ViewTypeButton),
	ViewTypeSelector = require(script.Components.ViewTypeSelector),
	VoteBar = require(script.Components.VoteBar),
	VoteButton = require(script.Components.VoteButton),
	Votes = require(script.Components.Votes),
	createPluginWidget = require(script.Components.createPluginWidget),
	showContextMenu = require(script.Components.showContextMenu),
}

local additionalProperties = {
	Stories = require(script.Stories),
	Hooks = require(script.Hooks),
	-- Nested components
	SimpleExpandablePane = require(script.Components.ExpandablePane.SimpleExpandablePane),
	TreeTableCell = require(script.Components.TreeTable.TreeTableCell),
	-- Empty default styles for Framework components
	FrameworkStyles = require(script.FrameworkStyles),
}

local UI = components
assign(UI, additionalProperties)

-- helpful message to guide contirbutors if they forget to require their component in this file
local mt = {
	__index = function(_t, k)
		warn(
			`Dev Framework Component UI.{tostring(k)} accessed but does not exist, make sure to require new components in DeveloperFramework/UI/init.lua`
		)
		return nil
	end,
}
setmetatable(UI, mt)

return (UI :: unknown) :: typeof(components) & typeof(additionalProperties) & { [string]: any }
