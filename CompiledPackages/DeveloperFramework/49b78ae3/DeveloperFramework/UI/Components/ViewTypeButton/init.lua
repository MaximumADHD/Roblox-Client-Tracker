--[[
	(INTERNAL ONLY)
	Only used by ViewTypeSelector.
	A SelectInput menu item created by the ViewTypeSelector component.

	Required Props:
		callback OnClick: Called when the menu item is selected.
		string Text: The menu item text.
		bool HasSlider: Whether the menu item contains a slider.
		ViewType ViewType: The view type. A grid size slider is added when this prop
			is set to ViewType.Grid.

	Optional Props:
		number GridSize: The current grid size value.
		number LayoutOrder: The layout order for the component.
		callback OnGridSizeChanged: Called when the grid size slider changes.
		number MinGridSize: The minimum grid size value.
		any Style: The style with which to render this component.

	Style Values:
		Vector2 SliderAnchorPoint: The anchor point of the slider.
		UDim2 SliderPosition: The position of the slider.
		UDim2 SliderSize: The size of the slider.
]]

local Framework = script:FindFirstAncestor("UI").Parent

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else ""
local hasTag = require(Framework.Styling.hasTag)
local joinTags = require(Framework.Styling.joinTags)

local Components = Framework.UI.Components
local Pane = require(Components.Pane)
local Slider = require(Components.Slider)
local ViewType = require(script.ViewType)

local Image = require(Components.Image)
local TextLabel = require(Components.TextLabel)

local styles = require(script.styles)

local style = {
	SliderAnchorPoint = Vector2.new(0.5, 0.5),
	SliderPosition = UDim2.fromScale(0.5, 0.5),
	SliderSize = UDim2.new(1, -10, 0, 20),
}

export type ViewType = ViewType.ViewType

export type Props = {
	ViewType: ViewType,
	Text: string,
	HasSlider: boolean,
	GridTileSize: number?,
	OnGridTileSizeChanged: ((number) -> ())?,
	MinGridTileSize: number?,
	MaxGridTileSize: number?,
	OnClick: (any) -> (),
	LayoutOrder: number?,
}

local function ViewTypeButton(props: Props)
	assert(React ~= "", "You must be using non-legacy React in order to use ViewTypeButton")

	local image = if hasTag(props[React.Tag], "Grid") then "Grid" else "List"
	local iconOnly = hasTag(props[React.Tag], "Icon")
	local iconOnlyTag = if iconOnly then "Icon" else ""

	return React.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		OnClick = props.OnClick,
		[React.Tag] = `Component-ViewTypeButton X-Column X-Fit Secondary`,
	}, {
		ButtonContainer = React.createElement(Pane, {
			LayoutOrder = 1,
			[React.Tag] = joinTags("ButtonContainer X-RowM", iconOnlyTag),
		}, {
			ImageContainer = React.createElement(Pane, {
				LayoutOrder = 1,
				[React.Tag] = "ImageContainer X-Center X-Middle",
			}, {
				ViewTypeIcon = React.createElement(Image, {
					[React.Tag] = `Icon16 {image}`,
				}),
			}),
			Label = if not iconOnly
				then React.createElement(TextLabel, {
					LayoutOrder = 2,
					Text = props.Text,
					TextTruncate = Enum.TextTruncate.AtEnd,
					[React.Tag] = "X-FitX",
				})
				else nil,
		}),
		SliderContainer = if props.HasSlider
			then React.createElement(Pane, {
				LayoutOrder = 2,
				[React.Tag] = "SliderContainer X-Middle X-Center",
			}, {
				Slider = React.createElement(Slider, {
					Value = props.GridTileSize,
					OnValueChanged = props.OnGridTileSizeChanged,
					Min = props.MinGridTileSize or styles:GetAttribute("SliderValueMin"),
					Max = props.MaxGridTileSize or styles:GetAttribute("SliderValueMax"),
					SnapIncrement = styles:GetAttribute("SliderSnapIncrement"),
					VerticalDragTolerance = styles:GetAttribute("SliderVerticalDragTolerance"),
					AnchorPoint = style.SliderAnchorPoint,
					Position = style.SliderPosition,
					Size = style.SliderSize,
				}),
			})
			else nil,
	})
end

return ViewTypeButton
