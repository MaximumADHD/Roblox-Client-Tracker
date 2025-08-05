local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local CloseAffordance = require(Foundation.Components.CloseAffordance)
local Image = require(Foundation.Components.Image)
local DialogSize = require(Foundation.Enums.DialogSize)
local OnCloseCallbackReason = require(Foundation.Enums.OnCloseCallbackReason)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local useOverlay = require(Foundation.Providers.Overlay.useOverlay)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local useDialogVariants = require(script.Parent.useDialogVariants).useDialogVariants
local useDialogSize = require(script.Parent.useDialogSize)
local useDialogResponsiveSize = require(script.Parent.useDialogResponsiveSize)
local DialogLayoutProvider = require(script.Parent.DialogLayoutProvider)

type DialogSize = DialogSize.DialogSize
type OnCloseCallbackReason = OnCloseCallbackReason.OnCloseCallbackReason

type DialogProps = {
	title: Types.Bindable<string>?,
	onClose: ((reason: OnCloseCallbackReason?) -> ())?,
	size: DialogSize?,
	children: React.ReactNode,
} & Types.NativeCallbackProps

type DialogInternalProps = DialogProps & {
	forwardRef: React.Ref<GuiObject>?,
}

local defaultProps = {
	size = DialogSize.Large,
}

local SHADOW_IMAGE = "component_assets/dropshadow_17_8"
local SHADOW_SIZE = 16

local function Dialog(dialogProps: DialogInternalProps)
	local overriddenProps = Dash.assign({}, dialogProps, { LayoutOrder = 1 })
	local props = withDefaults(overriddenProps, defaultProps)
	local overlay = useOverlay()
	local variants = useDialogVariants()
	local maxWidth = useScaledValue(variants.dialogInner.maxWidth)
	local dialogInnerRef = React.useRef(nil)
	local dialogSizeBinding = useDialogSize(dialogInnerRef)

	useDialogResponsiveSize(overlay, props.size)

	return React.createElement(React.Fragment, nil, {
		Backdrop = React.createElement(View, {
			tag = "size-full-full",
			stateLayer = {
				affordance = StateLayerAffordance.None,
			},
			onActivated = function()
				if props.onClose then
					props.onClose(OnCloseCallbackReason.BackdropClick)
				end
			end,
			backgroundStyle = variants.dialogBackdrop.backgroundStyle,
			ZIndex = 1,
			testId = "--foundation-dialog-backdrop",
		}),
		DialogShadowWrapper = React.createElement(View, {
			tag = variants.dialogContainer.tag,
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
				imageStyle = variants.dialogShadow.imageStyle,
				testId = "--foundation-dialog-shadow",
			}),
		}),
	}, {
		Dialog = React.createElement(View, {
			tag = variants.dialogContainer.tag,
			testId = "--foundation-dialog",
			ZIndex = 3,
		}, {
			DialogFlexStart = React.createElement(View, {
				tag = "fill",
				LayoutOrder = 0,
			}),
			DialogInner = React.createElement(
				View,
				withCommonProps(props, {
					tag = variants.dialogInner.tag,
					ref = props.forwardRef,
					sizeConstraint = {
						MaxSize = Vector2.new(maxWidth, math.huge),
					},
					stateLayer = {
						affordance = StateLayerAffordance.None,
					},
					onActivated = function() end,
				}),
				{
					CloseAffordance = if props.onClose
						then React.createElement(CloseAffordance, {
							onActivated = props.onClose,
							Position = UDim2.new(
								1,
								-variants.dialogCloseAffordance.offset,
								0,
								variants.dialogCloseAffordance.offset
							),
							AnchorPoint = Vector2.new(1, 0),
							ZIndex = 2,
							testId = "--foundation-dialog-close-affordance",
						})
						else nil,
					DialogBody = React.createElement(View, {
						tag = variants.dialogBody.tag,
						ref = dialogInnerRef,
						testId = "--foundation-dialog-body",
					}, props.children),
				}
			),
			DialogFlexEnd = React.createElement(View, {
				tag = "fill",
				LayoutOrder = 2,
			}),
		}),
	})
end

local function DialogContainer(props: DialogProps, ref: React.Ref<GuiObject>?)
	return React.createElement(DialogLayoutProvider, {
		size = props.size :: DialogSize,
		responsiveSize = props.size :: DialogSize,
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
