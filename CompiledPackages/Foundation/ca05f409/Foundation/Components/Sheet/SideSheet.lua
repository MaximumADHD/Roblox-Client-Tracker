local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local Otter = require(Packages.Otter)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local ReactRoblox = require(Packages.ReactRoblox)
local useAnimatedBinding = ReactOtter.useAnimatedBinding
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local Constants = require(Foundation.Constants)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

local SheetContext = require(script.Parent.SheetContext)
local SheetTypes = require(script.Parent.Types)
type SheetRef = SheetTypes.SheetRef
type SheetProps = SheetTypes.SheetProps
local SheetType = require(script.Parent.SheetType)

local useElevation = require(Foundation.Providers.Elevation.useElevation)
local OwnerScope = require(Foundation.Providers.Elevation.ElevationProvider).ElevationOwnerScope
local ElevationLayer = require(Foundation.Enums.ElevationLayer)
type ElevationLayer = ElevationLayer.ElevationLayer
local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

local useHardwareInsets = require(script.Parent.useHardwareInsets)
local useScreenSize = require(script.Parent.useScreenSize)

local CloseAffordance = require(Foundation.Components.CloseAffordance)
local Flags = require(Foundation.Utility.Flags)
local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)

local usePreferences = require(Foundation.Providers.Preferences.usePreferences)

type SideSheetProps = {
	displaySize: Enum.DisplaySize,
} & SheetProps

local SMALL_DISPLAY_WIDTH = 400
local LARGE_DISPLAY_WIDTH = 360

local SIDE_SHEET_WIDTHS: { [DialogSize]: { TARGET_WIDTH: number, MIN: number, MAX: number } } = {
	[DialogSize.Medium] = {
		TARGET_WIDTH = 0.40,
		MIN = 360,
		MAX = 440,
	},
	[DialogSize.Large] = {
		TARGET_WIDTH = 0.5,
		MIN = 440,
		MAX = 640,
	},
}

local defaultProps = {
	testId = "--foundation-sheet",
	size = if Flags.FoundationSideSheetNewWidthCalculation then DialogSize.Medium else nil :: never,
}

local SHADOW_IMAGE = Constants.SHADOW_IMAGE
local SHADOW_SIZE = Constants.SHADOW_SIZE

local function SideSheet(sideSheetProps: SideSheetProps, ref: React.Ref<GuiObject>)
	local props = withDefaults(sideSheetProps, defaultProps)
	local overlay = useOverlay()
	local tokens = useTokens()
	local elevation = useElevation(ElevationLayer.Sheet, { stackAboveOwner = false })
	local reducedMotion = false
	if Flags.FoundationSheetReducedMotion then
		local preferences = usePreferences()
		reducedMotion = preferences.reducedMotion
	end

	local hardwareInsets = useHardwareInsets(overlay)
	local screenSize = if Flags.FoundationSideSheetNewWidthCalculation then useScreenSize() else nil :: never
	local safeAreaPadding = hardwareInsets.right
	-- Top hardware inset in landscape orientation currently is only possible if it's top bar
	local topBarHeight = if Flags.FoundationSheetSideSheetTopBarFix then hardwareInsets.top else 0

	local isSmallDisplay = props.displaySize == Enum.DisplaySize.Small

	local targetWidth
	local minWidth
	local maxWidth
	if Flags.FoundationSideSheetNewWidthCalculation then
		local scaleFactor = tokens.Config.UI.Scale
		targetWidth = SIDE_SHEET_WIDTHS[props.size].TARGET_WIDTH
		minWidth = SIDE_SHEET_WIDTHS[props.size].MIN * scaleFactor
		maxWidth = SIDE_SHEET_WIDTHS[props.size].MAX * scaleFactor
	end

	local width = if Flags.FoundationSideSheetNewWidthCalculation
		then math.clamp(screenSize.X * targetWidth, minWidth, maxWidth)
		else useScaledValue(if isSmallDisplay then SMALL_DISPLAY_WIDTH else LARGE_DISPLAY_WIDTH)
	local sheetPadding = tokens.Padding.Medium

	local closing = React.useRef(false)
	local backdropTransparency, setBackdropTransparencyGoal = useAnimatedBinding(1, function()
		if closing.current then
			props.onClose()
		end
	end)

	local closedPosition = -(safeAreaPadding + if isSmallDisplay then 0 else sheetPadding)
	local rightPosition, setRightPositionGoal = useAnimatedBinding(closedPosition)

	local hasActionsDivider, setHasActionsDivider = React.useBinding(false)
	local hasHeader, setHasHeader = React.useBinding(false)

	local innerScrollY, setInnerScrollY = React.useBinding(0)

	local closeAffordanceRef = React.useRef(nil) :: React.Ref<GuiObject>
	local contentStartRef, setContentStartRef = React.useState(nil :: React.Ref<GuiObject>?)

	-- lute-lint-ignore(exhaustiveDeps) tokens.Ease and tokens.Time are stable between themes
	React.useEffect(function()
		if Flags.FoundationSheetReducedMotion and reducedMotion then
			setRightPositionGoal(Otter.instant(width) :: Otter.Goal<any>)
			setBackdropTransparencyGoal(Otter.instant(0) :: Otter.Goal<any>)
		else
			setRightPositionGoal(Otter.ease(width, {
				easingStyle = tokens.Ease.StandardOut,
				duration = tokens.Time.Time_300,
			}))
			setBackdropTransparencyGoal(Otter.ease(0, {
				duration = tokens.Time.Time_100,
			}))
		end
	end, { width, if Flags.FoundationSheetReducedMotion then reducedMotion else nil } :: { unknown })

	-- lute-lint-ignore(exhaustiveDeps) tokens.Ease and tokens.Time are stable between themes
	local closeSheet = React.useCallback(function()
		if closing.current then
			return
		end
		if Flags.FoundationSheetReducedMotion and reducedMotion then
			closing.current = true
			setRightPositionGoal(Otter.instant(closedPosition))
			setBackdropTransparencyGoal(Otter.instant(1))
		else
			setRightPositionGoal(Otter.ease(closedPosition, {
				easingStyle = tokens.Ease.StandardIn,
				duration = tokens.Time.Time_100,
			}))
			setBackdropTransparencyGoal(Otter.ease(1, {
				duration = tokens.Time.Time_100,
			}))
			closing.current = true
		end
	end, { closedPosition, if Flags.FoundationSheetReducedMotion then reducedMotion else nil } :: { unknown })

	React.useImperativeHandle(props.sheetRef, function()
		return {
			close = closeSheet,
		}
	end, {})

	local sheetSize = UDim2.new(
		0,
		width + if isSmallDisplay then safeAreaPadding else 0,
		1,
		(if isSmallDisplay then 0 else -sheetPadding * 2) + topBarHeight
	)

	local sheetPosition = rightPosition:map(function(value: number)
		return UDim2.new(
			1,
			if isSmallDisplay then -value else -(value + sheetPadding),
			0,
			(if isSmallDisplay then 0 else sheetPadding) - topBarHeight
		)
	end)

	local contextValue = React.useMemo(function()
		return {
			actionsHeight = 0,
			setActionsHeight = Dash.noop,
			hasActionsDivider = hasActionsDivider,
			setHasActionsDivider = setHasActionsDivider,
			sheetHeightAvailable = 0,
			setSheetHeightAvailable = Dash.noop,
			safeAreaPadding = 0,
			bottomPadding = 0,
			innerScrollingEnabled = true,
			innerScrollY = innerScrollY,
			setInnerScrollY = setInnerScrollY,
			hasHeader = hasHeader,
			setHasHeader = setHasHeader,
			closeSheet = closeSheet,
			sheetType = SheetType.Side,
			testId = props.testId,
			closeAffordanceRef = closeAffordanceRef,
			contentStartRef = contentStartRef,
			setContentStartRef = setContentStartRef,
		}
	end, { props.testId, closeSheet, contentStartRef, closeAffordanceRef } :: { unknown })

	return overlay
		and ReactRoblox.createPortal(
			React.createElement(View, {
				ZIndex = elevation.zIndex,
				tag = "size-full",
				testId = `{props.testId}--surface`,
			}, {
				Sheet = React.createElement(View, {
					Size = sheetSize,
					Position = sheetPosition,
					ClipsDescendants = true,
					ZIndex = 3,
					padding = if isSmallDisplay and safeAreaPadding > 0
						then {
							right = UDim.new(0, safeAreaPadding),
						}
						else nil,
					stateLayer = {
						affordance = StateLayerAffordance.None,
					},
					-- Needed to sink the onActivated event to the backdrop
					onActivated = Dash.noop,
					ref = ref,
					selection = SheetTypes.nonSelectable,
					selectionGroup = SheetTypes.isolatedSelectionGroup,
					tag = {
						["bg-surface-100 stroke-default stroke-standard"] = true,
						["radius-large"] = not isSmallDisplay,
					},
					testId = props.testId,
				}, {
					Content = React.createElement(
						View,
						{
							tag = "size-full-full col items-center clip",
						},
						React.createElement(SheetContext.Provider, {
							value = contextValue,
						}, React.createElement(OwnerScope, { owner = elevation }, props.children))
					),
					CloseAffordance = React.createElement(CloseAffordance, {
						onActivated = closeSheet,
						ref = closeAffordanceRef,
						NextSelectionDown = contentStartRef,
						variant = CloseAffordanceVariant.Utility,
						Position = UDim2.new(1, -tokens.Margin.Small, 0, tokens.Margin.Small),
						AnchorPoint = Vector2.new(1, 0),
						Visible = hasHeader:map(function(value: boolean)
							return not value
						end),
						testId = `{props.testId}--close-affordance`,
					}),
				}),
				Shadow = React.createElement(Image, {
					Image = SHADOW_IMAGE,
					Size = sheetSize + UDim2.fromOffset(SHADOW_SIZE * 2, SHADOW_SIZE * 2),
					Position = sheetPosition:map(function(value: UDim2)
						return value + UDim2.fromOffset(-SHADOW_SIZE, -SHADOW_SIZE)
					end),
					ZIndex = 2,
					slice = {
						center = Rect.new(SHADOW_SIZE, SHADOW_SIZE, SHADOW_SIZE + 1, SHADOW_SIZE + 1),
						scale = 2,
					},
					imageStyle = tokens.Color.Extended.Black.Black_10,
				}),
				Backdrop = React.createElement(View, {
					Size = UDim2.fromScale(2, 2),
					Position = UDim2.fromScale(-0.5, -0.5),
					ZIndex = 1,
					stateLayer = {
						affordance = StateLayerAffordance.None,
					},
					backgroundStyle = backdropTransparency:map(function(value: number)
						return {
							Color3 = tokens.Color.Common.Backdrop.Color3,
							Transparency = math.lerp(tokens.Color.Common.Backdrop.Transparency, 1, value),
						}
					end),
					onActivated = closeSheet,
					testId = `{props.testId}--backdrop`,
				}),
			}),
			overlay
		)
end

return React.memo(React.forwardRef(SideSheet))
