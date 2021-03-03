--[[
	Provides a base implementation of style tables for the Framework
	that are completely empty and only used so that the Framework
	can run for testing.

	StudioFrameworkStyles extends this style table to implement
	default values for Studio plugins.
]]

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
		DropdownMenu = newDefaults(),
		DropShadow = newDefaults(),
		Image = newDefaults(),
		InfiniteScrollingFrame = newDefaults(),
		InstanceTreeView = newDefaults(),
		LinkText = newDefaults(),
		LoadingBar = newDefaults(),
		LoadingIndicator = newDefaults(),
		Pane = newDefaults(),
		RadioButton = newDefaults(),
		RadioButtonList = newDefaults(),
		RangeSlider = newDefaults(),
		RoundBox = newDefaults(),
		ScrollingFrame = newDefaults(),
		SelectInput = newDefaults(),
		Separator = newDefaults(),
		Slider = newDefaults(),
		TextInput = newDefaults(),
		TextLabel = newDefaults(),
		ToggleButton = newDefaults(),
		Tooltip = newDefaults(),
		TreeView = newDefaults(),

		-- StudioUI Styles
		AssetRender = newDefaults(),
		AssetPreview = newDefaults(),
		Favorites = newDefaults(),
		MediaPlayerControls = newDefaults(),
		SearchBar = newDefaults(),
		StyledDialog = newDefaults(),
		TitledFrame = newDefaults(),
		StatelessAudioPlayer = newDefaults(),
		StatelessVideoPlayer = newDefaults(),
		Votes = newDefaults(),
		VoteBar = newDefaults(),
	}
end

return FrameworkStyles
