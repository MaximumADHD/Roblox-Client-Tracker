local Root = script.Parent.Parent.Parent

local ContextActionService = game:GetService("ContextActionService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local IAPExperience = PurchasePromptDeps.IAPExperience
local SubscriptionPurchaseFlow = IAPExperience.PurchaseFlow.SubscriptionPurchaseFlow
local SubscriptionPurchaseFlowState = IAPExperience.PurchaseFlow.SubscriptionPurchaseFlowState
local PurchaseErrorType = IAPExperience.PurchaseFlow.PurchaseErrorType

local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)

local SubscriptionPurchaseOverlay = Roact.PureComponent:extend(script.Name)

local FLOW_NAME = "InGame"

type Props = {
	screenSize: Vector2,

	promptState: any,
	purchaseError: any?,

	subscriptionId: string,
	name: string,
	subscriptionProviderId: string,
	subscriptionProviderName: string,
	priceTier: number,
	displayPrice: string,
	period: string,
	disclaimerText: string,
	description: string,
	itemIcon: any,

	primaryPaymentMethod: string,
	secondaryPaymentMethod: string,

	isGamepadEnabled: boolean,
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
	elseif props.purchaseError == PurchaseError.SubscriptionExceededUserSpendLimit then
		return PurchaseErrorType.SubscriptionExceededUserSpendLimit
	elseif props.purchaseError == PurchaseError.SubscriptionUnsupportedLocale then
		return PurchaseErrorType.SubscriptionUnsupportedLocale
	elseif props.purchaseError == PurchaseError.RestrictedUser then
		return PurchaseErrorType.RestrictedUser
	elseif props.purchaseError == PurchaseError.SubscriptionPurchasePlatformNotSupported then
		return PurchaseErrorType.SubscriptionPurchasePlatformNotSupported
	elseif props.purchaseError == PurchaseError.SubscriptionInvalidSaleLocation then
		return PurchaseErrorType.SubscriptionInvalidSaleLocation
	elseif props.purchaseError == PurchaseError.SubscriptionNotForSale then
		return PurchaseErrorType.SubscriptionNotForSale
	elseif props.purchaseError == PurchaseError.VpcRequired then
		return PurchaseErrorType.VpcRequired
	end

	return PurchaseErrorType.Unknown
end

function SubscriptionPurchaseOverlay:render()
	local props: Props = self.props

	local BUTTON_A_ICON = "rbxasset://textures/ui/Controls/DesignSystem/ButtonA.png"

	return Roact.createElement(SubscriptionPurchaseFlow, {
		screenSize = props.screenSize,

		purchaseState = self:getFlowState(),
		errorType = self:getErrorType(),

		subscriptionId = props.subscriptionId,
		name = props.name,
		subscriptionProviderId = props.subscriptionProviderId,
		subscriptionProviderName = props.subscriptionProviderName,
		priceTier = props.priceTier,
		displayPrice = props.displayPrice,
		period = props.period,
		disclaimerText = props.disclaimerText,
		description = props.description,
		itemIcon = props.itemIcon,

		primaryPaymentMethod = props.primaryPaymentMethod,
		secondaryPaymentMethod = props.secondaryPaymentMethod,

		acceptControllerIcon = if props.isGamepadEnabled then BUTTON_A_ICON else nil,

		isTestingMode = props.isTestingMode,

		purchaseSubscription = props.promptSubscriptionPurchase,
		cancelPurchase = props.endPurchase,
		flowComplete = props.endPurchase,

		onAnalyticEvent = props.onAnalyticEvent,
		eventPrefix = FLOW_NAME,
	})
end

return SubscriptionPurchaseOverlay
