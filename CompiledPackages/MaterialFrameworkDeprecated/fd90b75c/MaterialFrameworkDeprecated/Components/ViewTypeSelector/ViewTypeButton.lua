--[[
	A dropdown menu item created by the ViewTypeSelector component.

	Required Props:
		callback OnClick: Called when the menu item is selected.
		Style Style: The style table with which to render the component.
		string Text: The menu item text.
		any ViewType: The view type. A grid size slider is added when this prop
			is set to ViewType.Grid.

	Optional Props:
		number GridSize: The current grid size value.
		number LayoutOrder: The layout order for the component.
		callback OnGridSizeChanged: Called when the grid size slider changes.

	Style Values:
		Color3 BackgroundColor: The background color of the component.
		string GridIcon: Asset for the Grid view icon.
		Color3 IconColor: The color applied to the icon.
		UDim2 IconSize: The size of the icon.
		UDim2 ItemSize: The size of the menu item.
		string ListIcon: Asset for the List view icon.
		Vector2 SliderAnchorPoint: The anchor point of the slider.
		UDim2 SliderPosition: The position of the slider.
		UDim2 SliderSize: The size of the slider.
]]

local main = script.Parent.Parent.Parent
local Packages = main.Parent

local Framework = require(Packages.Framework)
local React = require(Packages.React)

local UI = Framework.UI
local IconButton = UI.IconButton
local Pane = UI.Pane
local Slider = UI.Slider

local Enums = require(main.Enums)
local ViewType = Enums.ViewType

local Util = require(main.Util)
local Constants = Util.Constants

export type Props = {
	GridSize: number?,
	LayoutOrder: number?,
	OnClick: () -> (),
	OnGridSizeChanged: ((size: number) -> ())?,
	Style: any,
	Text: string,
	ViewType: any,
}

type _Style = {
	BackgroundColor: Color3,
	GridIcon: string,
	IconColor: Color3,
	IconSize: number,
	ItemSize: UDim2,
	ListIcon: string,
	SliderAnchorPoint: Vector2,
	SliderPosition: UDim2,
	SliderSize: UDim2,
}

function ViewTypeButton(props: Props)
	local style: _Style = props.Style

	local viewType = props.ViewType
	local viewTypeIcon = if viewType == ViewType.Grid then style.GridIcon else style.ListIcon

	return React.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor = style.BackgroundColor,
		Layout = Enum.FillDirection.Vertical,
		LayoutOrder = props.LayoutOrder,
	}, {
		IconButton = React.createElement(IconButton, {
			BackgroundColor = style.BackgroundColor,
			BackgroundStyle = "Box",
			IconColor = style.IconColor,
			IconSize = style.IconSize,
			LayoutOrder = 1,
			LeftIcon = viewTypeIcon,
			OnClick = props.OnClick,
			Size = style.ItemSize,
			Text = props.Text,
		}),
		Slider = if props.ViewType == ViewType.Grid
			then React.createElement(Slider, {
				AnchorPoint = style.SliderAnchorPoint,
				Disabled = false,
				Value = props.GridSize,
				Min = Constants.GRID_SIZE_MIN,
				Max = Constants.GRID_SIZE_MAX,
				LayoutOrder = 2,
				OnValueChanged = props.OnGridSizeChanged,
				Position = style.SliderPosition,
				Size = style.SliderSize,
				SnapIncrement = Constants.GRID_SIZE_SNAP_INCREMENT,
				VerticalDragTolerance = Constants.GRID_SIZE_VERTICAL_DRAG_TOLERANCE,
			})
			else nil,
	})
end

return ViewTypeButton
