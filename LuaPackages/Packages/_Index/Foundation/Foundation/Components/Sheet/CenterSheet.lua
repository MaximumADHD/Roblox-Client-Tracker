local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local Otter = require(Packages.Otter)
local ReactOtter = require(Packages.ReactOtter)
local Dash = require(Packages.Dash)
local useAnimatedBinding = ReactOtter.useAnimatedBinding
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local useTokens = require(Foundation.Providers.Style.useTokens)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local withDefaults = require(Foundation.Utility.withDefaults)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local DIALOG_SIZES = require(Foundation.Components.Dialog.useDialogVariants).DIALOG_SIZES
local DialogSize = require(Foundation.Enums.DialogSize)
local Constants = require(Foundation.Constants)
type DialogSize = DialogSize.DialogSize
local ElevationLayer = require(Foundation.Enums.ElevationLayer)
type ElevationLayer = ElevationLayer.ElevationLayer
local useElevation = require(Foundation.Providers.Elevation.useElevation)
local OwnerScope = require(Foundation.Providers.Elevation.ElevationProvider).ElevationOwnerScope

local Flags = require(Foundation.Utility.Flags)

local SheetContext = require(script.Parent.SheetContext)
local SheetTypes = require(script.Parent.Types)
type SheetRef = SheetTypes.SheetRef
type SheetProps = SheetTypes.SheetProps
local SheetType = require(script.Parent.SheetType)

local View = require(Foundation.Components.View)
local Image = require(Foundation.Components.Image)
local CloseAffordance = require(Foundation.Components.CloseAffordance)

type CenterSheetProps = SheetProps

local HEIGHT = 600

local defaultProps = {
	size = DialogSize.Medium,
	testId = "--foundation-sheet",
}

local SHADOW_IMAGE = Constants.SHADOW_IMAGE
local SHADOW_SIZE = Constants.SHADOW_SIZE

local function CenterSheet(centerSheetProps: CenterSheetProps, ref: React.Ref<GuiObject>)
	local props = withDefaults(centerSheetProps, defaultProps)
	local overlay = useOverlay()
	local tokens = useTokens()
	local elevation = useElevation(ElevationLayer.Sheet, { relativeToOwner = false })

	local width = useScaledValue(DIALOG_SIZES[props.size])
	local maxHeight = useScaledValue(HEIGHT)
	local animationOffset = tokens.Size.Size_800

	local animating, setAnimating = React.useState(true)

	local closing = React.useRef(false)
	local backdropTransparency, setBackdropTransparencyGoal = useAnimatedBinding(1, function()
		if closing.current then
			props.onClose()
		end
	end)

	local bottomPosition, setBottomPositionGoal = useAnimatedBinding(animationOffset, function()
		setAnimating(false)
	end)

	local hasActionsDivider, setHasActionsDivider = React.useBinding(false)
	local hasHeader, setHasHeader = React.useBinding(false)

	local innerScrollY, setInnerScrollY = React.useBinding(0)
	local sheetHeight, setSheetHeight = React.useBinding(0)

	React.useEffect(function()
		setBottomPositionGoal(Otter.ease(0, {
			easingStyle = tokens.Ease.StandardOut,
			duration = tokens.Time.Time_300,
		}))
		setBackdropTransparencyGoal(Otter.ease(0, {
			duration = tokens.Time.Time_100,
		}))
	end, {})

	local closeSheet = React.useCallback(function()
		if closing.current then
			return
		end
		setBottomPositionGoal(Otter.ease(animationOffset, {
			easingStyle = tokens.Ease.StandardIn,
			duration = tokens.Time.Time_100,
		}))
		setBackdropTransparencyGoal(Otter.ease(1, {
			duration = tokens.Time.Time_100,
		}))
		setAnimating(true)
		closing.current = true
	end, { animationOffset })

	React.useImperativeHandle(props.sheetRef, function()
		return {
			close = closeSheet,
		}
	end, {})

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
			sheetType = SheetType.Center,
			testId = props.testId,
		}
	end, { props.testId, closeSheet } :: { unknown })

	return overlay
		and ReactRoblox.createPortal(
			React.createElement(View, {
				ZIndex = if Flags.FoundationElevationSystem then elevation.zIndex else 5,
				tag = "size-full",
				testId = `{props.testId}--surface`,
			}, {
				SheetContainer = React.createElement(View, {
					ZIndex = 2,
					sizeConstraint = {
						MaxSize = Vector2.new(width, maxHeight),
					},
					Position = bottomPosition:map(function(value: number)
						return UDim2.new(0.5, 0, 0.5, value)
					end),
					tag = "size-full col align-y-center padding-medium anchor-center-center",
					GroupTransparency = if animating
						then bottomPosition:map(function(value: number)
							return value / animationOffset
						end)
						else nil,
				}, {
					Sheet = React.createElement(View, {
						ClipsDescendants = true,
						stateLayer = {
							affordance = StateLayerAffordance.None,
						},
						ZIndex = 2,
						-- Needed to sink the onActivated event to the backdrop
						onActivated = Dash.noop,
						onAbsoluteSizeChanged = function(rbx: GuiObject)
							setSheetHeight(rbx.AbsoluteSize.Y)
						end,
						ref = ref,
						selection = SheetTypes.nonSelectable,
						selectionGroup = SheetTypes.isolatedSelectionGroup,
						tag = if Flags.FoundationSheetCenterSheetNoShrink
							then "bg-surface-100 stroke-default stroke-standard radius-large size-full-0 auto-y"
							else "bg-surface-100 stroke-default stroke-standard radius-large size-full-0 shrink auto-y",
						testId = props.testId,
					}, {
						Content = React.createElement(
							View,
							{
								tag = if Flags.FoundationSheetCenterSheetNoShrink
									then "size-full-0 auto-y col items-center clip"
									else "size-full-0 auto-y shrink col items-center clip",
							},
							React.createElement(
								SheetContext.Provider,
								{
									value = contextValue,
								},
								if Flags.FoundationElevationSystem
									then React.createElement(OwnerScope, { owner = elevation }, props.children)
									else props.children
							)
						),
						CloseAffordance = React.createElement(CloseAffordance, {
							onActivated = closeSheet,
							variant = CloseAffordanceVariant.Utility,
							Position = UDim2.new(1, -tokens.Margin.Small, 0, tokens.Margin.Small),
							AnchorPoint = Vector2.new(1, 0),
							Visible = hasHeader:map(function(value: boolean)
								return not value
							end),
							testId = `{props.testId}--close-affordance`,
						}),
					}),
					Shadow = React.createElement(
						"Folder",
						nil,
						React.createElement(Image, {
							Image = SHADOW_IMAGE,
							Size = sheetHeight:map(function(value: number)
								return UDim2.new(1, SHADOW_SIZE * 2, 0, value + SHADOW_SIZE * 2)
							end),
							Position = UDim2.new(0, -SHADOW_SIZE, 0.5, 0),
							ZIndex = 1,
							slice = {
								center = Rect.new(SHADOW_SIZE, SHADOW_SIZE, SHADOW_SIZE + 1, SHADOW_SIZE + 1),
								scale = 2,
							},
							imageStyle = tokens.Color.Extended.Black.Black_10,
							tag = "anchor-center-left",
						})
					),
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

return React.memo(React.forwardRef(CenterSheet))
