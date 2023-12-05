local Root = script.Parent.Parent.Parent

local Players = game:GetService("Players")
local ContextActionService = game:GetService("ContextActionService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local IAPExperience = PurchasePromptDeps.IAPExperience
local RobuxUpsellFlow = IAPExperience.PurchaseFlow.RobuxUpsellFlow
local RobuxUpsellFlowState = IAPExperience.PurchaseFlow.RobuxUpsellFlowState
local U13ConfirmType = IAPExperience.PurchaseFlow.U13ConfirmType
local PurchaseErrorType = IAPExperience.PurchaseFlow.PurchaseErrorType

local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)

local RobuxUpsellOverlay = Roact.PureComponent:extend(script.Name)

local CONFIRM_BUTTON_BIND = "ProductPurchaseConfirmButtonBind"
local CANCEL_BUTTON_BIND = "ProductPurchaseCancelButtonBind"

local GetFFlagDisablePurchasePromptFunctionForMaquettes = require(Root.Flags.GetFFlagDisablePurchasePromptFunctionForMaquettes)

local PaymentPlatform = require(Root.Enums.PaymentPlatform)
local getPaymentPlatform = require(Root.Utils.getPaymentPlatform)

local ExternalSettings = require(Root.Services.ExternalSettings)

local FLOW_NAME = "InGame"

type Props = {
	screenSize: Vector2,

	requestType: any?,

	purchaseFlow: any?,
	promptState: any?,
	purchaseError: any?,

	robuxProviderId: string,
	robuxProductId: number,

	itemIcon: any,
	itemName: string,
	itemRobuxCost: number,
	iapRobuxAmount: number,
	beforeRobuxBalance: number,

	isTestPurchase: boolean,
	isGamepadEnabled: boolean,

	promptRobuxPurchase: (any) -> any,
	openRobuxStore: (any) -> any,
	openTermsOfUse: (any) -> any,
	openSecuritySettings: (any) -> any,
	dispatchFetchPurchaseWarning: (any) -> any,
	endPurchase: (any) -> any,

	onAnalyticEvent: (string, any) -> any,
}

type State = {
	canAcceptInput: boolean,
}

function RobuxUpsellOverlay:init()
	self.state = {
		canAcceptInput = false,
	}

	self.dispatchFetchPurchaseWarning = function()
		local props: Props = self.props
		return self.props.dispatchFetchPurchaseWarning(props.robuxProviderId)
	end

	self.promptRobuxPurchase = function()
		local props: Props = self.props
		self.props.promptRobuxPurchase(self.props.networking, props.robuxProviderId, props.robuxProductId)
	end

	self.onDelayedInputComplete = function()
		self:setState({
			canAcceptInput = true,
		})
	end

	self.canAcceptInput = function()
		local state: State = self.state

		if Players and Players.LocalPlayer and Players.LocalPlayer.GameplayPaused then
			return false
		end

		return state.canAcceptInput
	end

	self.confirmButtonPressed = function()
		local props: Props = self.props
		local promptState = props.promptState
		local purchaseError = props.purchaseError

		if not self.canAcceptInput() then
			return
		end

		if promptState == PromptState.RobuxUpsell then
			props.dispatchFetchPurchaseWarning()
			return
		elseif promptState == PromptState.LargeRobuxUpsell then
			props.openRobuxStore()
			return
		elseif
			promptState == PromptState.U13PaymentModal
			or promptState == PromptState.U13MonthlyThreshold1Modal
			or promptState == PromptState.U13MonthlyThreshold2Modal
			or promptState == PromptState.ParentalConsentWarningPaymentModal13To17
		then
			props.promptRobuxPurchase()
			return
		elseif promptState == PromptState.PurchaseComplete then
			props.endPurchase()
			return
		elseif promptState == PromptState.Error then
			if
				purchaseError == PurchaseError.TwoFactorNeeded
				or purchaseError == PurchaseError.TwoFactorNeededSettings
			then
				props.openSecuritySettings()
				return
			else
				props.endPurchase()
				return
			end
		end
	end

	self.cancelButtonPressed = function()
		local props: Props = self.props

		props.endPurchase()
	end
end

function RobuxUpsellOverlay:didMount()
	ContextActionService:BindCoreAction(CONFIRM_BUTTON_BIND, function(actionName, inputState, inputObj)
		if inputState == Enum.UserInputState.Begin then
			self.confirmButtonPressed()
		end
	end, false, Enum.KeyCode.ButtonA)
	ContextActionService:BindCoreAction(CANCEL_BUTTON_BIND, function(actionName, inputState, inputObj)
		if inputState == Enum.UserInputState.Begin then
			self.cancelButtonPressed()
		end
	end, false, Enum.KeyCode.ButtonB)
end

function RobuxUpsellOverlay:willUnmount()
	ContextActionService:UnbindCoreAction(CONFIRM_BUTTON_BIND)
	ContextActionService:UnbindCoreAction(CANCEL_BUTTON_BIND)
end

function RobuxUpsellOverlay:getFlowState()
	local props: Props = self.props

	local promptState = props.promptState
	local purchaseError = props.purchaseError

	if promptState == PromptState.RobuxUpsell then
		return RobuxUpsellFlowState.PurchaseModal
	elseif promptState == PromptState.LargeRobuxUpsell then
		return RobuxUpsellFlowState.LargeRobuxPurchaseModal
	elseif promptState == PromptState.PurchaseInProgress then
		return RobuxUpsellFlowState.ItemPurchasePending
	elseif promptState == PromptState.UpsellInProgress then
		return RobuxUpsellFlowState.RobuxPurchasePending
	elseif promptState == PromptState.PollingBalance then
		return RobuxUpsellFlowState.RobuxGrantPending
	elseif promptState == PromptState.U13PaymentModal then
		return RobuxUpsellFlowState.PurchaseWarning
	elseif promptState == PromptState.U13MonthlyThreshold1Modal then
		return RobuxUpsellFlowState.PurchaseWarning
	elseif promptState == PromptState.U13MonthlyThreshold2Modal then
		return RobuxUpsellFlowState.PurchaseWarning
	elseif promptState == PromptState.PurchaseComplete then
		return RobuxUpsellFlowState.Success
	elseif promptState == PromptState.Error then
		if purchaseError == PurchaseError.TwoFactorNeeded or purchaseError == PurchaseError.TwoFactorNeededSettings then
			return RobuxUpsellFlowState.TwoStepRequired
		end
		return RobuxUpsellFlowState.Error
	end

	return RobuxUpsellFlowState.None
end

function RobuxUpsellOverlay:getU13ConfirmType()
	local props: Props = self.props

	local promptState = props.promptState

	if promptState == PromptState.U13PaymentModal then
		return U13ConfirmType.U13PaymentModal
	elseif promptState == PromptState.U13MonthlyThreshold1Modal then
		return U13ConfirmType.U13MonthlyThreshold1Modal
	elseif promptState == PromptState.U13MonthlyThreshold2Modal then
		return U13ConfirmType.U13MonthlyThreshold2Modal
	elseif promptState == PromptState.ParentalConsentWarningPaymentModal13To17 then
		return U13ConfirmType.ParentalConsentWarningPaymentModal13To17
	end

	return U13ConfirmType.None
end

function RobuxUpsellOverlay:getErrorType()
	local props: Props = self.props

	if props.purchaseError == PurchaseError.AlreadyOwn then
		return PurchaseErrorType.AlreadyOwn
	elseif
		props.purchaseError == PurchaseError.NotEnoughRobux
		or props.purchaseError == PurchaseError.NotEnoughRobuxXbox
		or props.purchaseError == PurchaseError.NotEnoughRobuxNoUpsell
	then
		return PurchaseErrorType.NotEnoughRobux
	elseif props.purchaseError == PurchaseError.Limited then
		return PurchaseErrorType.Limited
	elseif props.purchaseError == PurchaseError.NotForSale then
		return PurchaseErrorType.NotForSale
	elseif props.purchaseError == PurchaseError.NotForSaleHere then
		return PurchaseErrorType.NotForSaleExperience
	elseif props.purchaseError == PurchaseError.PremiumOnly then
		return PurchaseErrorType.PremiumOnly
	elseif props.purchaseError == PurchaseError.ThirdPartyDisabled then
		return PurchaseErrorType.ThirdPartyDisabled
	elseif props.purchaseError == PurchaseError.Under13 then
		return PurchaseErrorType.Under13
	elseif props.purchaseError == PurchaseError.InvalidFunds then
		return PurchaseErrorType.FailedGrant
	elseif props.purchaseError == PurchaseError.InvalidFundsUnknown then
		return PurchaseErrorType.FailedGrantUnknown
	end

	return PurchaseErrorType.Unknown
end

function RobuxUpsellOverlay:render()
	local props: Props = self.props
	local externalSettings = ExternalSettings.new()

	local BUTTON_A_ICON = "rbxasset://textures/ui/Controls/DesignSystem/ButtonA.png"
	local BUTTON_B_ICON = "rbxasset://textures/ui/Controls/DesignSystem/ButtonB.png"

	return Roact.createElement(RobuxUpsellFlow, {
		screenSize = props.screenSize,

		shouldAnimate = true,
		isDelayedInput = true,
		onDelayedInputComplete = self.onDelayedInputComplete,

		itemIcon = props.itemIcon,
		itemName = props.itemName,
		itemRobuxCost = props.itemRobuxCost,
		iapRobuxAmount = props.iapRobuxAmount,
		beforeRobuxBalance = props.beforeRobuxBalance,

		purchaseState = self:getFlowState(),
		errorType = self:getErrorType(),
		u13ConfirmType = self:getU13ConfirmType(),

		acceptControllerIcon = if props.isGamepadEnabled
			then BUTTON_A_ICON
			else nil,
		cancelControllerIcon = if props.isGamepadEnabled
			then BUTTON_B_ICON
			else nil,

		purchaseRobux = self.dispatchFetchPurchaseWarning,
		acceptPurchaseWarning = self.promptRobuxPurchase,
		openBuyRobux = props.openRobuxStore,
		showTermsOfUse = props.openTermsOfUse,
		openSecuritySettings = props.openSecuritySettings,
		cancelPurchase = props.endPurchase,
		flowComplete = props.endPurchase,

		onAnalyticEvent = props.onAnalyticEvent,
		eventPrefix = FLOW_NAME,
		isQuest = GetFFlagDisablePurchasePromptFunctionForMaquettes() and getPaymentPlatform(externalSettings.getPlatform()) == PaymentPlatform.Maquettes,
	})
end

return RobuxUpsellOverlay
