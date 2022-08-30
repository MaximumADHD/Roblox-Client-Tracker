local HttpService = game:GetService("HttpService")

local RobuxUpsellRoot = script.Parent
local PurchaseFlowRoot = RobuxUpsellRoot.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local RobuxUpsellFlowState = require(RobuxUpsellRoot.RobuxUpsellFlowState)

local LoadingOverlay = require(IAPExperienceRoot.Generic.LoadingOverlay)
local LoadingOverlayState = require(IAPExperienceRoot.Generic.LoadingOverlayState)
local PurchaseErrorPrompt = require(IAPExperienceRoot.Generic.PurchaseErrorPrompt)
local U13ConfirmPrompt = require(IAPExperienceRoot.Generic.U13ConfirmPrompt)
local TwoStepReqPrompt = require(IAPExperienceRoot.Generic.TwoStepReqPrompt)
local RobuxUpsellSuccessPrompt = require(IAPExperienceRoot.ProductPurchaseRobuxUpsell.RobuxUpsellSuccessPrompt)
local RobuxUpsellPrompt = require(IAPExperienceRoot.ProductPurchaseRobuxUpsell.RobuxUpsellPrompt)

local RobuxUpsellFlow = Roact.Component:extend(script.Name)

type Props = {
	screenSize: Vector2,

	itemIcon: any?,
	itemName: string,
	itemRobuxCost: number,
	iapRobuxAmount: number,
	beforeRobuxBalance: number,

	-- TODO: Add enum type?
	purchaseState: any?,
	errorType: any?,
	u13ConfirmType: any?,

	acceptControllerIcon: {[string]: any?},
	cancelControllerIcon: {[string]: any?},

	purchaseRobux: () -> any?,
	acceptPurchaseWarning: () -> any?,
	cancelPurchase: () -> any?,
	showTermsOfUse: () -> any?,
	openSecuritySettings: () -> any?,
	equipItem: () -> any?,
	flowComplete: () -> any?,

	onAnalyticEvent: (string, table) -> any?,
	eventPrefix: string?,
}

type State = {
	analyticId: string,
}

function RobuxUpsellFlow:init()
	self.state = {
		analyticId = HttpService:GenerateGUID(false);
	}
end

function RobuxUpsellFlow:didUpdate(prevProps: Props, prevState: State)
	local props: Props = self.props

	if prevProps.purchaseState ~= props.purchaseState then
		self:reportModalShown()
	end
end

function RobuxUpsellFlow:reportModalShown()
	local props: Props = self.props
	local state: State = self.state

	if not self.props.onAnalyticEvent then
		return
	end
	
	local purchaseFlowName = "RobuxUpsell"
	if props.eventPrefix then
		purchaseFlowName = props.eventPrefix..purchaseFlowName
	end

	local data = {
		purchase_flow_uuid = state.analyticId,
		purchase_flow = purchaseFlowName,
		view_name = RobuxUpsellFlowState.toRawValue(props.purchaseState),
		purchase_event_type = "ViewShown",
	}

	props.onAnalyticEvent("UserPurchaseFlow", data)
end

function RobuxUpsellFlow:reportUserInput(inputType: string)
	local props: Props = self.props
	local state: State = self.state

	if not self.props.onAnalyticEvent then
		return
	end
	
	local purchaseFlowName = "RobuxUpsell"
	if props.eventPrefix then
		purchaseFlowName = props.eventPrefix..purchaseFlowName
	end

	local data = {
		purchase_flow_uuid = state.analyticId,
		purchase_flow = purchaseFlowName,
		view_name = RobuxUpsellFlowState.toRawValue(props.purchaseState),
		purchase_event_type = "UserInput",
		input_type = inputType,
	}

	props.onAnalyticEvent("UserPurchaseFlow", data)
end

function RobuxUpsellFlow:purchaseStateToOverlayState(purchaseState: any?): any?
	if purchaseState == RobuxUpsellFlowState.Loading then
		return LoadingOverlayState.Loading
	elseif purchaseState == RobuxUpsellFlowState.RobuxPurchasePending then
		return LoadingOverlayState.PurchasingRobux
	elseif purchaseState == RobuxUpsellFlowState.RobuxGrantPending then
		return LoadingOverlayState.WaitingForRobux
	elseif purchaseState == RobuxUpsellFlowState.ItemPurchasePending then
		return LoadingOverlayState.PurchasingItem
	end
	return LoadingOverlayState.None
end

function RobuxUpsellFlow:renderChildren()
	local props: Props = self.props
	local purchaseState = props.purchaseState

	if purchaseState == RobuxUpsellFlowState.PurchaseModal then
		return Roact.createElement(RobuxUpsellPrompt, {
			screenSize = props.screenSize,

			itemIcon = props.itemIcon,
			itemName = props.itemName,
			itemRobuxCost = props.itemRobuxCost,
			robuxPurchaseAmount = props.iapRobuxAmount,
			balanceAmount = props.beforeRobuxBalance,

			buyItemControllerIcon = props.acceptControllerIcon,
			cancelControllerIcon = props.cancelControllerIcon,

			buyItemActivated = function()
				self:reportUserInput("Buy")
				props.purchaseRobux()
			end,
			cancelPurchaseActivated = function()
				self:reportUserInput("Cancel")
				props.cancelPurchase()
			end,
			termsOfUseActivated = props.showTermsOfUse and function()
				self:reportUserInput("TermsOfService")
				props.showTermsOfUse()
			end or nil,
		})
	elseif purchaseState == RobuxUpsellFlowState.PurchaseWarning then
		return Roact.createElement(U13ConfirmPrompt, {
			screenSize = props.screenSize,
			
			modalType = props.u13ConfirmType,

			doneControllerIcon = props.acceptControllerIcon,
			cancelControllerIcon = props.cancelControllerIcon,

			doneActivated = function()
				self:reportUserInput("Confirm")
				props.acceptPurchaseWarning()
			end,
			cancelActivated = function()
				self:reportUserInput("Cancel")
				props.cancelPurchase()
			end,
		})
	elseif purchaseState == RobuxUpsellFlowState.Success then
		local newBalance = props.iapRobuxAmount + props.beforeRobuxBalance - props.itemRobuxCost
		return Roact.createElement(RobuxUpsellSuccessPrompt, {
			screenSize = props.screenSize,

			itemIcon = props.itemIcon,
			itemName = props.itemName,
			balance = newBalance,

			confirmControllerIcon = props.acceptControllerIcon,
			cancelControllerIcon = props.cancelControllerIcon,

			doneActivated = function()
				self:reportUserInput("Done")
				props.flowComplete()
			end,
			equipActivated = props.equipItem and function()
				self:reportUserInput("Equip")
				props.equipItem()
			end or nil,
		})
	elseif purchaseState == RobuxUpsellFlowState.Error then
		return Roact.createElement(PurchaseErrorPrompt, {
			screenSize = props.screenSize,
			
			errorType = props.errorType,

			doneControllerIcon = props.acceptControllerIcon,

			doneActivated = function()
				self:reportUserInput("Done")
				props.flowComplete()
			end,
		})
	elseif purchaseState == RobuxUpsellFlowState.TwoStepRequired then
		return Roact.createElement(TwoStepReqPrompt, {
			screenSize = props.screenSize,
			
			doneControllerIcon = props.acceptControllerIcon,

			openSecuritySettings = props.openSecuritySettings and function()
				self:reportUserInput("GoToSecuritySettings")
				props.openSecuritySettings()
				props.flowComplete()
			end or nil,
			closePrompt = function()
				self:reportUserInput("Cancel")
				props.flowComplete()
			end,
		})
	end
end

function RobuxUpsellFlow:render()
	local props: Props = self.props
	
	return Roact.createElement(LoadingOverlay, {
		loadingState = self:purchaseStateToOverlayState(props.purchaseState)
	},{
		Prompt = self:renderChildren()
	})
end

return RobuxUpsellFlow
