local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local Otter = require(Packages.Otter)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local ReactRoblox = require(Packages.ReactRoblox)
local useAnimatedBinding = ReactOtter.useAnimatedBinding

local CloseAffordance = require(Foundation.Components.CloseAffordance)
local Constants = require(Foundation.Constants)
local Image = require(Foundation.Components.Image)
local View = require(Foundation.Components.View)

local useOverlay = require(Foundation.Providers.Overlay.useOverlay)

local DialogSize = require(Foundation.Enums.DialogSize)
local OnCloseCallbackReason = require(Foundation.Enums.OnCloseCallbackReason)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)

local useScaledValue = require(Foundation.Utility.useScaledValue)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local Flags = require(Foundation.Utility.Flags)
local usePreferences = require(Foundation.Providers.Preferences.usePreferences)

local DialogTypes = require(script.Parent.Types)
local Types = require(Foundation.Components.Types)
local useDialogVariants = require(script.Parent.useDialogVariants).useDialogVariants
local DialogProvider = require(script.Parent.DialogProvider)
local useDialog = require(script.Parent.useDialog)
local useDialogResponsiveSize = require(script.Parent.useDialogResponsiveSize)
local useDialogSize = require(script.Parent.useDialogSize)

local useElevation = require(Foundation.Providers.Elevation.useElevation)
local OwnerScope = require(Foundation.Providers.Elevation.ElevationProvider).ElevationOwnerScope
local ElevationLayer = require(Foundation.Enums.ElevationLayer)
type ElevationLayer = ElevationLayer.ElevationLayer

type DialogSize = DialogSize.DialogSize
type OnCloseCallbackReason = OnCloseCallbackReason.OnCloseCallbackReason

export type DialogProps = {
	onClose: ((reason: OnCloseCallbackReason?) -> ())?,
	size: DialogSize?,
	disablePortal: boolean?,
	hasBackdrop: boolean?,
	children: React.ReactNode,
	testId: string?,
} & Types.NativeCallbackProps

type DialogInternalProps = {
	forwardRef: React.Ref<GuiObject>?,
} & DialogProps

local defaultProps = {
	size = DialogSize.Medium,
	disablePortal = true,
	hasBackdrop = false,
	testId = "--foundation-dialog",
}

local SHADOW_IMAGE = Constants.SHADOW_IMAGE
local SHADOW_SIZE = Constants.SHADOW_SIZE

-- selene: allow(high_cyclomatic_complexity) -- remove this when FoundationDialogAnimation is cleaned up
local function Dialog(dialogProps: DialogInternalProps)
	local props = Dash.assign({}, dialogProps, { LayoutOrder = 1 })
	local variants = useDialogVariants()
	local maxWidth = useScaledValue(variants.inner.maxWidth)
	local dialogBodyRef = React.useRef(nil)
	local dialogSizeBinding = useDialogSize(dialogBodyRef)
	local overlay = useOverlay()
	local elevation = useElevation(ElevationLayer.Dialog, { stackAboveOwner = false })
	local dialogContext = useDialog()

	useDialogResponsiveSize(props.size)

	local tokens = if Flags.FoundationDialogAnimation then useTokens() else nil :: never

	local reducedMotion = false
	if Flags.FoundationDialogAnimation then
		local preferences = usePreferences()
		reducedMotion = preferences.reducedMotion
	end

	local animationOffset = if Flags.FoundationDialogAnimation then tokens.Size.Size_800 else 0

	local animating, setAnimating
	if Flags.FoundationDialogAnimation then
		animating, setAnimating = React.useState(true)
	end

	local closing = if Flags.FoundationDialogAnimation then React.useRef(false) else nil :: never
	local closeReason = if Flags.FoundationDialogAnimation
		then React.useRef(nil :: OnCloseCallbackReason?)
		else nil :: never

	local backdropTransparency, setBackdropTransparencyGoal
	if Flags.FoundationDialogAnimation then
		backdropTransparency, setBackdropTransparencyGoal = useAnimatedBinding(1)
	end

	local bottomPosition, setBottomPositionGoal
	if Flags.FoundationDialogAnimation then
		bottomPosition, setBottomPositionGoal = useAnimatedBinding(animationOffset, function()
			setAnimating(false)
			if closing.current and props.onClose then
				props.onClose(closeReason.current)
			end
		end)
	end

	-- lute-lint-ignore(exhaustiveDeps) tokens.Ease and tokens.Time are stable between themes
	if Flags.FoundationDialogAnimation then
		React.useEffect(function()
			if reducedMotion then
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
	end

	local closeDialog
	if Flags.FoundationDialogAnimation then
		-- lute-lint-ignore(exhaustiveDeps) tokens.Ease and tokens.Time are stable between themes
		closeDialog = React.useCallback(function(reason: OnCloseCallbackReason?)
			if closing.current then
				return
			end
			closeReason.current = reason
			if reducedMotion then
				closing.current = true
				setBottomPositionGoal(Otter.instant(animationOffset))
				setBackdropTransparencyGoal(Otter.instant(1))
			else
				setBottomPositionGoal(Otter.ease(animationOffset, {
					easingStyle = tokens.Ease.StandardIn,
					duration = tokens.Time.Time_200,
				}))
				setBackdropTransparencyGoal(Otter.ease(1, {
					duration = tokens.Time.Time_100,
				}))
				setAnimating(true)
				closing.current = true
			end
		end, { animationOffset, reducedMotion } :: { unknown })
	end

	local stableContainer = if Flags.FoundationDialogAnimation
		then React.useMemo(function()
			return Instance.new("Folder")
		end, {})
		else nil :: never

	if Flags.FoundationDialogAnimation then
		React.useEffect(function()
			return function()
				stableContainer:Destroy()
			end
		end, { stableContainer })
	end

	-- TODO: remove this when https://github.com/Roblox/roact-alignment/pull/496 is merged
	local wrapperReady, setWrapperReady
	if Flags.FoundationDialogAnimation then
		wrapperReady, setWrapperReady = React.useState(false)
	end

	local dialogContentWrapperRef = if Flags.FoundationDialogAnimation
		then React.useCallback(function(rbx: GuiObject?)
			if rbx then
				stableContainer.Parent = rbx
				setWrapperReady(true)
			else
				stableContainer.Parent = nil
				setWrapperReady(false)
			end
		end, { stableContainer })
		else nil

	local DialogShadowWrapperNode = React.createElement(View, {
		tag = variants.container.tag,
		ZIndex = 2,
	}, {
		Shadow = React.createElement(Image, {
			Image = SHADOW_IMAGE,
			Size = dialogSizeBinding:map(function(size: Vector2): UDim2
				return UDim2.fromOffset(size.X + SHADOW_SIZE * 2, size.Y + SHADOW_SIZE * 2)
			end),
			slice = {
				center = Rect.new(SHADOW_SIZE, SHADOW_SIZE, SHADOW_SIZE, SHADOW_SIZE),
				scale = 2,
			},
			imageStyle = variants.shadow.imageStyle,
			testId = `{props.testId}--shadow`,
		}),
	})

	local DialogNode = React.createElement(View, {
		tag = variants.container.tag,
		ZIndex = 3,
	}, {
		DialogFlexStart = React.createElement(View, {
			tag = "fill",
			LayoutOrder = 0,
		}),
		DialogInner = React.createElement(
			View,
			withCommonProps(props, {
				tag = variants.inner.tag,
				ref = props.forwardRef,
				sizeConstraint = {
					MaxSize = Vector2.new(maxWidth, math.huge),
				},
				stateLayer = {
					affordance = StateLayerAffordance.None,
				},
				selection = DialogTypes.nonSelectable,
				selectionGroup = DialogTypes.isolatedSelectionGroup,
				-- Needed to sink the onActivated event to the backdrop
				onActivated = Dash.noop,
			}),
			{
				CloseAffordance = if props.onClose
					then React.createElement(CloseAffordance, {
						onActivated = if Flags.FoundationDialogAnimation
								and closeDialog
								and not reducedMotion
							then closeDialog
							else props.onClose,
						ref = dialogContext.closeAffordanceRef,
						NextSelectionDown = dialogContext.contentStartRef,
						Position = UDim2.new(1, -variants.closeAffordance.offset, 0, variants.closeAffordance.offset),
						AnchorPoint = Vector2.new(1, 0),
						ZIndex = 2,
						testId = `{props.testId}--close-affordance`,
					})
					else nil,
				DialogBody = React.createElement(View, {
					tag = variants.body.tag,
					ref = dialogBodyRef,
					testId = `{props.testId}--body`,
				}, React.createElement(OwnerScope, { owner = elevation }, props.children)),
			}
		),
		DialogFlexEnd = React.createElement(View, {
			tag = "fill",
			LayoutOrder = 2,
		}),
	})

	local content = React.createElement(View, {
		ZIndex = elevation.zIndex,
		tag = "size-full",
		testId = `{props.testId}--container`,
	}, {
		Backdrop = if props.hasBackdrop
			then React.createElement(View, {
				tag = "position-center-center anchor-center-center",
				Size = UDim2.fromScale(2, 2),
				stateLayer = {
					affordance = StateLayerAffordance.None,
				},
				onActivated = function()
					if props.onClose then
						if Flags.FoundationDialogAnimation and closeDialog and not reducedMotion then
							closeDialog(OnCloseCallbackReason.BackdropClick :: OnCloseCallbackReason)
						else
							props.onClose(OnCloseCallbackReason.BackdropClick)
						end
					end
				end,
				backgroundStyle = if Flags.FoundationDialogAnimation
						and not reducedMotion
						and backdropTransparency
					then backdropTransparency:map(function(value: number)
						return {
							Color3 = variants.backdrop.backgroundStyle.Color3,
							Transparency = math.lerp(
								variants.backdrop.backgroundStyle.Transparency :: number,
								1,
								value
							),
						}
					end)
					else variants.backdrop.backgroundStyle,
				ZIndex = 2,
				testId = `{props.testId}--backdrop`,
			})
			else nil,
		DialogContentWrapper = React.createElement(
			View,
			{
				ref = if Flags.FoundationDialogAnimation and not reducedMotion then dialogContentWrapperRef else nil,
				Position = if Flags.FoundationDialogAnimation
						and not reducedMotion
						and bottomPosition
					then bottomPosition:map(function(value: number)
						return UDim2.new(0.5, 0, 0.5, value)
					end)
					else nil,
				sizeConstraint = if Flags.FoundationDialogAnimation and not reducedMotion
					then { MaxSize = Vector2.new(maxWidth, math.huge) }
					else nil,
				tag = {
					["anchor-center-center size-full"] = Flags.FoundationDialogAnimation and not reducedMotion,
					["size-full"] = not Flags.FoundationDialogAnimation or reducedMotion,
				},
				ZIndex = 2,
				GroupTransparency = if Flags.FoundationDialogAnimation
						and not reducedMotion
						and animating
						and bottomPosition
					then bottomPosition:map(function(value: number)
						return value / animationOffset
					end)
					else nil,
			},
			if not Flags.FoundationDialogAnimation or reducedMotion
				then {
					DialogShadowWrapper = DialogShadowWrapperNode,
					Dialog = DialogNode,
				}
				else nil
		),
	})

	if Flags.FoundationDialogAnimation and not reducedMotion then
		local mainContent = if props.disablePortal or overlay == nil
			then content
			else ReactRoblox.createPortal(content, overlay)

		return React.createElement(React.Fragment, nil, {
			Main = mainContent,
			StableContent = if wrapperReady
				then ReactRoblox.createPortal(
					React.createElement(React.Fragment, nil, {
						DialogShadowWrapper = DialogShadowWrapperNode,
						Dialog = DialogNode,
					}),
					stableContainer
				)
				else nil,
		})
	end

	if props.disablePortal or overlay == nil then
		return content
	end

	return ReactRoblox.createPortal(content, overlay)
end

local function DialogContainer(dialogContainerProps: DialogProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(dialogContainerProps, defaultProps)

	return React.createElement(DialogProvider, {
		size = props.size,
		responsiveSize = props.size,
		testId = props.testId,
	}, {
		Dialog = React.createElement(
			Dialog,
			Dash.assign({}, props, {
				forwardRef = ref,
			})
		),
	})
end

return React.memo(React.forwardRef(DialogContainer))
