--[[
	Provides a base implementation of style tables for the Framework
	that are completely empty and only used so that the Framework
	can run for testing.

	StudioFrameworkStyles extends this style table to implement
	default values for Studio plugins.
]]
local FFlagDevFrameworkTextInput2 = game:GetFastFlag("DevFrameworkTextInput2")
local FFlagDevFrameworkTimeProgressBar = game:GetFastFlag("DevFrameworkTimeProgressBar")
local FFlagDevFrameworkInfiniteScrollingGrid = game:GetFastFlag("DevFrameworkInfiniteScrollingGrid")
local FFlagDevFrameworkResponsiveGrid2 = game:GetFastFlag("DevFrameworkResponsiveGrid2")

local function newDefaults()
	return {
		Default = {},
	}
end

local FrameworkStyles = {}
function FrameworkStyles.new()
	return {
		Common = newDefaults(),

		-- UI Styles
		Box = newDefaults(),
		BulletList = newDefaults(),
		Button = newDefaults(),
		Checkbox = newDefaults(),
		CheckboxTreeView = newDefaults(),
		DragBar = newDefaults(),
		DropdownMenu = newDefaults(),
		DropShadow = newDefaults(),
		ExpandablePane = newDefaults(),
		IconButton = newDefaults(),
		Image = newDefaults(),
		InfiniteScrollingFrame = newDefaults(),
		InfiniteScrollingGrid = if FFlagDevFrameworkInfiniteScrollingGrid then newDefaults() else nil,
		InstanceTreeView = newDefaults(),
		LinkText = newDefaults(),
		LoadingBar = newDefaults(),
		LoadingIndicator = newDefaults(),
		MultiLineTextInput = newDefaults(),
		Pane = newDefaults(),
		PageNavigation = newDefaults(),
		PaginatedTable = newDefaults(),
		RadioButton = newDefaults(),
		RadioButtonList = newDefaults(),
		RangeSlider = newDefaults(),
		ResponsiveGrid = if FFlagDevFrameworkResponsiveGrid2 then newDefaults() else nil,
		RoundBox = newDefaults(),
		ScrollingFrame = newDefaults(),
		SelectInput = newDefaults(),
		Separator = newDefaults(),
		SimpleTab = newDefaults(),
		SplitPane = newDefaults(),
		TableRow = newDefaults(),
		Slider = newDefaults(),
		DragBox = newDefaults(),
		Table = newDefaults(),
		Tabs = newDefaults(),
		TextInput = newDefaults(),
		TextInput2 = FFlagDevFrameworkTextInput2 and newDefaults() or nil,
		TextInputDialog = newDefaults(),
		TextInputWithBottomText = newDefaults(),
		TextLabel = newDefaults(),
		TextWithInlineLink = newDefaults(),
		ToggleButton = newDefaults(),
		Tooltip = newDefaults(),
		TreeTable = newDefaults(),
		TreeView = newDefaults(),
		TreeViewRow = newDefaults(),
		TimeProgressBar = FFlagDevFrameworkTimeProgressBar and newDefaults() or nil,

		-- StudioUI Styles
		AssetPreview = newDefaults(),
		AssetRender = newDefaults(),
		Favorites = newDefaults(),
		MediaPlayerControls = newDefaults(),
		SearchBar = newDefaults(),
		StatelessAudioPlayer = newDefaults(),
		StatelessVideoPlayer = newDefaults(),
		StyledDialog = newDefaults(),
		TitledFrame = newDefaults(),
		VoteBar = newDefaults(),
		Votes = newDefaults(),
	}
end

return FrameworkStyles
