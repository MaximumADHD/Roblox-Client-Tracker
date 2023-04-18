local HttpService = game:GetService("HttpService")

local PremiumUpsellRoot = script.Parent
local PurchaseFlowRoot = PremiumUpsellRoot.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local UIBlox = require(Packages.UIBlox)
local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal

local PremiumUpsellFlowState = require(PremiumUpsellRoot.PremiumUpsellFlowState)

local Animator = require(IAPExperienceRoot.Generic.Animator)
local LoadingOverlay = require(IAPExperienceRoot.Generic.LoadingOverlay)
local LoadingOverlayState = require(IAPExperienceRoot.Generic.LoadingOverlayState)
local PurchaseErrorPrompt = require(IAPExperienceRoot.Generic.PurchaseErrorPrompt)
local PremiumUpsellPrompt = require(IAPExperienceRoot.PremiumUpsell.PremiumUpsellPrompt)

local getModalShownEventData = require(IAPExperienceRoot.Utility.getModalShownEventData)
local getUserInputEventData = require(IAPExperienceRoot.Utility.getUserInputEventData)

local PremiumUpsellFlow = Roact.Component:extend(script.Name)

type Props = {
	screenSize: Vector2,

	isCatalog: bool,

	purchaseState: any?,
	errorType: any?,

	currencySymbol: string?,
	robuxPrice: number?,
	robuxAmount: number?,

	acceptControllerIcon: { [string]: any? },

	purchasePremium: () -> any,
	cancelPurchase: () -> any,
	flowComplete: () -> any,

	onAnalyticEvent: (string, table) -> any?,
	eventPrefix: string?,
}

type State = {
	analyticId: string,
}

function PremiumUpsellFlow:init()
	local props: Props = self.props

	self.state = {
		analyticId = HttpService:GenerateGUID(false),
	}
end

function PremiumUpsellFlow:didUpdate(prevProps: Props, prevState: State)
	local props: Props = self.props

	if prevProps.purchaseState ~= props.purchaseState then
		self:reportModalShown()
	end
end

function PremiumUpsellFlow:reportModalShown()
	local props: Props = self.props
	local state: State = self.state

	if not self.props.onAnalyticEvent then
		return
	end

	local data = getModalShownEventData(
		state.analyticId,
		props.eventPrefix,
		"PremiumUpsell",
		PremiumUpsellFlowState.toRawValue(props.purchaseState)
	)

	props.onAnalyticEvent("UserPurchaseFlow", data)
end

function PremiumUpsellFlow:reportUserInput(inputType: string)
	local props: Props = self.props
	local state: State = self.state

	if not self.props.onAnalyticEvent then
		return
	end

	local data = getUserInputEventData(
		state.analyticId,
		props.eventPrefix,
		"PremiumUpsell",
		PremiumUpsellFlowState.toRawValue(props.purchaseState),
		inputType
	)

	props.onAnalyticEvent("UserPurchaseFlow", data)
end

function PremiumUpsellFlow:render()
	local props: Props = self.props
	local state: State = self.state
	local purchaseState = props.purchaseState

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		PremiumUpsellPromptAnimator = Roact.createElement(Animator, {
			shouldShow = purchaseState == PremiumUpsellFlowState.PurchaseModal,
			shouldAnimate = true,
			animateDown = PartialPageModal:getMiddleContentWidth(props.screenSize.X) == 492,
			renderChildren = function()
				return Roact.createElement(PremiumUpsellPrompt, {
					screenSize = props.screenSize,

					isCatalog = props.isCatalog,

					currencySymbol = props.currencySymbol,
					robuxPrice = props.robuxPrice,
					robuxAmount = props.robuxAmount,

					acceptControllerIcon = props.acceptControllerIcon,

					purchasePremiumActivated = function()
						self:reportUserInput("Subscribe")
						props.purchasePremium()
					end,
					cancelPurchaseActivated = function()
						self:reportUserInput("Cancel")
						props.cancelPurchase()
					end,
				})
			end,
		}),
		PurchaseErrorPromptAnimator = Roact.createElement(Animator, {
			shouldShow = purchaseState == PremiumUpsellFlowState.Error,
			shouldAnimate = true,
			renderChildren = function()
				return Roact.createElement(PurchaseErrorPrompt, {
					screenSize = props.screenSize,

					errorType = props.errorType,

					doneControllerIcon = props.acceptControllerIcon,

					doneActivated = function()
						self:reportUserInput("Done")
						props.flowComplete()
					end,
				})
			end,
		}),
	})
end

return PremiumUpsellFlow
