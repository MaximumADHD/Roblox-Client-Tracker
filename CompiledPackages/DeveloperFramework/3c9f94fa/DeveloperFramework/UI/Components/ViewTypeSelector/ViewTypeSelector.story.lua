local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Util.React)

local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)
local ViewTypeSelector = require(Framework.UI.Components.ViewTypeSelector)
local ViewType = require(Framework.UI.Components.ViewTypeButton.ViewType)

local DEFAULT_GRID_SIZE = 100
local DEFAULT_VIEWTYPE = ViewType.List

local function getViewTypeString(viewType: ViewTypeSelector.ViewType)
	local switch = {
		[ViewType.List] = "List",
		[ViewType.Grid] = "Grid",
	}
	return switch[viewType] or "Unsupported"
end

local function ViewTypeSelectorStory(viewType, setViewType, gridSize, setGridSize, optionalProps)
	return React.createElement(Pane, {
		[React.Tag] = "X-RowM X-Fit X-Middle",
	}, {
		ViewTypeSelector = React.createElement(ViewTypeSelector, {
			OnGridTileSizeChanged = setGridSize,
			OnViewTypeSelected = setViewType,
			Default = viewType,
			DefaultGridTileSize = gridSize,
			HideSlider = optionalProps.HideSlider,
			HideLabels = optionalProps.HideLabels,
			LayoutOrder = 1,
			[React.Tag] = optionalProps[React.Tag],
		}),
		Label = React.createElement(TextLabel, {
			Text = getViewTypeString(viewType),
			LayoutOrder = 2,
			[React.Tag] = "X-Fit",
		}),
	})
end

return {
	stories = {
		{
			name = "Default",
			story = function()
				local viewType, setViewType = React.useState(DEFAULT_VIEWTYPE)
				local gridSize, setGridSize = React.useState(DEFAULT_GRID_SIZE)
				local optionalProps = {}
				return ViewTypeSelectorStory(viewType, setViewType, gridSize, setGridSize, optionalProps)
			end,
		},
		{
			name = "Icon Only",
			story = function()
				local viewType, setViewType = React.useState(DEFAULT_VIEWTYPE)
				local gridSize, setGridSize = React.useState(DEFAULT_GRID_SIZE)
				local optionalProps = {
					[React.Tag] = "IconOnly",
				}
				return ViewTypeSelectorStory(viewType, setViewType, gridSize, setGridSize, optionalProps)
			end,
		},
		{
			name = "No Slider",
			story = function()
				local viewType, setViewType = React.useState(DEFAULT_VIEWTYPE)
				local gridSize, setGridSize = React.useState(DEFAULT_GRID_SIZE)
				local optionalProps = {
					HideSlider = true,
				}
				return ViewTypeSelectorStory(viewType, setViewType, gridSize, setGridSize, optionalProps)
			end,
		},
		{
			name = "No Labels",
			story = function()
				local viewType, setViewType = React.useState(DEFAULT_VIEWTYPE)
				local gridSize, setGridSize = React.useState(DEFAULT_GRID_SIZE)
				local optionalProps = {
					HideLabels = true,
				}
				return ViewTypeSelectorStory(viewType, setViewType, gridSize, setGridSize, optionalProps)
			end,
		},
		{
			name = "No Labels or Slider",
			story = function()
				local viewType, setViewType = React.useState(DEFAULT_VIEWTYPE)
				local gridSize, setGridSize = React.useState(DEFAULT_GRID_SIZE)
				local optionalProps = {
					HideLabels = true,
					HideSlider = true,
				}
				return ViewTypeSelectorStory(viewType, setViewType, gridSize, setGridSize, optionalProps)
			end,
		},
	},
}
