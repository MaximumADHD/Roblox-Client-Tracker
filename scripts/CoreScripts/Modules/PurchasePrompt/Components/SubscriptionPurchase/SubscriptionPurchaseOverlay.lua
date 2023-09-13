local Root = script.Parent.Parent.Parent

local ContextActionService = game:GetService("ContextActionService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local IAPExperience = PurchasePromptDeps.IAPExperience
local SubscriptionPurchaseFlow =  IAPExperience.PurchaseFlow.SubscriptionPurchaseFlow
local SubscriptionPurchaseFlowState =  IAPExperience.PurchaseFlow.SubscriptionPurchaseFlowState
local PurchaseErrorType =  IAPExperience.PurchaseFlow.PurchaseErrorType

local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)

local SubscriptionPurchaseOverlay = Roact.PureComponent:extend(script.Name)

local FLOW_NAME = "InGame"

type Props = {
	screenSize: Vector2,

	promptState: any,
	purchaseError: any?,

	name: string,
	subscriptionProviderName: string,
	displayPrice: string,
	period: string,
	disclaimerText: string,
	description: string,
	itemIcon: any,

	isTestingMode: boolean,
	
	promptSubscriptionPurchase: () -> any,
	endPurchase: () -> any,

	onAnalyticEvent: (string, any) -> any,
}

function SubscriptionPurchaseOverlay:init()
	self.confirmButtonPressed = function()
		local props: Props = self.props
		local promptState = props.promptState

		if promptState == PromptState.PromptSubscriptionPurchase then
			props.promptSubscriptionPurchase()
			return
		elseif promptState == PromptState.PurchaseComplete then
			props.endPurchase()
			return 
		elseif promptState == PromptState.Error then
			props.endPurchase()
			return
		end
	end

	self.cancelButtonPressed = function()
		local props: Props = self.props

		props.endPurchase()
	end
end

function SubscriptionPurchaseOverlay:getFlowState()
	local props: Props = self.props

	local promptState = props.promptState

	if promptState == PromptState.PromptSubscriptionPurchase then
		return SubscriptionPurchaseFlowState.PurchaseModal
	elseif promptState == PromptState.Error then
		return SubscriptionPurchaseFlowState.Error
	end

	return SubscriptionPurchaseFlowState.None
end

function SubscriptionPurchaseOverlay:getErrorType()
	local props: Props = self.props
	
	if props.purchaseError == PurchaseError.AlreadySubscribed then
		return PurchaseErrorType.AlreadySubscribed
	end

	return PurchaseErrorType.Unknown
end

function SubscriptionPurchaseOverlay:render()
	local props: Props = self.props


	return Roact.createElement(SubscriptionPurchaseFlow, {
		screenSize = props.screenSize,

		purchaseState = self:getFlowState(),
		errorType = self:getErrorType(),

		name = props.name,
		subscriptionProviderName = props.subscriptionProviderName,
		displayPrice = props.displayPrice,
		period = props.period,
		disclaimerText = props.disclaimerText,
		description = props.description,
		itemIcon = props.itemIcon,

		isTestingMode = props.isTestingMode,

		purchaseSubscription = props.promptSubscriptionPurchase,
		cancelPurchase = props.endPurchase,
		flowComplete = props.endPurchase,

		onAnalyticEvent = props.onAnalyticEvent,
		eventPrefix = FLOW_NAME,
	})
end

return SubscriptionPurchaseOverlay
