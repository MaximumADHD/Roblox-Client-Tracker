local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local Otter = require(Packages.Otter)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local ReactRoblox = require(Packages.ReactRoblox)
local useAnimatedBinding = ReactOtter.useAnimatedBinding

local Backdrop = require(Foundation.Components.Backdrop)
local Constants = require(Foundation.Constants)
local OnCloseCallbackReason = require(Foundation.Enums.OnCloseCallbackReason)
local ElevationOwnerScope = require(Foundation.Providers.Elevation.ElevationProvider).ElevationOwnerScope
local ScrollView = require(Foundation.Components.ScrollView)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local View = require(Foundation.Components.View)
local useInternalDrawerVariants = require(script.Parent.useInternalDrawerVariants)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local usePreferences = require(Foundation.Providers.Preferences.usePreferences)
local useScreenSize = require(Foundation.Components.Sheet.useScreenSize)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InternalDrawerBackdrop = require(Foundation.Enums.InternalDrawerBackdrop)
local InternalDrawerShadow = require(Foundation.Enums.InternalDrawerShadow)
local InternalDrawerSide = require(Foundation.Enums.InternalDrawerSide)
local InternalDrawerTypes = require(script.Parent.Types)
type OnCloseCallbackReason = OnCloseCallbackReason.OnCloseCallbackReason

type InternalDrawerOverlayProps = InternalDrawerTypes.InternalDrawerProps & {
	testId: string,
	onExited: () -> (),
}

local function InternalDrawerOverlay(props: InternalDrawerOverlayProps, ref: React.Ref<GuiObject>?)
	local overlay = useOverlay()
	local tokens = useTokens()
	local variant = useInternalDrawerVariants(props.layout, props.side)
	local hasShadow = props.shadow == InternalDrawerShadow.Overlay300
	local elevation = props.elevation
	local reducedMotion = usePreferences().reducedMotion
	local screenSize = useScreenSize()

	local surface = variant.surface
	local maxWidth = math.max(screenSize.X - tokens.Size.Size_1200 - surface.margin, 0)
	local width = math.min(props.width, maxWidth)
	local surfaceWidth = width
	local outerBleed = props.outerBleed or 0
	local contentPadding = if outerBleed > 0
		then if props.side == InternalDrawerSide.End
			then { right = UDim.new(0, outerBleed) }
			else { left = UDim.new(0, outerBleed) }
		else nil

	local isOpenRef = React.useRef(props.isOpen)
	isOpenRef.current = props.isOpen

	local panelSettled = React.useRef(true)
	local backdropSettled = React.useRef(true)
	local panelValue = React.useRef(0)
	local backdropValue = React.useRef(1)
	local awaitingOpen = React.useRef(false)
	local onExitedRef = React.useRef(props.onExited)
	onExitedRef.current = props.onExited
	local onOpenCompleteRef = React.useRef(props.onOpenComplete)
	onOpenCompleteRef.current = props.onOpenComplete

	local function notifySettled()
		if not isOpenRef.current and panelSettled.current and backdropSettled.current then
			onExitedRef.current()
		elseif
			awaitingOpen.current
			and panelSettled.current
			and backdropSettled.current
			and panelValue.current == 1
			and backdropValue.current == 0
		then
			awaitingOpen.current = false
			local onOpenComplete = onOpenCompleteRef.current
			if onOpenComplete then
				onOpenComplete()
			end
		end
	end

	local panelProgress, setPanelGoal = useAnimatedBinding(0, function(value: number)
		panelValue.current = value
		panelSettled.current = true
		notifySettled()
	end)
	local backdropTransparency, setBackdropGoal = useAnimatedBinding(1, function(value: number)
		backdropValue.current = value
		backdropSettled.current = true
		notifySettled()
	end)

	-- lute-lint-ignore(exhaustiveDeps) tokens.Ease and tokens.Time are stable between colorModes
	React.useEffect(function()
		panelSettled.current = false
		backdropSettled.current = false
		awaitingOpen.current = props.isOpen and onOpenCompleteRef.current ~= nil
		if reducedMotion then
			setPanelGoal(Otter.instant(if props.isOpen then 1 else 0) :: Otter.Goal<any>)
			setBackdropGoal(Otter.instant(if props.isOpen then 0 else 1) :: Otter.Goal<any>)
		elseif props.isOpen then
			setPanelGoal(Otter.ease(1, {
				easingStyle = tokens.Ease.StandardOut,
				duration = tokens.Time.Time_300,
			}))
			setBackdropGoal(Otter.ease(0, {
				duration = tokens.Time.Time_100,
			}))
		else
			setPanelGoal(Otter.ease(0, {
				easingStyle = tokens.Ease.StandardIn,
				duration = tokens.Time.Time_100,
			}))
			setBackdropGoal(Otter.ease(1, {
				duration = tokens.Time.Time_100,
			}))
		end
	end, { props.isOpen, reducedMotion } :: { unknown })

	local onBackdropActivated = React.useCallback(function()
		if props.backdrop == InternalDrawerBackdrop.Dismissible and isOpenRef.current then
			props.onRequestClose(OnCloseCallbackReason.BackdropClick :: OnCloseCallbackReason)
		end
	end, { props.backdrop, props.onRequestClose } :: { unknown })

	local surfaceSize = UDim2.new(0, surfaceWidth + outerBleed, 1, -surface.margin * 2)
	local surfacePosition = panelProgress:map(function(value: number)
		local xOffset
		-- Closed panels sit outerBleed past the overlay edge so they clear the hardware inset. Open leaves this at zero.
		local hiddenBleed = (1 - value) * outerBleed
		if props.side == InternalDrawerSide.End then
			-- Top-left anchor, so the open width is the negative X offset.
			xOffset = -value * (surfaceWidth + surface.margin) + hiddenBleed
		else
			local hiddenOffset = (1 - value) * surfaceWidth
			xOffset = surface.openOffsetSign * surface.margin * value
				+ surface.hiddenOffsetSign * (hiddenOffset + outerBleed + hiddenBleed)
		end
		return UDim2.new(surface.anchorScaleX, xOffset, 0, surface.margin)
	end)

	return overlay
		and ReactRoblox.createPortal(
			React.createElement(View, {
				ZIndex = elevation.zIndex,
				tag = "size-full",
				testId = `{props.testId}--container`,
			}, {
				Surface = React.createElement(View, {
					Size = surfaceSize,
					Position = surfacePosition,
					ClipsDescendants = true,
					ZIndex = if hasShadow then 3 else 2,
					stateLayer = {
						affordance = StateLayerAffordance.None,
					},
					-- Sinks activation so clicks on the surface do not reach the backdrop
					onActivated = Dash.noop,
					selection = Constants.MODAL.DISABLE_SELECTION,
					selectionGroup = Constants.MODAL.TRAP_FOCUS,
					tag = `{surface.tag} {props.backgroundColor}`,
					ref = ref,
					testId = props.testId,
				}, {
					Content = React.createElement(
						View,
						{
							tag = "col size-full",
							padding = contentPadding,
							testId = `{props.testId}--column`,
						},
						React.createElement(ElevationOwnerScope, { owner = elevation }, {
							Header = if props.header ~= nil
								then React.createElement(View, {
									LayoutOrder = 1,
									tag = "col size-full-0 auto-y",
									testId = `{props.testId}--header`,
								}, props.header)
								else nil,
							Body = if props.scrolls == false
								then React.createElement(View, {
									LayoutOrder = 2,
									tag = "fill size-full-0",
									testId = `{props.testId}--body`,
								}, props.children)
								else React.createElement(ScrollView, {
									LayoutOrder = 2,
									scroll = {
										AutomaticCanvasSize = Enum.AutomaticSize.Y,
										CanvasSize = UDim2.fromScale(1, 0),
										ScrollingDirection = Enum.ScrollingDirection.Y,
										scrollBarVisibility = props.scrollBarVisibility,
									},
									tag = "fill size-full-0",
									testId = `{props.testId}--body`,
								}, {
									Children = React.createElement(View, {
										tag = "col size-full-0 auto-y",
										testId = `{props.testId}--body-content`,
									}, props.children),
								}),
							Footer = if props.footer ~= nil
								then React.createElement(View, {
									LayoutOrder = 3,
									tag = "col size-full-0 auto-y",
									testId = `{props.testId}--footer`,
								}, props.footer)
								else nil,
						})
					),
					InnerEdge = if variant.innerEdge.isVisible
						then React.createElement(View, {
							Size = UDim2.new(0, variant.innerEdge.thickness, 1, 0),
							backgroundStyle = variant.innerEdge.backgroundStyle,
							ZIndex = 2,
							tag = variant.innerEdge.tag,
							testId = `{props.testId}--inner-edge`,
						})
						else nil,
				}),
				Shadow = if hasShadow
					then React.createElement(View, {
						Size = surfaceSize,
						Position = surfacePosition,
						ZIndex = 2,
						tag = variant.shadow.tag,
						testId = `{props.testId}--shadow`,
					})
					else nil,
				Backdrop = React.createElement(Backdrop, {
					ZIndex = 1,
					transparency = backdropTransparency,
					onActivated = onBackdropActivated,
					testId = `{props.testId}--backdrop`,
				}),
			}),
			overlay
		)
end

return React.memo(React.forwardRef(InternalDrawerOverlay))
