local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local ElevationLayer = require(Foundation.Enums.ElevationLayer)
local InternalDrawer = require(Foundation.Components.InternalDrawer)
local InternalDrawerBackdrop = require(Foundation.Enums.InternalDrawerBackdrop)
local InternalDrawerLayout = require(Foundation.Enums.InternalDrawerLayout)
local InternalDrawerShadow = require(Foundation.Enums.InternalDrawerShadow)
local InternalDrawerSide = require(Foundation.Enums.InternalDrawerSide)
local InternalDrawerTypes = require(Foundation.Components.InternalDrawer.Types)
local OnCloseCallbackReason = require(Foundation.Enums.OnCloseCallbackReason)
local SwipeBehavior = require(Foundation.Enums.SwipeBehavior)
local useElevation = require(Foundation.Providers.Elevation.useElevation)
local useHardwareInsets = require(Foundation.Components.Sheet.useHardwareInsets)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local withDefaults = require(Foundation.Utility.withDefaults)
type InternalDrawerSwipeToDismiss = InternalDrawerTypes.InternalDrawerSwipeToDismiss
type InternalDrawerSwipeToOpen = InternalDrawerTypes.InternalDrawerSwipeToOpen
type SwipeBehavior = SwipeBehavior.SwipeBehavior
type OnCloseCallbackReason = OnCloseCallbackReason.OnCloseCallbackReason

-- Empty configs turn each gesture on with InternalDrawer's default thresholds.
local SWIPE_TO_DISMISS: InternalDrawerSwipeToDismiss = {}
local SWIPE_TO_OPEN: InternalDrawerSwipeToOpen = {}

export type NavigationDrawerProps = {
	-- Scrolls when it overflows the space between `header` and `footer`.
	children: React.ReactNode?,
	-- Pinned to the bottom. Content that should scroll away belongs in `children`.
	footer: React.ReactNode?,
	-- Pinned to the top. Content that should scroll away belongs in `children`.
	header: React.ReactNode?,
	-- Whether the drawer is open. Setting it to false plays the exit animation before the drawer unmounts.
	isOpen: boolean,
	-- Called when the user asks to close the drawer, including a backdrop click or a swipe toward the left edge. The consumer closes it by setting `isOpen` to false.
	onClose: (reason: OnCloseCallbackReason) -> (),
	-- Called after the exit animation finishes and the drawer unmounts.
	onCloseComplete: (() -> ())?,
	-- Called when a swipe inward from the left edge commits to opening. Set `isOpen` to true to open the drawer. Omitted, the swipe previews and then closes. Has no effect unless `swipe` is `Open` or `OpenAndDismiss`.
	onOpen: (() -> ())?,
	-- Called once when the enter animation finishes and the drawer is fully open.
	onOpenComplete: (() -> ())?,
	-- Which swipes the drawer accepts. `Open` opens from the left edge, `Dismiss` dismisses toward the left edge, and `OpenAndDismiss` does both. Omitted drawers ignore swipes.
	swipe: SwipeBehavior?,
	-- Identifier for the drawer root. Defaults to `--foundation-navigation-drawer`.
	testId: string?,
	-- Design pixels, scaled with the UI scale. Content never changes it, so long labels should wrap or truncate. On a narrow screen the drawer narrows to keep a strip of the backdrop visible. Defaults to 320.
	width: number?,
}

local defaultProps = {
	testId = "--foundation-navigation-drawer",
	width = 320,
}

local function NavigationDrawer(navigationDrawerProps: NavigationDrawerProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(navigationDrawerProps, defaultProps)
	local elevation = useElevation(ElevationLayer.Drawer, { stackAboveOwner = false })
	local overlay = useOverlay()
	local hardwareInsets = useHardwareInsets(overlay)
	local width = useScaledValue(props.width)
	local hasSwipeToOpen = props.swipe == SwipeBehavior.Open or props.swipe == SwipeBehavior.OpenAndDismiss
	local hasSwipeToDismiss = props.swipe == SwipeBehavior.Dismiss or props.swipe == SwipeBehavior.OpenAndDismiss

	return React.createElement(InternalDrawer, {
		elevation = elevation,
		isOpen = props.isOpen,
		onRequestClose = props.onClose,
		onOpenComplete = props.onOpenComplete,
		onCloseComplete = props.onCloseComplete,
		side = InternalDrawerSide.Start,
		width = width,
		outerBleed = hardwareInsets.left,
		backdrop = InternalDrawerBackdrop.Dismissible,
		layout = InternalDrawerLayout.FullBleed,
		shadow = InternalDrawerShadow.Overlay300,
		backgroundColor = "bg-surface-100",
		header = props.header,
		footer = props.footer,
		swipeToDismiss = if hasSwipeToDismiss then SWIPE_TO_DISMISS else nil,
		swipeToOpen = if hasSwipeToOpen then SWIPE_TO_OPEN else nil,
		onRequestOpen = props.onOpen,
		testId = props.testId,
		ref = ref,
	}, props.children)
end

return React.memo(React.forwardRef(NavigationDrawer))
