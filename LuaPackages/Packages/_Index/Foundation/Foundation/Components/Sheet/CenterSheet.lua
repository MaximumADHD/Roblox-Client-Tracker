local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local Otter = require(Packages.Otter)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local ReactRoblox = require(Packages.ReactRoblox)
local useAnimatedBinding = ReactOtter.useAnimatedBinding
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)
local DIALOG_SIZES = require(Foundation.Components.Dialog.useDialogVariants).DIALOG_SIZES
local Constants = require(Foundation.Constants)
local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize
local ElevationLayer = require(Foundation.Enums.ElevationLayer)
type ElevationLayer = ElevationLayer.ElevationLayer
local useElevation = require(Foundation.Providers.Elevation.useElevation)
local OwnerScope = require(Foundation.Providers.Elevation.ElevationProvider).ElevationOwnerScope

local Flags = require(Foundation.Utility.Flags)

local usePreferences = require(Foundation.Providers.Preferences.usePreferences)

local SheetContext = require(script.Parent.SheetContext)
local SheetTypes = require(script.Parent.Types)
type SheetRef = SheetTypes.SheetRef
type SheetProps = SheetTypes.SheetProps
local SheetType = require(script.Parent.SheetType)

local CloseAffordance = require(Foundation.Components.CloseAffordance)
local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)

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
	local elevation = useElevation(ElevationLayer.Sheet, { stackAboveOwner = false })

	local reducedMotion = false
	if Flags.FoundationSheetReducedMotion then
		local preferences = usePreferences()
		reducedMotion = preferences.reducedMotion
	end

	local width = useScaledValue(DIALOG_SIZES[props.size])
	local maxHeight = useScaledValue(HEIGHT)
	local animationOffset = tokens.Size.Size_800

	-- Track the maximum available height based on viewport size
	local maxAvailableHeight, setMaxAvailableHeight
	if Flags.FoundationAddHeightPropToCenterSheet then
		maxAvailableHeight, setMaxAvailableHeight = React.useBinding(maxHeight)
	end

	local sheetContentHeight = if Flags.FoundationAddHeightPropToCenterSheet and maxAvailableHeight
		then maxAvailableHeight:map(function(value: number): number?
			if props.centerSheetHeight then
				if props.centerSheetHeight > 0 and props.centerSheetHeight <= 1 then
					return value * props.centerSheetHeight
				elseif props.centerSheetHeight > 1 then
					return math.min(props.centerSheetHeight, value)
				end
			end
			return nil
		end)
		else nil

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

	local closeAffordanceRef = React.useRef(nil) :: React.Ref<GuiObject>
	local contentStartRef, setContentStartRef = React.useState(nil :: React.Ref<GuiObject>?)

	-- Stable container for sheet content prevents children from remounting when
	-- GroupTransparency toggles and the host swaps (CanvasGroup <-> Frame).
	local stableContainer = if Flags.FoundationCenterSheetUseStableContainer
		then React.useMemo(function()
			local frame = Instance.new("Frame")
			frame.BackgroundTransparency = 1
			frame.BorderSizePixel = 0
			frame.AutomaticSize = Enum.AutomaticSize.XY
			return frame
		end, {})
		else nil :: never

	if Flags.FoundationCenterSheetUseStableContainer then
		React.useEffect(function()
			return function()
				stableContainer:Destroy()
			end
		end, {})
	end

	-- Imperatively reparent the stable container under whichever host the View creates.
	local sheetContainerRef = if Flags.FoundationCenterSheetUseStableContainer
		then React.useCallback(function(rbx: GuiObject?)
			if rbx then
				stableContainer.Parent = rbx
			else
				-- Rescue the stable container before React destroys the old host,
				-- which would otherwise cascade-destroy all descendants.
				stableContainer.Parent = nil
			end
		end, {})
		else nil

	-- lute-lint-ignore(exhaustiveDeps) tokens.Ease and tokens.Time are stable between themes
	React.useEffect(function()
		if Flags.FoundationSheetReducedMotion and reducedMotion then
			setBottomPositionGoal(Otter.instant(0) :: Otter.Goal<any>)
			setBackdropTransparencyGoal(Otter.instant(0) :: Otter.Goal<any>)
		else
			setBottomPositionGoal(Otter.ease(0, {
				easingStyle = tokens.Ease.StandardOut,
				duration = tokens.Time.Time_300,
			}))
			setBackdropTransparencyGoal(Otter.ease(0, {
				duration = tokens.Time.Time_100,
			}))
		end
	end, {})

	-- lute-lint-ignore(exhaustiveDeps) tokens.Ease and tokens.Time are stable between themes
	local closeSheet = React.useCallback(function()
		if closing.current then
			return
		end
		if Flags.FoundationSheetReducedMotion and reducedMotion then
			closing.current = true
			setBottomPositionGoal(Otter.instant(animationOffset))
			setBackdropTransparencyGoal(Otter.instant(1))
		else
			setBottomPositionGoal(Otter.ease(animationOffset, {
				easingStyle = tokens.Ease.StandardIn,
				duration = tokens.Time.Time_100,
			}))
			setBackdropTransparencyGoal(Otter.ease(1, {
				duration = tokens.Time.Time_100,
			}))
			setAnimating(true)
			closing.current = true
		end
	end, { animationOffset, if Flags.FoundationSheetReducedMotion then reducedMotion else nil } :: { unknown })

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
			sheetContentHeight = sheetContentHeight,
			setSheetContentHeight = Dash.noop,
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
			closeAffordanceRef = closeAffordanceRef,
			contentStartRef = contentStartRef,
			setContentStartRef = setContentStartRef,
		}
	end, { props.testId, closeSheet, contentStartRef, closeAffordanceRef, sheetContentHeight } :: { unknown })

	local SheetNode = React.createElement(View, {
		ClipsDescendants = true,
		Size = if Flags.FoundationAddHeightPropToCenterSheet
				and props.centerSheetHeight
				and sheetContentHeight
			then sheetContentHeight:map(function(value: number?)
				return if value then UDim2.new(1, 0, 0, value) else nil
			end)
			else nil,
		sizeConstraint = if Flags.FoundationAddHeightPropToCenterSheet
				and props.centerSheetHeight
				and maxAvailableHeight
			then {
				MaxSize = maxAvailableHeight:map(function(value: number)
					return Vector2.new(math.huge, value)
				end),
			}
			else nil,
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
		tag = if Flags.FoundationAddHeightPropToCenterSheet
			then {
				["bg-surface-100 stroke-default stroke-standard radius-large"] = true,
				["size-full-0 auto-y"] = props.centerSheetHeight == nil,
			}
			else "bg-surface-100 stroke-default stroke-standard radius-large size-full-0 auto-y",
		testId = props.testId,
	}, {
		Content = React.createElement(
			View,
			{
				Size = if Flags.FoundationAddHeightPropToCenterSheet
						and props.centerSheetHeight
						and sheetContentHeight
					then sheetContentHeight:map(function(value: number?)
						return if value then UDim2.new(1, 0, 0, value) else nil
					end)
					else nil,
				tag = "size-full-0 auto-y col items-center clip",
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
	})

	local ShadowNode = React.createElement(Image, {
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

	return overlay
		and React.createElement(React.Fragment, nil, {
			OverlayPortal = ReactRoblox.createPortal(
				React.createElement(View, {
					ZIndex = elevation.zIndex,
					tag = "size-full",
					testId = `{props.testId}--surface`,
				}, {
					SheetContainer = React.createElement(
						View,
						{
							ref = sheetContainerRef,
							ZIndex = 2,
							sizeConstraint = {
								MaxSize = Vector2.new(width, maxHeight),
							},
							Position = bottomPosition:map(function(value: number)
								return UDim2.new(0.5, 0, 0.5, value)
							end),
							tag = "size-full col align-y-center padding-medium anchor-center-center",
							testId = `{props.testId}--center-sheet-container`,
							GroupTransparency = if animating
								then bottomPosition:map(function(value: number)
									return value / animationOffset
								end)
								else nil,
							onAbsoluteSizeChanged = if Flags.FoundationAddHeightPropToCenterSheet
									and props.centerSheetHeight
									and setMaxAvailableHeight
								then function(rbx: GuiObject)
									local padding = tokens.Margin.Medium * 2
									setMaxAvailableHeight(math.min(rbx.AbsoluteSize.Y - padding, maxHeight))
								end
								else nil,
						},
						if not Flags.FoundationCenterSheetUseStableContainer
							then {
								Sheet = SheetNode,
								Shadow = React.createElement("Folder", nil, ShadowNode),
							}
							else nil
					),
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
			),
			SheetContent = if Flags.FoundationCenterSheetUseStableContainer
				then ReactRoblox.createPortal({
					Sheet = SheetNode,
					Shadow = ShadowNode,
				}, stableContainer)
				else nil,
		})
end

return React.memo(React.forwardRef(CenterSheet))
