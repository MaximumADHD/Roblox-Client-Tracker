local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local Button = Foundation.Button
local View = Foundation.View

local useCallback = React.useCallback
local useDeviceInsets = MomentsCommon.Hooks.useDeviceInsets
local useTokens = Foundation.Hooks.useTokens

local CreationFlowContext = require(MomentsCreationFlow.Context.CreationFlowContext)

local CreationFlowLocalization = require(MomentsCreationFlow.Enums.CreationFlowLocalization)

type Props = {
	layoutOrder: number?,
	onTextOverlayDiscard: () -> (),
	onTextOverlaySave: () -> (),
}

local TextOverlayView = function(props: Props)
	local insets = useDeviceInsets()
	local tokens = useTokens()
	local creationFlowContext = React.useContext(CreationFlowContext)

	local onBack = useCallback(function()
		if props.onTextOverlayDiscard then
			props.onTextOverlayDiscard()
		end
	end, { props.onTextOverlayDiscard })

	local onDone = useCallback(function()
		if props.onTextOverlaySave then
			props.onTextOverlaySave()
		end
	end, { props.onTextOverlaySave })

	return React.createElement(View, {
		LayoutOrder = props.layoutOrder,
		tag = "align-x-center auto-y align-y-bottom anchor-bottom-center col gap-large position-bottom-center size-full-0",
	}, {
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, tokens.Padding.Small),
			PaddingBottom = UDim.new(0, math.max(insets.bottom, tokens.Padding.Small)),
			PaddingLeft = UDim.new(0, math.max(insets.left, tokens.Padding.XLarge)),
			PaddingRight = UDim.new(0, math.max(insets.right, tokens.Padding.XLarge)),
		}),

		Nav = React.createElement(View, {
			LayoutOrder = 1,
			tag = "align-x-center align-y-center auto-y gap-small row size-full-0 flex-x-between",
		}, {
			BackButton = React.createElement(Button, {
				fillBehavior = Foundation.Enums.FillBehavior.Fit,
				LayoutOrder = 1,
				text = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralCtaBack),
				variant = Foundation.Enums.ButtonVariant.Text,
				onActivated = onBack,
				size = Foundation.Enums.InputSize.Medium,
			}),

			DoneButton = React.createElement(Button, {
				fillBehavior = Foundation.Enums.FillBehavior.Fit,
				LayoutOrder = 2,
				text = creationFlowContext.getLocalization(CreationFlowLocalization.GeneralCtaDone),
				variant = Foundation.Enums.ButtonVariant.Text,
				onActivated = onDone,
				size = Foundation.Enums.InputSize.Medium,
			}),
		}),
	})
end

return TextOverlayView
