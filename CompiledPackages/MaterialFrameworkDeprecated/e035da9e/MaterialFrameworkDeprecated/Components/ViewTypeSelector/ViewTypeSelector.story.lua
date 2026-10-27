local main = script.Parent.Parent.Parent
local Packages = main.Parent
local React = require(Packages.React)

local ViewTypeSelector = require(main.Components.ViewTypeSelector)
local ViewType = require(main.Enums.ViewType)

local DEFAULT_GRID_SIZE = 100
local DEFAULT_VIEW_TYPE = ViewType.Grid

return {
	controls = {
		isDisabled = false,
	},
	stories = {
		{
			name = "Default",
			story = function(props)
				local viewType, setViewType = React.useState(DEFAULT_VIEW_TYPE)
				local gridSize, setGridSize = React.useState(DEFAULT_GRID_SIZE)
				local isDisabled = props.controls.isDisabled

				return React.createElement(ViewTypeSelector, {
					Disabled = isDisabled,
					GridSize = gridSize,
					OnGridSizeChanged = setGridSize,
					OnViewTypeSelected = setViewType,
					ViewType = viewType,
				})
			end,
		},
	},
}
