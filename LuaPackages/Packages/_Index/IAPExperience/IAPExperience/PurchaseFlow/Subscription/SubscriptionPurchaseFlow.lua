local HttpService = game:GetService("HttpService")

local SubscriptionPurchase = script.Parent
local PurchaseFlowRoot = SubscriptionPurchase.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local UIBlox = require(Packages.UIBlox)
local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal

local SubscriptionPurchaseFlowState = require(SubscriptionPurchase.SubscriptionPurchaseFlowState)

local Animator = require(IAPExperienceRoot.Generic.Animator)
local PurchaseErrorPrompt = require(IAPExperienceRoot.Generic.PurchaseErrorPrompt)
local SubscriptionPurchasePrompt = require(IAPExperienceRoot.Subscription.SubscriptionPurchasePrompt)

local getModalShownEventData = require(IAPExperienceRoot.Utility.getModalShownEventData)
local getUserInputEventData = require(IAPExperienceRoot.Utility.getUserInputEventData)

local SubscriptionPurchaseFlow = Roact.Component:extend(script.Name)

local GenericRoot = IAPExperienceRoot.Generic
local PurchaseFlowType = require(GenericRoot.PurchaseFlowType)

type Props = {
	screenSize: Vector2,

	purchaseState: any?,
	errorType: any?,

	name: string,
	subscriptionProviderName: string,
	displayPrice: string,
	period: string,
	disclaimerText: string,
	description: string,
	itemIcon: any,

	isTestingMode: boolean,

	purchaseSubscription: () -> any,
	cancelPurchase: () -> any,
	flowComplete: () -> any,

	onAnalyticEvent: (string, table) -> any?,
	eventPrefix: string?,
}

type State = {
	analyticId: string,
}

function SubscriptionPurchaseFlow:init()
	self.state = {
		analyticId = HttpService:GenerateGUID(false),
	}
end

function SubscriptionPurchaseFlow:didUpdate(prevProps: Props, prevState: State)
	local props: Props = self.props

	if prevProps.purchaseState ~= props.purchaseState then
		self:reportModalShown()
	end
end

function SubscriptionPurchaseFlow:reportModalShown()
	local props: Props = self.props
	local state: State = self.state

	if not self.props.onAnalyticEvent then
		return
	end

	local data = getModalShownEventData(
		state.analyticId,
		props.eventPrefix,
		"SubscriptionPurchase",
		SubscriptionPurchaseFlowState.toRawValue(props.purchaseState)
	)

	props.onAnalyticEvent("UserPurchaseFlow", data)
end

function SubscriptionPurchaseFlow:reportUserInput(inputType: string)
	local props: Props = self.props
	local state: State = self.state

	if not self.props.onAnalyticEvent then
		return
	end

	local data = getUserInputEventData(
		state.analyticId,
		props.eventPrefix,
		"SubscriptionPurchase",
		SubscriptionPurchaseFlowState.toRawValue(props.purchaseState),
		inputType
	)

	props.onAnalyticEvent("UserPurchaseFlow", data)
end

function SubscriptionPurchaseFlow:render()
	local props: Props = self.props
	local purchaseState = props.purchaseState

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		SubscriptionPurchasePromptAnimator = Roact.createElement(Animator, {
			shouldShow = purchaseState == SubscriptionPurchaseFlowState.PurchaseModal,
			shouldAnimate = true,
			animateDown = PartialPageModal:getMiddleContentWidth(props.screenSize.X) == 492,
			renderChildren = function()
				return Roact.createElement(SubscriptionPurchasePrompt, {
					name = props.name,
					subscriptionProviderName = props.subscriptionProviderName,
					displayPrice = props.displayPrice,
					period = props.period,
					disclaimerText = props.disclaimerText,
					description = props.description,
					itemIcon = props.itemIcon,

					isTestingMode = props.isTestingMode,
					screenSize = props.screenSize,

					purchaseSubscriptionActivated = function()
						self:reportUserInput("Subscribe")
						props.purchaseSubscription()
						if props.isTestingMode then
							props.flowComplete()
						end
					end,
					cancelPurchaseActivated = function()
						self:reportUserInput("Cancel")
						props.cancelPurchase()
					end,
				})
			end,
		}),
		PurchaseErrorPromptAnimator = Roact.createElement(Animator, {
			shouldShow = purchaseState == SubscriptionPurchaseFlowState.Error,
			shouldAnimate = true,
			renderChildren = function()
				return Roact.createElement(PurchaseErrorPrompt, {
					screenSize = props.screenSize,

					errorType = props.errorType,

					flowType = PurchaseFlowType.Subscription,

					doneActivated = function()
						self:reportUserInput("Done")
						props.flowComplete()
					end,
				})
			end,
		}),
	})
end

return SubscriptionPurchaseFlow
