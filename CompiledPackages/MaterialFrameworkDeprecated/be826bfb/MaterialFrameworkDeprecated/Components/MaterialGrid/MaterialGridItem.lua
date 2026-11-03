--[[
	Item component used in MaterialGrid when ViewType equals Grid.

	MaterialGrid chooses between this module and MaterialGridItemDeprecated via
	getFFlagMaterialGridTerrainEditorItemUx in MaterialGrid.init (CellComponent). This
	file is only loaded for the new UX path; do not gate behavior on that flag here.

	Required Props:
		Vector2 CanvasPosition: The current scroll canvas position; used for tooltip placement.
		number GridItemSize: The pixel size of the grid cell; used for tooltip placement.
		callback OnClick: Called when the grid item is clicked.
		UDim2 Position: The position of the component. Set by MaterialGrid.
		UDim2 Size: The size of the component. Set by MaterialGrid.
		table Style: The style table with which to render the component.

	Optional Props:
		boolean Applied: Whether the material is currently applied.
		NumberRange ContainerXBounds: Horizontal bounds of the scroll container for tooltip clamping.
		NumberRange ContainerYBounds: Vertical bounds of the scroll container for tooltip clamping.
		callback CustomPreview: The CustomPreview to show for this grid item.
		boolean HoverEffectsEnabled: Whether hover background and tooltip are active.
		number InitialDistance: Initial camera distance for the material preview.
		boolean InstantTooltipEnabled: Whether the tooltip appears with no delay.
		Types.Item Item: The item passed to click and hover callbacks.
		boolean ItemsDisabled: Whether items are non-interactive and visually dimmed.
		boolean Loading: Whether to show the loading effect.
		number LayoutOrder: The layout order of the item.
		Types.Material Material: The material to display in the grid item.
		Types.MaterialPreviewGeometryType MaterialPreviewGeometryType: Geometry type for the preview mesh.
		callback OnMouseEnter: Called when the mouse enters the item.
		callback OnMouseLeave: Called when the mouse leaves the item.
		callback OnMouseMoved: Called when the mouse moves over the item.
		callback OnRenderChildren: Returns extra children to render inside the item.
		callback OnRightClick: Called when the item is right clicked.
		callback OnTooltipShown: Called when the tooltip becomes visible.
		boolean Selected: Whether the item is currently selected.
		boolean ShouldCenterTooltip: Whether to position the tooltip at the item center.
		boolean ShowGridLabels: Whether grid items should display a text label.
		boolean ShowTooltipWithLabel: Whether to show the tooltip even when a label is visible. Requires ShowGridLabels to be true and getFFlagMaterialGridShowTooltipWithLabel.
		string Text: The text to display in the item label and tooltip.
		number TooltipDelay: Delay in seconds before the tooltip appears.
]]

local main = script.Parent.Parent.Parent
local Types = require(main.Types)
local Packages = main.Parent

local Dash = require(Packages.Dash)
local Framework = require(Packages.Framework)
local React = require(Packages.React)
local createNextOrder = require(main.Util.createNextOrder)

local getFFlagMaterialGridItemLabelFoundationStyle = require(main.Flags.getFFlagMaterialGridItemLabelFoundationStyle)
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
	MaterialPreviewGeometryType: Types.MaterialPreviewGeometryType?,
	Item: Types.Item?,
	OverrideColor: Color3?,
	OverrideTransparency: number?,
	OnClick: (item: Types.Item) -> (),
	OnMouseEnter: ((item: Types.Item) -> ())?,
	OnMouseLeave: ((item: Types.Item) -> ())?,
	OnMouseMoved: (() -> ())?,
	OnRenderChildren: ((item: Types.Item) -> {}?)?,
	OnRightClick: ((item: Types.Item) -> ())?,
	OnTooltipShown: (() -> ())?,
	ItemsDisabled: boolean?,
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
	ItemLabelTextColor: Color3,
	ItemLabelScrimColor: Color3,
	TextSize: number,
	TooltipDelay: number,
}

-- #121215 — same RGB as Foundation dark `Color.Surface.Surface_0` / `bg-surface-0`.
-- TODO: When MaterialFramework takes a Foundation dependency, use
-- `require(Packages.Foundation.Providers.Style.Tokens).defaultTokens.Color.Surface.Surface_0`
-- (or `getTokens` + theme) instead of this literal.
local LABEL_SCRIM_SURFACE_0 = Color3.fromHex("#121215")

local function noop() end

local function MaterialGridItem(props: Props, ref)
	local style: _Style = props.Style
	local item = props.Item :: Types.Item

	local isHovered, setIsHovered = React.useState(false)
	local itemsDisabled = props.ItemsDisabled == true
	local shouldShowLabel = props.ShowGridLabels ~= false and props.Text and props.Text ~= ""

	local scrimColor = if getFFlagMaterialGridItemLabelFoundationStyle()
		then style.ItemLabelScrimColor
		else LABEL_SCRIM_SURFACE_0

	-- Bottom-anchored on the swatch; scrim height matches the text (LabelArea sizes to the label).
	local labelAreaElement = React.useMemo(function()
		if not shouldShowLabel then
			return React.createElement(React.Fragment, {})
		end
		local nextOrder = createNextOrder()
		-- Top-anchored: bottom-anchored text does not size an AutomaticSize parent (scrim would be 0 height).
		return React.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 1),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.fromScale(0, 1),
			Size = UDim2.fromScale(1, 0),
		}, {
			Scrim = React.createElement("Frame", {
				[React.Tag] = "data-testid=MaterialGridItemScrim",
				BackgroundColor3 = scrimColor,
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				ZIndex = nextOrder(),
			}, {
				Shade = React.createElement("UIGradient", {
					Color = ColorSequence.new(scrimColor, scrimColor),
					Rotation = 90,
					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(1, 0),
					}),
				}),
			}),
			Text = React.createElement(TextLabel, {
				AnchorPoint = Vector2.zero,
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.fromScale(1, 0),
				Position = UDim2.fromScale(0, 0),
				Text = props.Text,
				TextColor = style.ItemLabelTextColor,
				TextSize = style.TextSize,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextWrapped = false,
				ZIndex = nextOrder(),
			}, {
				Padding = React.createElement("UIPadding", {
					PaddingBottom = style.GridItemLabelPadding.PaddingBottom,
					PaddingLeft = style.GridItemLabelPadding.PaddingLeft,
				}),
			}),
		})
	end, { shouldShowLabel, style, scrimColor, props.Text } :: { unknown })

	local onMouseEnter = React.useCallback(function()
		if itemsDisabled then
			return
		end
		if props.OnMouseEnter then
			props.OnMouseEnter(item)
		end
		setIsHovered(true)
	end, { itemsDisabled, props.OnMouseEnter, item, setIsHovered } :: { unknown })

	local onMouseLeave = React.useCallback(function()
		if not itemsDisabled then
			if props.OnMouseLeave then
				props.OnMouseLeave(item)
			end
		end
		setIsHovered(false)
	end, { itemsDisabled, props.OnMouseLeave, item, setIsHovered } :: { unknown })

	local onActivated = React.useCallback(function()
		props.OnClick(item)
	end, { props.OnClick, item } :: { unknown })

	local onMouseButton2Click = React.useCallback(function()
		if props.OnRightClick then
			props.OnRightClick(item)
		end
	end, { props.OnRightClick, item } :: { unknown })

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

		if isHovered and not itemsDisabled and props.HoverEffectsEnabled then
			backgroundColor = style.GridItemBackgroundColorHovered
		end

		local borderColor = if props.Selected then style.GridItemBorderColorSelected else style.GridItemBorderColor

		local swatchChildren = {
			MaterialPreview = if props.CustomPreview
				then React.createElement(props.CustomPreview, {
					Size = UDim2.fromScale(1, 1),
				})
				else React.createElement(MaterialPreview, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor = backgroundColor,
					ImageTransparency = if itemsDisabled then 0.35 else 0,
					InitialDistance = props.InitialDistance,
					Material = props.Material,
					MaterialPreviewGeometryType = props.MaterialPreviewGeometryType,
					MeshPartBackgroundColor = style.GridItemBackgroundColor,
					OverrideColor = props.OverrideColor,
					OverrideTransparency = props.OverrideTransparency,
					Position = UDim2.fromScale(0.5, 0.5),
					Static = true,
					Style = style.MaterialPreviewStyle,
					Transparent = true,
					ref = ref,
				}),

			LabelArea = labelAreaElement,

			UICorner = React.createElement("UICorner", {
				CornerRadius = style.GridItemCornerRadius,
			}),

			UIStroke = React.createElement("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = borderColor,
				Thickness = 1,
				Transparency = if itemsDisabled then 0.35 else 0,
			}),
		}

		-- Tooltip is suppressed when the label is visible (text is already shown); pass ShowTooltipWithLabel to override.
		local shouldShowTooltip = if getFFlagMaterialGridShowTooltipWithLabel()
			then not shouldShowLabel or props.ShowTooltipWithLabel == true
			else not shouldShowLabel

		local tooltipChild
		if shouldShowTooltip then
			tooltipChild = React.createElement(Tooltip, {
				AnchorPoint = tooltipAnchorPoint,
				ContainerXBounds = props.ContainerXBounds,
				ContainerYBounds = props.ContainerYBounds,
				Enabled = (props.HoverEffectsEnabled ~= false) and not itemsDisabled,
				OnTooltipShown = props.OnTooltipShown,
				Position = tooltipPosition,
				ShowDelay = if props.InstantTooltipEnabled then 0 else props.TooltipDelay,
				Text = props.Text,
			})
		else
			tooltipChild = React.createElement(React.Fragment, {})
		end

		local children = {
			Swatch = React.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, swatchChildren),
			Tooltip = tooltipChild,
			UICorner = React.createElement("UICorner", {
				CornerRadius = style.GridItemCornerRadius,
			}),
		}

		local extraChildren
		if props.OnRenderChildren then
			extraChildren = props.OnRenderChildren(item)
		end

		return React.createElement("TextButton", {
			Active = not itemsDisabled,
			AutoButtonColor = false,
			BackgroundColor3 = backgroundColor,
			BackgroundTransparency = if itemsDisabled then 0.35 else 0,
			BorderSizePixel = 0,
			LayoutOrder = props.LayoutOrder,
			Position = props.Position,
			Selectable = not itemsDisabled,
			Size = props.Size,
			Text = "",
			Name = props.Text,
			[React.Event.Activated] = if itemsDisabled then noop else onActivated,
			[React.Event.MouseButton2Click] = if itemsDisabled then noop else onMouseButton2Click,
			[React.Event.MouseEnter] = onMouseEnter,
			[React.Event.MouseLeave] = onMouseLeave,
			[React.Event.MouseMoved] = if not itemsDisabled then props.OnMouseMoved else nil,
		}, Dash.join(children, extraChildren))
	end
end

return React.forwardRef(MaterialGridItem)
