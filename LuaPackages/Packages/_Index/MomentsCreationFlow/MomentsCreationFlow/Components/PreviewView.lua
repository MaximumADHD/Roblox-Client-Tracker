local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local Button = Foundation.Button
local ButtonVariant = Foundation.Enums.ButtonVariant
local InputSize = Foundation.Enums.InputSize
local View = Foundation.View

local useDeviceInsets = MomentsCommon.Hooks.useDeviceInsets
local useTokens = Foundation.Hooks.useTokens

local CreationFlowContext = require(MomentsCreationFlow.Context.CreationFlowContext)

local Constants = require(MomentsCreationFlow.Constants)
local CreationFlowLocalization = require(MomentsCreationFlow.Enums.CreationFlowLocalization)

type MomentItem = MomentsCommon.MomentItem

type Props = {
	layoutOrder: number,
	onContinueCallback: () -> (),
	onReturnToGalleryCallback: () -> ()?,
}

local PreviewView = function(props: Props): React.ReactElement?
	local insets = useDeviceInsets()
	local tokens = useTokens()
	local creationFlowContext = React.useContext(CreationFlowContext)

	return React.createElement(View, {
		LayoutOrder = props.layoutOrder,
		tag = "align-x-center auto-y size-full-0",
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, tokens.Padding.Large),
			PaddingBottom = UDim.new(0, math.max(insets.bottom, tokens.Padding.Large)),
			PaddingLeft = UDim.new(0, math.max(insets.left, tokens.Padding.XLarge)),
			PaddingRight = UDim.new(0, math.max(insets.right, tokens.Padding.XLarge)),
		}),

		SizeConstraint = React.createElement(View, {
			sizeConstraint = {
				MaxSize = Constants.BottomBarSizeConstraint,
			},
			tag = "align-x-center auto-y gap-small row size-full-0",
		}, {
			ContinueButton = React.createElement(Button, {
				fillBehavior = Foundation.Enums.FillBehavior.Fill,
				LayoutOrder = 1,
				onActivated = props.onContinueCallback,
				size = InputSize.Medium,
				text = creationFlowContext.getLocalization(CreationFlowLocalization.PublishingCtaContinue),
				variant = ButtonVariant.Emphasis,
				width = UDim.new(0.5, 0),
			}),

			ReturnToGalleryButton = if props.onReturnToGalleryCallback
				then React.createElement(Button, {
					fillBehavior = Foundation.Enums.FillBehavior.Fill,
					LayoutOrder = 2,
					text = creationFlowContext.getLocalization(CreationFlowLocalization.PublishingCtaReturn),
					variant = ButtonVariant.Standard,
					width = UDim.new(0.5, 0),
					onActivated = props.onReturnToGalleryCallback,
					size = InputSize.Medium,
				})
				else nil,
		}),
	})
end

return PreviewView
