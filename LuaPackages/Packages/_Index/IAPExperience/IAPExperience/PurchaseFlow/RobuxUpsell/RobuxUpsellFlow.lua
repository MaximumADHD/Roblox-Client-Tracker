local HttpService = game:GetService("HttpService")

local RobuxUpsellRoot = script.Parent
local PurchaseFlowRoot = RobuxUpsellRoot.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local RobuxUpsellFlowState = require(RobuxUpsellRoot.RobuxUpsellFlowState)

local Animator = require(IAPExperienceRoot.Generic.Animator)
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

	shouldAnimate: boolean?,
	isDelayedInput: boolean?,
	onDelayedInputComplete: ()->any?,

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
	local props: Props = self.props

	self.state = {
		analyticId = HttpService:GenerateGUID(false);

		isDelayedInput = props.isDelayedInput,
		enableInputDelayed = false,
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
	if purchaseState == RobuxUpsellFlowState.None then
		return nil -- Do not show faded overlay
	else
		return LoadingOverlayState.None -- Show faded overlay
	end
end

function RobuxUpsellFlow:render()
	local props: Props = self.props
	local state: State = self.state
	local purchaseState = props.purchaseState
	
	return Roact.createElement(LoadingOverlay, {
		shouldAnimate = props.shouldAnimate,
		loadingState = self:purchaseStateToOverlayState(props.purchaseState)
	}, {
		RobuxUpsellPromptAnimator = Roact.createElement(Animator, {
			shouldAnimate = props.shouldAnimate,
			shouldShow = purchaseState == RobuxUpsellFlowState.PurchaseModal,
			onShown = self.props.isDelayedInput and function()
				self:setState({
					enableInputDelayed = true
				})
				delay(3, function()
					self:setState({
						isDelayedInput = false,
						enableInputDelayed = false,
					})
					if props.onDelayedInputComplete then
						props.onDelayedInputComplete()
					end
				end)
			end or nil,
			onHidden = self.props.isDelayedInput and function()
				self:setState({
					isDelayedInput = props.isDelayedInput,
					enableInputDelayed = false,
				})
			end or nil,
			renderChildren = function()
				return Roact.createElement(RobuxUpsellPrompt, {
					screenSize = props.screenSize,

					isDelayedInput = state.isDelayedInput,
					enableInputDelayed = state.enableInputDelayed,
		
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
			end,
		}),
		U13ConfirmPromptAnimator = Roact.createElement(Animator, {
			shouldAnimate = props.shouldAnimate,
			shouldShow = purchaseState == RobuxUpsellFlowState.PurchaseWarning,
			renderChildren = function()
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
			end,
		}),
		PurchaseErrorPromptAnimator = Roact.createElement(Animator, {
			shouldAnimate = props.shouldAnimate,
			shouldShow = purchaseState == RobuxUpsellFlowState.Error,
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
		TwoStepRequiredAnimator = Roact.createElement(Animator, {
			shouldAnimate = props.shouldAnimate,
			shouldShow = purchaseState == RobuxUpsellFlowState.TwoStepRequired,
			renderChildren = function()
				return Roact.createElement(TwoStepReqPrompt, {
					screenSize = props.screenSize,
					
					doneControllerIcon = props.acceptControllerIcon,
		
					openSecuritySettings = function()
						self:reportUserInput("GoToSecuritySettings")
						props.openSecuritySettings()
						props.flowComplete()
					end,
					closePrompt = function()
						self:reportUserInput("Cancel")
						props.flowComplete()
					end,
				})
			end,
		}),
		RobuxUpsellSuccessPromptAnimator = Roact.createElement(Animator, {
			shouldAnimate = props.shouldAnimate,
			shouldShow = purchaseState == RobuxUpsellFlowState.Success,
			renderChildren = function()
				return Roact.createElement(RobuxUpsellSuccessPrompt, {
					screenSize = props.screenSize,
		
					itemIcon = props.itemIcon,
					itemName = props.itemName,
					balance = props.iapRobuxAmount + props.beforeRobuxBalance - props.itemRobuxCost,
		
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
			end,
		}),
	})
end

return RobuxUpsellFlow
