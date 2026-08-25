--[[
	Item component used in MaterialGrid when ViewType equals List.

	MaterialGrid chooses between this module and MaterialListItemDeprecated via
	getFFlagMaterialGridTerrainEditorItemUx in MaterialGrid.init (RowComponent). This
	file is only loaded for the new UX path. Pass MaterialPreviewGeometryType through for
	template selection; FOV / corner-on camera tuning is gated inside MaterialPreview via
	the same flag.

	Required Props:
		callback OnClick: Called when the grid item is clicked.
		UDim2 Position: The position of the component. Set by MaterialGrid.
		UDim2 Size: The size of the component. Set by MaterialGrid.
		table Style: The style table with which to render the component.

	Optional Props:
		boolean Applied: Whether the material is currently applied.
		callback CustomPreview: The CustomPreview to show for this list item.
		number InitialDistance: Initial camera distance for the material preview.
		Types.Item Item: The item passed to click and hover callbacks.
		boolean ItemsDisabled: Whether items are non-interactive and visually dimmed.
		number LayoutOrder: The layout order of the item.
		boolean Loading: Whether to show the loading effect.
		Types.Material Material: The material to display in the list item.
		Types.MaterialPreviewGeometryType MaterialPreviewGeometryType: Geometry type for the preview mesh.
		callback OnMouseEnter: Called when the mouse enters the item.
		callback OnMouseLeave: Called when the mouse leaves the item.
		callback OnRightClick: Called when the item is right clicked.
		boolean Selected: Whether the item is selected.
		string Text: The text to display in the item label.
]]

local main = script.Parent.Parent.Parent
local Types = require(main.Types)
local Packages = main.Parent

local Dash = require(Packages.Dash)
local Framework = require(Packages.Framework)
local React = require(Packages.React)
local createNextOrder = require(main.Util.createNextOrder)

local forwardRef = React.forwardRef

local StyleModifier = Framework.Util.StyleModifier

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane
local Shimmer = UI.Shimmer
local TextLabel = UI.TextLabel

local MaterialPreview = require(main.Components.MaterialPreview)
-- TODO: Use flag from DevFramework once Studio's copy is updated

local function noop() end

export type Props = {
	Applied: boolean?,
	CustomPreview: React.ComponentType<Types.CustomPreviewProps>?,
	InitialDistance: number?,
	Item: Types.Item?,
	ItemsDisabled: boolean?,
	LayoutOrder: number?,
	Loading: boolean?,
	Material: Types.Material?,
	MaterialPreviewGeometryType: Types.MaterialPreviewGeometryType?,
	OverrideColor: Color3?,
	OverrideTransparency: number?,
	OnClick: (item: Types.Item) -> (),
	OnMouseEnter: ((item: Types.Item) -> ())?,
	OnMouseLeave: ((item: Types.Item) -> ())?,
	OnRightClick: ((item: Types.Item) -> ())?,
	Position: UDim2,
	Selected: boolean?,
	Size: UDim2,
	Style: _Style,
	Text: string?,
}

type _Style = {
	ListItemLabelTextColor: Color3,
	ListItemBackgroundColor: Color3,
	ListItemSpacing: number,
	TextSize: number,
}

local function createListItemContent(
	props: Props,
	style: _Style,
	ref: any,
	height: number,
	spacing: number,
	labelSize: UDim2,
	imageTransparency: number
)
	local nextOrder = createNextOrder()
	local row = React.createElement(Pane, {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = Enum.FillDirection.Horizontal,
		Size = UDim2.fromScale(1, 1),
		Spacing = spacing,
	}, {
		MaterialPreview = if props.CustomPreview
			then React.createElement(props.CustomPreview, {
				Size = UDim2.fromOffset(height, height),
			})
			else React.createElement(MaterialPreview, {
				ImageTransparency = imageTransparency,
				InitialDistance = props.InitialDistance,
				LayoutOrder = nextOrder(),
				Material = props.Material,
				MaterialPreviewGeometryType = props.MaterialPreviewGeometryType,
				MeshPartBackgroundColor = style.ListItemBackgroundColor,
				OverrideColor = props.OverrideColor,
				OverrideTransparency = props.OverrideTransparency,
				Size = UDim2.fromOffset(height, height),
				Static = true,
				Transparent = true,
				ref = ref,
			}),

		Label = React.createElement(TextLabel, {
			LayoutOrder = nextOrder(),
			Size = labelSize,
			Text = props.Text,
			TextColor = style.ListItemLabelTextColor,
			TextSize = style.TextSize,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextWrapped = false,
		}),
	})

	return row
end

local MaterialListItem = forwardRef(function(props: Props, ref)
	local style: _Style = props.Style
	local item = props.Item :: Types.Item

	local height = props.Size.Y.Offset
	local spacing = style.ListItemSpacing
	local labelSize = UDim2.new(1, -(height + spacing), 1, 0)
	local listItemsDisabled = props.ItemsDisabled == true

	local buttonStyle
	if props.Selected and props.Applied then
		buttonStyle = "RoundActiveApplied"
	elseif props.Selected then
		buttonStyle = "RoundActive"
	elseif props.Applied then
		buttonStyle = "RoundApplied"
	else
		buttonStyle = "Round"
	end

	local listContent = React.useMemo(
		function()
			return createListItemContent(
				props,
				style,
				ref,
				height,
				spacing,
				labelSize,
				if listItemsDisabled then 0.35 else 0
			)
		end,
		{
			props.CustomPreview,
			props.InitialDistance,
			props.Material,
			props.MaterialPreviewGeometryType,
			props.Text,
			style,
			ref,
			height,
			spacing,
			labelSize,
			listItemsDisabled,
		} :: { unknown }
	)

	local onClick = React.useCallback(function()
		props.OnClick(item)
	end, { props.OnClick, item } :: { unknown })

	local onRightClick = React.useCallback(function()
		if props.OnRightClick then
			props.OnRightClick(item)
		end
	end, { props.OnRightClick, item } :: { unknown })

	local onMouseEnter = React.useCallback(function()
		if props.OnMouseEnter then
			props.OnMouseEnter(item)
		end
	end, { props.OnMouseEnter, item } :: { unknown })

	local onMouseLeave = React.useCallback(function()
		if props.OnMouseLeave then
			props.OnMouseLeave(item)
		end
	end, { props.OnMouseLeave, item } :: { unknown })

	if props.Loading then
		return React.createElement(Pane, {
			ClipsDescendants = true,
			LayoutOrder = props.LayoutOrder,
			Position = props.Position,
			Size = UDim2.new(1, -10, 0, height),
			Style = "CornerBox",
		}, {
			Shimmer = React.createElement(Shimmer),
		})
	else
		return React.createElement(
			Button,
			Dash.join({
				LayoutOrder = props.LayoutOrder,
				OnClick = if listItemsDisabled then noop else onClick,
				OnRightClick = if listItemsDisabled then noop else onRightClick,
				OnMouseEnter = if listItemsDisabled then nil else onMouseEnter,
				OnMouseLeave = if listItemsDisabled then nil else onMouseLeave,
				Position = props.Position,
				Size = UDim2.new(1, -10, 0, height),
				Style = buttonStyle,
			}, {
				DisableHover = listItemsDisabled,
				StyleModifier = if listItemsDisabled then StyleModifier.Disabled else nil,
			}),
			{
				Content = listContent,
			}
		)
	end
end)

return MaterialListItem
