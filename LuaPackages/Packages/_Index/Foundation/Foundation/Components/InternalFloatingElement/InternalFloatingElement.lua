local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local ReactUtils = require(Packages.ReactUtils)
local usePrevious = ReactUtils.usePrevious

local Constants = require(Foundation.Constants)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local ElevationLayer = require(Foundation.Enums.ElevationLayer)
local OwnerScope = require(Foundation.Providers.Elevation.ElevationProvider).ElevationOwnerScope
local useElevation = require(Foundation.Providers.Elevation.useElevation)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local useOverlayTransition = require(Foundation.Utility.useOverlayTransition)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local useStableContainer = require(Foundation.Utility.useStableContainer)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local ScreenRegion = require(Foundation.Providers.ScreenRegion.ScreenRegion)
local ScreenRegionKind = require(Foundation.Providers.ScreenRegion.ScreenRegionKind)
local useRegionEntry = require(Foundation.Providers.ScreenRegion.useRegionEntry)

type ElevationLayer = ElevationLayer.ElevationLayer
type ScreenRegion = ScreenRegion.ScreenRegion
type ScreenRegionKind = ScreenRegionKind.ScreenRegionKind

-- The screen region the content queues in, and the kind its policy applies. Omit to show whenever open.
export type FloatingQueue = {
	region: ScreenRegion,
	kind: ScreenRegionKind,
}

export type InternalFloatingElementProps = {
	-- Whether the content is shown. Switching to false plays the exit transition before unmounting.
	isOpen: boolean,
	-- Called once the exit transition finishes and the content unmounts after a close.
	onCloseComplete: (() -> ())?,
	-- Elevation band the content renders in.
	layer: ElevationLayer,
	-- Screen region queue shared with other surfaces. The region's policy decides when the content may show; while it may not, the content is hidden but stays open.
	queue: FloatingQueue?,
	-- Content pinned to the bottom of the screen, laid out in a centered column. Each child needs a `LayoutOrder`.
	children: React.ReactNode,
} & Types.CommonProps

type FloatingContentProps = InternalFloatingElementProps & {
	progress: React.Binding<number>,
	isAnimating: boolean,
	forwardRef: React.Ref<GuiObject>?,
}

local defaultProps = {
	testId = "--foundation-floating-element",
}

local function FloatingContent(floatingContentProps: FloatingContentProps)
	local props = Dash.assign({ LayoutOrder = 1 }, floatingContentProps)
	local tokens = useTokens()
	local overlay = useOverlay()
	local elevation = useElevation(props.layer, { stackAboveOwner = false })
	local maxWidth = useScaledValue(Constants.FLOATING_MAX_WIDTH)

	local stableContainer, transitionRef = useStableContainer()
	local contentHeight, setContentHeight = React.useBinding(0)
	local margin = tokens.Padding.Large
	-- The overlay shadow reaches about 30px past the content, so the host leaves that much room on every side and is
	-- offset by the difference to keep the content `margin` from the screen edges.
	local shadowRoom = tokens.Size.Size_800
	local overhang = shadowRoom - margin

	local content = React.createElement(View, {
		ZIndex = elevation.zIndex,
		tag = "size-full",
		testId = `{props.testId}--container`,
	}, {
		-- Like CenterSheet's, the host is sized to the content plus room for its shadow rather than auto-sized or
		-- screen-sized, so the CanvasGroup it becomes while fading renders the content at full resolution.
		Transition = React.createElement(View, {
			ZIndex = elevation.zIndex,
			AnchorPoint = Vector2.new(0.5, 1),
			Position = props.progress:map(function(value: number)
				return UDim2.new(0.5, 0, 1, overhang + (1 - value) * tokens.Size.Size_800)
			end),
			Size = contentHeight:map(function(height: number)
				return UDim2.new(1, overhang * 2, 0, height + shadowRoom * 2)
			end),
			sizeConstraint = {
				MaxSize = Vector2.new(maxWidth + shadowRoom * 2, math.huge),
			},
			-- A CanvasGroup renders through a texture, which softens text, so only fade through one while animating.
			GroupTransparency = if props.isAnimating
				then props.progress:map(function(value: number)
					return 1 - value
				end)
				else nil,
			ref = transitionRef,
			testId = `{props.testId}--transition`,
		}),
	})

	local layout = React.createElement(View, {
		padding = UDim.new(0, shadowRoom),
		tag = "col align-x-center size-full",
	}, {
		Content = React.createElement(
			View,
			Dash.assign(
				withCommonProps(props, {
					tag = "col align-x-center size-full-0 auto-y",
					ref = props.forwardRef,
				}),
				{
					onAbsoluteSizeChanged = function(rbx: GuiObject)
						setContentHeight(rbx.AbsoluteSize.Y)
						if props.onAbsoluteSizeChanged then
							props.onAbsoluteSizeChanged(rbx)
						end
					end,
				}
			),
			React.createElement(OwnerScope, { owner = elevation }, props.children)
		),
	})

	return React.createElement(React.Fragment, nil, {
		Overlay = if overlay == nil then content else ReactRoblox.createPortal(content, overlay),
		StableContent = ReactRoblox.createPortal(layout, stableContainer),
	})
end

local function InternalFloatingElement(
	floatingElementProps: InternalFloatingElementProps,
	ref: React.Ref<GuiObject>?
): React.ReactNode
	local props = withDefaults(floatingElementProps, defaultProps)
	local isMounted, setIsMounted = React.useState(false)
	local queue = props.queue
	local regionEntry = useRegionEntry(if queue then queue.region else nil, {
		-- Only read when there is a region.
		kind = if queue then queue.kind else ScreenRegionKind.FloatingBanner,
		isOpen = props.isOpen,
		isMounted = isMounted,
	})
	local onCloseComplete = props.onCloseComplete

	-- The region hides the content without closing it, so only report a real close.
	local transition = useOverlayTransition({
		isOpen = props.isOpen and regionEntry.isVisible,
		onExited = function()
			if not props.isOpen and onCloseComplete then
				onCloseComplete()
			end
		end,
	})

	-- An entry closed while it waits in the region never plays an exit, so report the close here.
	local wasOpen = usePrevious(props.isOpen)
	React.useEffect(function()
		if wasOpen and not props.isOpen and not transition.isMounted and onCloseComplete then
			onCloseComplete()
		end
	end, { wasOpen, props.isOpen, transition.isMounted, onCloseComplete } :: { unknown })

	-- Report presence in the commit that changes it: the exit can finish outside a React update, and the next claimant
	-- waits on this report before it may appear.
	React.useLayoutEffect(function()
		setIsMounted(transition.isMounted)
	end, { transition.isMounted })

	if not transition.isMounted then
		return nil
	end

	return React.createElement(
		FloatingContent,
		Dash.assign({}, props, {
			progress = transition.progress,
			isAnimating = transition.isAnimating,
			forwardRef = ref,
		})
	)
end

return React.memo(React.forwardRef(InternalFloatingElement))
