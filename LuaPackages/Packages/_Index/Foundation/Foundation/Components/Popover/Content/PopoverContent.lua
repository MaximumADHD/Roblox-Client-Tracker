local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local View = require(Foundation.Components.View)
local Image = require(Foundation.Components.Image)
local PopoverContext = require(script.Parent.Parent.PopoverContext)
local OverlayContext = require(Foundation.Providers.Overlay.OverlayContext)
local useFloating = require(script.Parent.Parent.useFloating)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)

type PopoverSide = PopoverSide.PopoverSide
type PopoverAlign = PopoverAlign.PopoverAlign

type SideConfig = useFloating.SideConfig
type AlignConfig = useFloating.AlignConfig

type PopoverContentProps = {
	-- The side the popover should be anchored to.
	side: SideConfig?,
	-- The alignment of the popover relative to the anchor.
	align: AlignConfig?,
	-- Whether the popover should have an arrow.
	hasArrow: boolean?,
	-- Callback for when the backdrop is pressed. Does not swallow the press event.
	onPressedOutside: () -> ()?,
	children: React.ReactNode,
}

local defaultProps = {
	side = PopoverSide.Bottom,
	align = PopoverAlign.Center,
	hasArrow = true,
}

local SHADOW_IMAGE = "component_assets/dropshadow_17_8"
local SHADOW_SIZE = 16
local SHADOW_VERTICAL_OFFSET = 2

local function PopoverContent(contentProps: PopoverContentProps, forwardedRef: React.Ref<GuiObject>?)
	local props = withDefaults(contentProps, defaultProps)
	local popoverContext = React.useContext(PopoverContext)
	local overlayContext = React.useContext(OverlayContext)

	local tokens = useTokens()

	local arrowSide = tokens.Size.Size_200
	local arrowWidth = arrowSide * math.sqrt(2) -- The diagonal of a square is sqrt(2) times the side length
	local arrowHeight = arrowWidth / 2

	local ref = React.useRef(nil)

	React.useImperativeHandle(forwardedRef, function()
		return ref.current
	end, {})

	local position, isVisible, contentSize, arrowPosition, screenSize = useFloating(
		popoverContext.isOpen,
		popoverContext.anchor,
		ref.current,
		overlayContext.overlay,
		props.side,
		props.align,
		if props.hasArrow then arrowHeight else 0
	)

	local backdropListener = React.useRef(nil :: RBXScriptConnection?)

	local backdropCallback = React.useCallback(function(instance: GuiObject)
		if backdropListener.current then
			backdropListener.current:Disconnect()
		end

		if instance ~= nil and props.onPressedOutside then
			backdropListener.current = instance:GetPropertyChangedSignal("GuiState"):Connect(function()
				if instance.GuiState == Enum.GuiState.Press then
					props.onPressedOutside()
				end
			end)
		end
	end, { props.onPressedOutside })

	local content = React.createElement(React.Fragment, nil, {
		Backdrop = if props.onPressedOutside and popoverContext.isOpen
			then React.createElement(View, {
				ZIndex = 1,
				stateLayer = {
					affordance = StateLayerAffordance.None,
				},
				Size = UDim2.fromScale(1, 1),
				ref = backdropCallback,
			})
			else nil,
		Shadow = React.createElement(Image, {
			Image = SHADOW_IMAGE,
			Size = contentSize:map(function(value: UDim2)
				return value + UDim2.fromOffset(SHADOW_SIZE, SHADOW_SIZE)
			end),
			Position = position:map(function(value: Vector2)
				return UDim2.fromOffset(value.X - SHADOW_SIZE / 2, value.Y - SHADOW_SIZE / 2 + SHADOW_VERTICAL_OFFSET)
			end),
			ZIndex = 2,
			Visible = isVisible,
			slice = {
				center = Rect.new(SHADOW_SIZE, SHADOW_SIZE, SHADOW_SIZE + 1, SHADOW_SIZE + 1),
			},
			imageStyle = tokens.Color.Shift.Shift_100,
		}),
		Arrow = if props.hasArrow
			then React.createElement(View, {
				Size = UDim2.fromOffset(arrowSide, arrowSide),
				Position = arrowPosition:map(function(value: Vector2)
					return UDim2.fromOffset(value.X, value.Y)
				end),
				Rotation = 45,
				ZIndex = 3,
				Visible = isVisible,
				tag = "bg-surface-300 anchor-center-center",
			})
			else nil,
		Content = React.createElement(View, {
			Position = position:map(function(value: Vector2)
				return UDim2.fromOffset(value.X, value.Y)
			end),
			Visible = isVisible,
			sizeConstraint = {
				MaxSize = screenSize,
			},
			stateLayer = {
				affordance = StateLayerAffordance.None,
			},
			ZIndex = 4,
			-- If onPressedOutside is provided, we need to swallow the press event to prevent it from propagating to the backdrop
			onActivated = if props.onPressedOutside then function() end else nil,
			tag = "auto-xy bg-surface-300 radius-medium",
			ref = ref,
		}, props.children),
	})

	if not overlayContext.overlay then
		return content
	end

	return ReactRoblox.createPortal(content, overlayContext.overlay)
end

return React.forwardRef(PopoverContent)
