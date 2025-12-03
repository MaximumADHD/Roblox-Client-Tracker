local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local View = require(Foundation.Components.View)
local Image = require(Foundation.Components.Image)
local PopoverContext = require(script.Parent.Parent.PopoverContext)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local useFloating = require(script.Parent.Parent.useFloating)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)
local usePointerPosition = require(Foundation.Utility.usePointerPosition)
local isPointInGuiObjectBounds = require(Foundation.Utility.isPointInGuiObjectBounds)
local Constants = require(Foundation.Constants)

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local Radius = require(Foundation.Enums.Radius)
local Flags = require(Foundation.Utility.Flags)
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

local Types = require(Foundation.Components.Types)
local useElevation = require(Foundation.Providers.Elevation.useElevation)
local ElevationLayer = require(Foundation.Enums.ElevationLayer)
type ElevationLayer = ElevationLayer.ElevationLayer

type Selection = Types.Selection

type PopoverSide = PopoverSide.PopoverSide
type PopoverAlign = PopoverAlign.PopoverAlign
type Radius = Radius.Radius

type SideConfig = useFloating.SideConfig
type AlignConfig = useFloating.AlignConfig

export type PopoverContentProps = {
	-- The side the popover should be anchored to.
	side: SideConfig?,
	-- The alignment of the popover relative to the anchor.
	align: AlignConfig?,
	-- Whether the popover should have an arrow.
	hasArrow: boolean?,
	-- Callback for when the backdrop is pressed. Does not swallow the press event.
	onPressedOutside: () -> ()?,
	-- Selection behavior
	selection: Selection?,
	selectionGroup: Types.Bindable<boolean>? | Types.SelectionGroup?,
	backgroundStyle: Types.ColorStyle?,
	radius: (typeof(Radius.Small) | typeof(Radius.Medium) | typeof(Radius.Circle))?,
	children: React.ReactNode,
}

local defaultProps = {
	side = PopoverSide.Bottom,
	align = PopoverAlign.Center,
	hasArrow = true,
	selection = Constants.MODAL.DISABLE_SELECTION,
	selectionGroup = Constants.MODAL.TRAP_FOCUS,
	radius = Radius.Medium,
}

local radiusToTag: { [Radius]: string } = {
	[Radius.Small] = "radius-small",
	[Radius.Medium] = "radius-medium",
	[Radius.Circle] = "radius-circle",
}

local SHADOW_IMAGE = Constants.SHADOW_IMAGE
local SHADOW_SIZE = Constants.SHADOW_SIZE
local SHADOW_VERTICAL_OFFSET = 2

local function PopoverContent(contentProps: PopoverContentProps, forwardedRef: React.Ref<GuiObject>?)
	local props = withDefaults(contentProps, defaultProps)
	local popoverContext = React.useContext(PopoverContext)
	local hasGuiObjectAnchor = typeof(popoverContext.anchor) == "Instance"
	local hasArrow = if hasGuiObjectAnchor then props.hasArrow else false
	local overlay = useOverlay()

	local tokens = useTokens()
	local elevation = useElevation(ElevationLayer.Popover, { relativeToOwner = true })

	local arrowSide = tokens.Size.Size_200
	local arrowWidth = arrowSide * math.sqrt(2) -- The diagonal of a square is sqrt(2) times the side length
	local arrowHeight = arrowWidth / 2
	local backgroundStyle = props.backgroundStyle or tokens.Color.Surface.Surface_100

	local ref = React.useRef(nil)
	local backdropInstance, setBackdropInstance = React.useState(nil :: GuiObject?)
	local pointerPosition = usePointerPosition(backdropInstance)

	React.useImperativeHandle(forwardedRef, function()
		return ref.current
	end, {})

	local position, isVisible, contentSize, arrowPosition, screenSize, anchorPoint = useFloating(
		popoverContext.isOpen,
		popoverContext.anchor,
		ref.current,
		overlay,
		props.side,
		props.align,
		if hasArrow then arrowHeight else 0
	)

	local backdropListener = React.useRef(nil :: RBXScriptConnection?)

	local backdropCallback = React.useCallback(function(instance: GuiObject?)
		if backdropListener.current then
			backdropListener.current:Disconnect()
		end
		setBackdropInstance(instance)

		if instance ~= nil and props.onPressedOutside then
			backdropListener.current = instance:GetPropertyChangedSignal("GuiState"):Connect(function()
				if instance.GuiState == Enum.GuiState.Press then
					if popoverContext.anchor and hasGuiObjectAnchor then
						local anchor = popoverContext.anchor :: GuiObject
						local pointerPositionValue = pointerPosition:getValue()
						local isPointerWithinAnchorBounds = isPointInGuiObjectBounds(anchor, pointerPositionValue)

						if isPointerWithinAnchorBounds then
							return
						end

						if anchor.GuiState ~= Enum.GuiState.Idle then
							return
						end
					end

					-- Otherwise, treat as outside click
					props.onPressedOutside()
				end
			end)
		end
	end, { props.onPressedOutside, popoverContext.anchor } :: { unknown })

	React.useEffect(function()
		return function()
			if backdropListener.current then
				backdropListener.current:Disconnect()
			end
		end
	end, {})

	local content = React.createElement(
		if Flags.FoundationPopoverRootZIndex then View else React.Fragment,
		if Flags.FoundationPopoverRootZIndex
			then {
				ZIndex = if Flags.FoundationElevationSystem then elevation.zIndex else 4,
				tag = "size-full",
				Visible = isVisible,
				testId = `{popoverContext.testId}--container`,
			}
			else nil,
		{
			Backdrop = if props.onPressedOutside and popoverContext.isOpen
				then React.createElement(View, {
					ZIndex = 1,
					stateLayer = {
						affordance = StateLayerAffordance.None,
					},
					Size = if Flags.FoundationPopoverOversizedBackdrop
						then UDim2.fromScale(2, 2)
						else UDim2.fromScale(1, 1),
					tag = if Flags.FoundationPopoverOversizedBackdrop
						then "position-center-center anchor-center-center"
						else nil,
					ref = backdropCallback,
					testId = `{popoverContext.testId}--backdrop`,
				})
				else nil,
			Shadow = React.createElement(Image, {
				AnchorPoint = if Flags.FoundationPopoverOverflow then anchorPoint else nil,
				Image = SHADOW_IMAGE,
				Size = contentSize:map(function(value: UDim2)
					return value + UDim2.fromOffset(SHADOW_SIZE, SHADOW_SIZE)
				end),
				Position = if Flags.FoundationPopoverOverflow
					then React.joinBindings({ position, anchorPoint }):map(function(values: { Vector2 })
						local xShift = if values[2].X == 0 then -1 else 1
						local yShift = if values[2].Y == 0 then -1 else 1
						return UDim2.fromOffset(
							values[1].X + SHADOW_SIZE / 2 * xShift,
							values[1].Y + SHADOW_SIZE / 2 * yShift + SHADOW_VERTICAL_OFFSET
						)
					end)
					else position:map(function(value: Vector2)
						return UDim2.fromOffset(
							value.X - SHADOW_SIZE / 2,
							value.Y - SHADOW_SIZE / 2 + SHADOW_VERTICAL_OFFSET
						)
					end),
				ZIndex = 2,
				Visible = if Flags.FoundationPopoverRootZIndex then nil else isVisible,
				slice = {
					center = Rect.new(SHADOW_SIZE, SHADOW_SIZE, SHADOW_SIZE + 1, SHADOW_SIZE + 1),
				},
				imageStyle = tokens.Color.Extended.Black.Black_20,
				testId = `{popoverContext.testId}--shadow`,
			}),
			Arrow = if hasArrow
				then React.createElement(View, {
					Size = UDim2.fromOffset(arrowSide, arrowSide),
					Position = arrowPosition:map(function(value: Vector2)
						return UDim2.fromOffset(value.X, value.Y)
					end),
					Rotation = 45,
					ZIndex = 3,
					Visible = if Flags.FoundationPopoverRootZIndex then nil else isVisible,
					backgroundStyle = backgroundStyle,
					tag = "anchor-center-center",
					testId = `{popoverContext.testId}--arrow`,
				})
				else nil,
			Content = React.createElement(View, {
				AnchorPoint = if Flags.FoundationPopoverOverflow then anchorPoint else nil,
				Position = position:map(function(value: Vector2)
					return UDim2.fromOffset(value.X, value.Y)
				end),
				Visible = if Flags.FoundationPopoverRootZIndex then nil else isVisible,
				selection = props.selection,
				selectionGroup = if Flags.FoundationPopoverFocusTrap then props.selectionGroup else nil,
				sizeConstraint = {
					MaxSize = screenSize,
				},
				stateLayer = {
					affordance = StateLayerAffordance.None,
				},
				ZIndex = 4,
				-- If onPressedOutside is provided, we need to swallow the press event to prevent it from propagating to the backdrop
				onActivated = if props.onPressedOutside then function() end else nil,
				backgroundStyle = backgroundStyle,
				tag = `auto-xy {radiusToTag[props.radius]}`,
				ref = ref,
				testId = `{popoverContext.testId}--content`,
			}, props.children),
		}
	)

	if overlay == nil then
		return content
	end

	return ReactRoblox.createPortal(content, overlay)
end

return React.forwardRef(PopoverContent)
