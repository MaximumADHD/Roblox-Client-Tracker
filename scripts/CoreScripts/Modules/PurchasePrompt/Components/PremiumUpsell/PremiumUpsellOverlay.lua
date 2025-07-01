local Root = script.Parent.Parent.Parent

local ContextActionService = game:GetService("ContextActionService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.Workspace.Packages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local IAPExperience = PurchasePromptDeps.IAPExperience
local PremiumUpsellFlow = IAPExperience.PurchaseFlow.PremiumUpsellFlow
local PremiumUpsellFlowState = IAPExperience.PurchaseFlow.PremiumUpsellFlowState
local PurchaseErrorType = IAPExperience.PurchaseFlow.PurchaseErrorType

local PromptState = require(Root.Enums.PromptState)
local PurchaseError = require(Root.Enums.PurchaseError)
local VPCModalType = require(Root.Enums.VPCModalType)

local PremiumUpsellOverlay = Roact.PureComponent:extend(script.Name)

local GetFFlagEnableVpcForInExperiencePremiumUpsell = require(Root.Flags.GetFFlagEnableVpcForInExperiencePremiumUpsell)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local CONFIRM_BUTTON_BIND = "PremiumPurchaseConfirmButtonBind"
local CANCEL_BUTTON_BIND = "PremiumPurchaseCancelButtonBind"

local XBOX_A_ICON = "icons/controls/keys/xboxA"

local FLOW_NAME = "InGame"

type Props = {
	screenSize: Vector2,

	promptState: any,
	purchaseError: any?,
	economicRestrictionError: any?,

	currencySymbol: string,
	robuxPrice: number,
	robuxAmount: number,

	isGamepadEnabled: boolean,

	promptPremiumPurchase: () -> any,
	dispatchPremiumPrecheck: () -> any,
	endPurchase: () -> any,

	onAnalyticEvent: (string, any) -> any,
}

function PremiumUpsellOverlay:init()
	self.confirmButtonPressed = function()
		local props: Props = self.props
		local promptState = props.promptState

		if promptState == PromptState.PremiumUpsell then
			if GetFFlagEnableVpcForInExperiencePremiumUpsell() then
				props.dispatchPremiumPrecheck()
			else
				props.promptPremiumPurchase()
			end
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

function PremiumUpsellOverlay:didMount()
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

function PremiumUpsellOverlay:willUnmount()
	ContextActionService:UnbindCoreAction(CONFIRM_BUTTON_BIND)
	ContextActionService:UnbindCoreAction(CANCEL_BUTTON_BIND)
end

function PremiumUpsellOverlay:getFlowState()
	local props: Props = self.props

	local promptState = props.promptState

	if promptState == PromptState.PremiumUpsell then
		return PremiumUpsellFlowState.PurchaseModal
	elseif promptState == PromptState.Error then
		return PremiumUpsellFlowState.Error
	elseif promptState == PromptState.EnablePurchaseVPCModal then
		return PremiumUpsellFlowState.PurchaseVPCModal
	end

	return PremiumUpsellFlowState.None
end

function PremiumUpsellOverlay:getErrorType()
	local props: Props = self.props

	if props.purchaseError == PurchaseError.AlreadyPremium then
		return PurchaseErrorType.AlreadyPremium
	elseif props.purchaseError == PurchaseError.PremiumUnavailablePlatform then
		return PurchaseErrorType.PremiumPlatformUnavailable
	elseif props.purchaseError == PurchaseError.EconomicRestriction then
		return PurchaseErrorType.EconomicRestriction
	end

	return PurchaseErrorType.Unknown
end

function PremiumUpsellOverlay:getVPCModalType()
	local props: Props = self.props
	local promptState = props.promptState

	if promptState == PromptState.EnablePurchaseVPCModal then
		return VPCModalType.toRawValue(VPCModalType.EnablePurchase)
	end
	return VPCModalType.toRawValue(VPCModalType.None)
end

function PremiumUpsellOverlay:render()
	local props: Props = self.props

	local BUTTON_A_ICON = "rbxasset://textures/ui/Controls/DesignSystem/ButtonA.png"

	return Roact.createElement(PremiumUpsellFlow, {
		screenSize = props.screenSize,

		isCatalog = false,

		currencySymbol = props.currencySymbol,
		robuxPrice = props.robuxPrice,
		robuxAmount = props.robuxAmount,

		purchaseState = self:getFlowState(),
		errorType = self:getErrorType(),
		economicRestrictionError = props.economicRestrictionError,
		purchaseVPCType = self:getVPCModalType(),

		acceptControllerIcon = if props.isGamepadEnabled then BUTTON_A_ICON else nil,

		purchasePremium = if GetFFlagEnableVpcForInExperiencePremiumUpsell()
			then props.dispatchPremiumPrecheck
			else props.promptPremiumPurchase,
		cancelPurchase = props.endPurchase,
		flowComplete = props.endPurchase,

		onAnalyticEvent = props.onAnalyticEvent,
		eventPrefix = FLOW_NAME,
	})
end

return PremiumUpsellOverlay
