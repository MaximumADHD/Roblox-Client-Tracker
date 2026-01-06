local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local Dash = require(Packages.Dash)

local Constants = require(Foundation.Constants)
local View = require(Foundation.Components.View)
local CloseAffordance = require(Foundation.Components.CloseAffordance)
local Image = require(Foundation.Components.Image)

local useOverlay = require(Foundation.Providers.Overlay.useOverlay)

local DialogSize = require(Foundation.Enums.DialogSize)
local OnCloseCallbackReason = require(Foundation.Enums.OnCloseCallbackReason)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)

local Flags = require(Foundation.Utility.Flags)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local useScaledValue = require(Foundation.Utility.useScaledValue)

local Types = require(Foundation.Components.Types)
local DialogTypes = require(script.Parent.Types)
local useDialogVariants = require(script.Parent.useDialogVariants).useDialogVariants
local useDialogSize = require(script.Parent.useDialogSize)
local useDialogResponsiveSize = require(script.Parent.useDialogResponsiveSize)
local DialogProvider = require(script.Parent.DialogProvider)

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

local ROOT_Z_INDEX = 6

local function Dialog(dialogProps: DialogInternalProps)
	local props = Dash.assign({}, dialogProps, { LayoutOrder = 1 })
	local variants = useDialogVariants()
	local maxWidth = useScaledValue(variants.inner.maxWidth)
	local dialogBodyRef = React.useRef(nil)
	local dialogSizeBinding = useDialogSize(dialogBodyRef)
	local overlay = useOverlay()
	local elevation = useElevation(ElevationLayer.Dialog, { relativeToOwner = false })

	useDialogResponsiveSize(props.size)

	local dialogSurface = if not Flags.FoundationDialogOversizedBackdrop
		then React.createElement(View, {
			tag = variants.container.tag,
			ZIndex = if props.hasBackdrop
				then nil
				else if Flags.FoundationElevationSystem then elevation.zIndex else ROOT_Z_INDEX,
			testId = `{props.testId}--surface`,
		}, {
			Shadow = React.createElement(Image, {
				Image = SHADOW_IMAGE,
				tag = variants.shadow.tag,
				slice = {
					center = Rect.new(SHADOW_SIZE, SHADOW_SIZE, SHADOW_SIZE, SHADOW_SIZE),
					scale = 2,
				},
				imageStyle = variants.shadow.imageStyle,
				testId = `{props.testId}--shadow`,
			}, {
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
								onActivated = props.onClose,
								Position = UDim2.new(
									1,
									-variants.closeAffordance.offset,
									0,
									variants.closeAffordance.offset
								),
								AnchorPoint = Vector2.new(1, 0),
								ZIndex = 2,
								testId = `{props.testId}--close-affordance`,
							})
							else nil,
						DialogBody = React.createElement(
							View,
							{
								tag = variants.body.tag,
								ref = dialogBodyRef,
								testId = `{props.testId}--body`,
							},
							if Flags.FoundationElevationSystem
								then React.createElement(OwnerScope, { owner = elevation }, props.children)
								else props.children
						),
					}
				),
			}),
		})
		else nil

	local content = if not Flags.FoundationDialogOversizedBackdrop
		then React.createElement(React.Fragment, nil, {
			Backdrop = if props.hasBackdrop
				then React.createElement(View, {
					tag = "size-full-full",
					stateLayer = {
						affordance = StateLayerAffordance.None,
					},
					onActivated = function()
						if props.onClose then
							props.onClose(OnCloseCallbackReason.BackdropClick)
						end
					end,
					backgroundStyle = variants.backdrop.backgroundStyle,
					ZIndex = if Flags.FoundationElevationSystem then elevation.zIndex else ROOT_Z_INDEX,
					testId = `{props.testId}--backdrop`,
				}, {
					DialogSurface = dialogSurface,
				})
				else dialogSurface,
		})
		else React.createElement(View, {
			ZIndex = if Flags.FoundationElevationSystem then elevation.zIndex else ROOT_Z_INDEX,
			tag = "size-full",
			testId = `{props.testId}--container`,
		}, {
			Backdrop = if props.hasBackdrop
				then React.createElement(View, {
					tag = if Flags.FoundationDialogOversizedBackdrop
						then "position-center-center anchor-center-center"
						else "size-full-full",
					Size = if Flags.FoundationDialogOversizedBackdrop then UDim2.fromScale(2, 2) else nil,
					stateLayer = {
						affordance = StateLayerAffordance.None,
					},
					onActivated = function()
						if props.onClose then
							props.onClose(OnCloseCallbackReason.BackdropClick)
						end
					end,
					backgroundStyle = variants.backdrop.backgroundStyle,
					ZIndex = 2,
					testId = `{props.testId}--backdrop`,
				})
				else nil,
			DialogShadowWrapper = React.createElement(View, {
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
			}),
		}, {
			Dialog = React.createElement(View, {
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
								onActivated = props.onClose,
								Position = UDim2.new(
									1,
									-variants.closeAffordance.offset,
									0,
									variants.closeAffordance.offset
								),
								AnchorPoint = Vector2.new(1, 0),
								ZIndex = 2,
								testId = `{props.testId}--close-affordance`,
							})
							else nil,
						DialogBody = React.createElement(
							View,
							{
								tag = variants.body.tag,
								ref = dialogBodyRef,
								testId = `{props.testId}--body`,
							},
							if Flags.FoundationElevationSystem
								then React.createElement(OwnerScope, { owner = elevation }, props.children)
								else props.children
						),
					}
				),
				DialogFlexEnd = React.createElement(View, {
					tag = "fill",
					LayoutOrder = 2,
				}),
			}),
		})

	if props.disablePortal or overlay == nil then
		return content
	end

	return ReactRoblox.createPortal(content, overlay)
end

local function DialogContainer(dialogContainerProps: DialogProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(dialogContainerProps, defaultProps)

	return React.createElement(DialogProvider, {
		size = props.size :: DialogSize,
		responsiveSize = props.size :: DialogSize,
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
