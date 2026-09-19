--[[
	Deprecated. Used when the MaterialGridTerrainEditorItemUx fast flag is off.

	Item component used in MaterialGrid when ViewType equals Grid.

	Required Props:
		callback OnClick: Called when the grid item is clicked.
		UDim2 Position: The position of the component. Set by MaterialGrid.
		UDim2 Size: The size of the component. Set by MaterialGrid.
		table Style: The style table with which to render the component.

	Optional Props:
		callback CustomPreview: The CustomPreview to show for this grid item.
		number LayoutOrder: The layout order of the item.
		any Material: The Material to display in the grid item.
		boolean Loading: Whether to show the loading effect.
		callback OnRightClick: Called when the item is right clicked.
		boolean Selected: Whether the item is currently selected.
		boolean ShowGridLabels: Whether grid items should display a text label.
		boolean ShowTooltipWithLabel: Whether to show the tooltip even when a label is visible. Requires ShowGridLabels to be true and getFFlagMaterialGridShowTooltipWithLabel.
		string Text: The text to display in the item label.
]]

local main = script.Parent.Parent.Parent
local Types = require(main.Types)
local Packages = main.Parent

local Dash = require(Packages.Dash)
local Framework = require(Packages.Framework)
local React = require(Packages.React)

local getFFlagMaterialGridShowTooltipWithLabel = require(main.Flags.getFFlagMaterialGridShowTooltipWithLabel)

local UI = Framework.UI
local Pane = UI.Pane
local Shimmer = UI.Shimmer
local TextLabel = UI.TextLabel
local Tooltip = UI.Tooltip

local MaterialPreview = require(main.Components.MaterialPreview)

export type Props = {
	Applied: boolean?,
	CanvasPosition: Vector2,
	ShouldCenterTooltip: boolean?,
	ContainerXBounds: NumberRange?,
	ContainerYBounds: NumberRange?,
	CustomPreview: React.ComponentType<Types.CustomPreviewProps>?,
	GridItemSize: number,
	HoverEffectsEnabled: boolean?,
	InitialDistance: number?,
	InstantTooltipEnabled: boolean?,
	LayoutOrder: number?,
	Loading: boolean?,
	Material: Types.Material?,
	MaterialPreviewGeometryType: any?,
	OnClick: () -> (),
	OnMouseEnter: (() -> ())?,
	OnMouseLeave: (() -> ())?,
	OnMouseMoved: (() -> ())?,
	OnRenderChildren: (() -> {}?)?,
	OnRightClick: (() -> ())?,
	OnTooltipShown: (() -> ())?,
	Position: UDim2,
	Selected: boolean?,
	ShowGridLabels: boolean?,
	ShowTooltipWithLabel: boolean?,
	Size: UDim2,
	Style: _Style,
	Text: string?,
	TooltipDelay: number?,
}

type _Style = {
	GridItemBackgroundColor: Color3,
	GridItemBackgroundColorApplied: Color3,
	GridItemBackgroundColorHovered: Color3,
	GridItemBorderColor: Color3,
	GridItemBorderColorSelected: Color3,
	GridItemCornerRadius: UDim?,
	GridItemLabelPadding: {
		PaddingBottom: UDim?,
		PaddingLeft: UDim?,
		PaddingRight: UDim?,
		PaddingTop: UDim?,
	},
	MaterialPreviewStyle: string?,
	ShimmerSizeOffset: number,
	TextSize: number,
	TooltipDelay: number,
}

local function MaterialGridItem(props: Props, ref)
	local style: _Style = props.Style

	local function renderLabel()
		local labelPadding = style.GridItemLabelPadding

		return React.createElement(TextLabel, {
			AnchorPoint = Vector2.new(0, 1),
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromScale(1, 0),
			Position = UDim2.fromScale(0, 1),
			Text = props.Text,
			TextSize = style.TextSize,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextWrapped = false,
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingBottom = labelPadding.PaddingBottom,
				PaddingLeft = labelPadding.PaddingLeft,
			}),
		})
	end

	local shouldShowLabel = props.ShowGridLabels ~= false and props.Text and props.Text ~= ""

	local isHovered, setIsHovered = React.useState(false)

	if props.Loading then
		local shimmerSizeOffset = style.ShimmerSizeOffset
		return React.createElement(Pane, {
			LayoutOrder = props.LayoutOrder,
			Position = props.Position,
			Size = props.Size,
			Style = "BorderBox",
		}, {
			Shimmer = React.createElement(Shimmer, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				CornerRadius = style.GridItemCornerRadius,
				Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.new(1, -shimmerSizeOffset, 1, -shimmerSizeOffset),
			}),
		})
	else
		local tooltipAnchorPoint
		local tooltipPosition
		if props.ShouldCenterTooltip then -- Position the tooltip on the bottom half of the item
			tooltipAnchorPoint = UDim2.fromScale(0.5, 0.5)

			local tooltipPositionX = props.Position.X.Offset + (props.GridItemSize / 2)
			local tooltipPositionY = props.Position.Y.Offset + (0.8 * props.GridItemSize) - props.CanvasPosition.Y
			if props.ContainerYBounds then
				tooltipPositionY += props.ContainerYBounds.Min
			end
			tooltipPosition = Vector2.new(tooltipPositionX, tooltipPositionY)
		end

		local backgroundColor = style.GridItemBackgroundColor

		if props.Applied then
			backgroundColor = style.GridItemBackgroundColorApplied
		end

		if isHovered and props.HoverEffectsEnabled then
			backgroundColor = style.GridItemBackgroundColorHovered
		end

		local borderColor = if props.Selected then style.GridItemBorderColorSelected else style.GridItemBorderColor

		local function onMouseEnter()
			if props.OnMouseEnter then
				props.OnMouseEnter()
			end
			setIsHovered(true)
		end

		local function onMouseLeave()
			if props.OnMouseLeave then
				props.OnMouseLeave()
			end
			setIsHovered(false)
		end

		local children = {
			MaterialPreview = if props.CustomPreview
				then React.createElement(props.CustomPreview, {
					Size = UDim2.fromScale(1, 1),
				})
				else React.createElement(MaterialPreview, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor = backgroundColor,
					InitialDistance = props.InitialDistance,
					Material = props.Material,
					MaterialPreviewGeometryType = props.MaterialPreviewGeometryType,
					MeshPartBackgroundColor = style.GridItemBackgroundColor,
					Position = UDim2.fromScale(0.5, 0.5),
					Static = true,
					Style = style.MaterialPreviewStyle,
					Transparent = true,
					ref = ref,
				}),

			Label = if shouldShowLabel then renderLabel() else nil,

			UICorner = React.createElement("UICorner", {
				CornerRadius = style.GridItemCornerRadius,
			}),

			UIStroke = React.createElement("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = borderColor,
				Thickness = 1,
			}),

			-- Tooltip is suppressed when the label is visible (text is already shown); pass ShowTooltipWithLabel to override.
			Tooltip = if (
					if getFFlagMaterialGridShowTooltipWithLabel()
						then not shouldShowLabel or props.ShowTooltipWithLabel == true
						else not shouldShowLabel
				)
				then React.createElement(Tooltip, {
					AnchorPoint = tooltipAnchorPoint,
					ContainerXBounds = props.ContainerXBounds,
					ContainerYBounds = props.ContainerYBounds,
					Enabled = props.HoverEffectsEnabled,
					OnTooltipShown = props.OnTooltipShown,
					Position = tooltipPosition,
					ShowDelay = if props.InstantTooltipEnabled then 0 else props.TooltipDelay,
					Text = props.Text,
				})
				else nil,
		}

		local extraChildren
		if props.OnRenderChildren then
			extraChildren = props.OnRenderChildren()
		end

		return React.createElement("TextButton", {
			AutoButtonColor = false,
			BackgroundColor3 = backgroundColor,
			BorderSizePixel = 0,
			LayoutOrder = props.LayoutOrder,
			Position = props.Position,
			Size = props.Size,
			Text = "",
			Name = props.Text,

			[React.Event.Activated] = props.OnClick,
			[React.Event.MouseButton2Click] = props.OnRightClick,
			[React.Event.MouseEnter] = onMouseEnter,
			[React.Event.MouseLeave] = onMouseLeave,
			[React.Event.MouseMoved] = props.OnMouseMoved,
		}, Dash.join(children, extraChildren))
	end
end

return React.forwardRef(MaterialGridItem)
