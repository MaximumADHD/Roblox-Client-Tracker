local HttpService = game:GetService("HttpService")
local ContextActionService = game:GetService("ContextActionService")
local CorePackages = game:GetService("CorePackages")

local RobuxUpsellRoot = script.Parent
local PurchaseFlowRoot = RobuxUpsellRoot.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local RobuxUpsellFlowState = require(RobuxUpsellRoot.RobuxUpsellFlowState)

local Animator = require(IAPExperienceRoot.Generic.Animator)
local Constants = require(IAPExperienceRoot.Generic.Constants)
local LoadingOverlay = require(IAPExperienceRoot.Generic.LoadingOverlay)
local LoadingOverlayState = require(IAPExperienceRoot.Generic.LoadingOverlayState)
local PurchaseErrorPrompt = require(IAPExperienceRoot.Generic.PurchaseErrorPrompt)
local U13ConfirmPrompt = require(IAPExperienceRoot.Generic.U13ConfirmPrompt)
local TwoStepReqPrompt = require(IAPExperienceRoot.Generic.TwoStepReqPrompt)
local InsufficientRobuxPrompt = require(IAPExperienceRoot.Generic.InsufficientRobuxPrompt)
local InsufficientRobuxProductPrompt =
	require(IAPExperienceRoot.ProductPurchaseRobuxUpsell.InsufficientRobuxProductPrompt)
local LeaveRobloxPrompt = require(IAPExperienceRoot.Generic.LeaveRobloxPrompt)
local RobuxUpsellSuccessPrompt = require(IAPExperienceRoot.ProductPurchaseRobuxUpsell.RobuxUpsellSuccessPrompt)
local RobuxUpsellPrompt = require(IAPExperienceRoot.ProductPurchaseRobuxUpsell.RobuxUpsellPrompt)

local getModalShownEventData = require(IAPExperienceRoot.Utility.getModalShownEventData)
local getUserInputEventData = require(IAPExperienceRoot.Utility.getUserInputEventData)

local getEnableCentralOverlayForUpsellPrompt = require(IAPExperienceRoot.Flags.getEnableCentralOverlayForUpsellPrompt)

local RobuxUpsellFlow = Roact.Component:extend(script.Name)

local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol).default
local eventConfig = require(RobuxUpsellRoot.Events.InGameRobuxUpsellEvent)
local Players = game:GetService("Players")

local VerifiedParentalConsentDialog = require(CorePackages.Workspace.Packages.VerifiedParentalConsentDialog)
local VPCModal = VerifiedParentalConsentDialog.VerifiedParentalConsentDialog

game:DefineFastFlag("DisableNonSchematizedInGameRobuxUpsellEvent", false)
game:DefineFastFlag("EnableSchematizedInGameRobuxUpsellEvent2", false)

type Props = {
	screenSize: Vector2,

	shouldAnimate: boolean?,
	isDelayedInput: boolean?,
	onDelayedInputComplete: () -> any?,

	model: any?,
	itemIcon: any?,
	itemName: string,
	itemRobuxCost: number,
	iapCostStr: string?,
	iapRobuxAmount: number,
	beforeRobuxBalance: number,

	-- TODO: Add enum type?
	purchaseState: any?,
	errorType: any?,
	u13ConfirmType: any?,
	purchaseVPCType: any?,

	acceptControllerIcon: { [string]: any? },
	cancelControllerIcon: { [string]: any? },

	purchaseRobux: () -> any?,
	acceptPurchaseWarning: () -> any?,
	cancelPurchase: () -> any?,
	showTermsOfUse: () -> any?,
	openSecuritySettings: () -> any?,
	openBuyRobux: () -> any?,
	equipItem: () -> any?,
	flowComplete: () -> any?,
	openSettingsPage: () -> any?,

	onAnalyticEvent: (string, table) -> any?,
	eventPrefix: string?,
	isQuest: boolean?,

	dispatchCentralOverlay: (any, any) -> any,

	isVng: boolean?,
}

type State = {
	analyticId: string,
}

function RobuxUpsellFlow:init()
	local props: Props = self.props

	self.state = {
		analyticId = HttpService:GenerateGUID(false),

		isDelayedInput = props.isDelayedInput,
		enableInputDelayed = false,
	}

	self.closeModal = function()
		local props: Props = self.props
		self:reportUserInput("Cancel")
		props.cancelPurchase()

		self:closeCentralOverlay()
		self:UnbindActions()
	end
end

function RobuxUpsellFlow:didUpdate(prevProps: Props, prevState: State)
	local props: Props = self.props

	if prevProps.purchaseState ~= props.purchaseState then
		self:reportModalShown()
		self:dispatchCentralOverlayAndRenderModal(props)
	end
end

function RobuxUpsellFlow:UnbindActions()
	if getEnableCentralOverlayForUpsellPrompt() and self.props.dispatchCentralOverlay then
		ContextActionService:UnbindAction(Constants.CLOSE_MODAL_ACTION)
	end
end

function RobuxUpsellFlow:BindCancelAction()
	-- only if the central overlay is dispatched, we need to make sure the
	-- overlay will be properly handled when canceled action is triggered
	-- otherwise, the B button in console still could trigger modal close but
	-- with the central overlay opening
	if getEnableCentralOverlayForUpsellPrompt() and self.props.dispatchCentralOverlay then
		ContextActionService:BindAction(Constants.CLOSE_MODAL_ACTION, self.closeModal, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Escape)
	end
end

function RobuxUpsellFlow:closeCentralOverlay()
	local props: Props = self.props

	if getEnableCentralOverlayForUpsellPrompt() and props.dispatchCentralOverlay then
		props.dispatchCentralOverlay() -- close the central overlay
	end
end

function RobuxUpsellFlow:constructRobuxUpsellPromptAnimatorObj()
	local props: Props = self.props
	local state: State = self.state

	self:BindCancelAction()

	return {
		shouldAnimate = props.shouldAnimate,
		shouldShow = props.purchaseState == RobuxUpsellFlowState.PurchaseModal,
		onShown = props.isDelayedInput and function()
			self:setState({
				enableInputDelayed = true,
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
		onHidden = props.isDelayedInput and function()
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

				model = props.model,
				itemIcon = props.itemIcon,
				itemName = props.itemName,
				itemRobuxCost = props.itemRobuxCost,
				robuxCostStr = props.iapCostStr,
				robuxPurchaseAmount = props.iapRobuxAmount,
				balanceAmount = props.beforeRobuxBalance,

				buyItemControllerIcon = props.acceptControllerIcon,
				cancelControllerIcon = props.cancelControllerIcon,

				buyItemActivated = function()
					self:reportUserInput("Buy")
					props.purchaseRobux()
					self:closeCentralOverlay()
				end,
				cancelPurchaseActivated = function()
					self:reportUserInput("Cancel")
					props.cancelPurchase()
					self:closeCentralOverlay()
				end,
				termsOfUseActivated = props.showTermsOfUse and function()
					self:reportUserInput("TermsOfService")
					props.showTermsOfUse()
				end or nil,
				isQuest = self.props.isQuest,
				isVng = self.props.isVng,
			})
		end,
	}
end

function RobuxUpsellFlow:constructU13ConfirmPromptAnimatorObj()
	local props: Props = self.props

	self:BindCancelAction()

	return {
		shouldAnimate = props.shouldAnimate,
		shouldShow = props.purchaseState == RobuxUpsellFlowState.PurchaseWarning,
		renderChildren = function()
			return Roact.createElement(U13ConfirmPrompt, {
				screenSize = props.screenSize,

				modalType = props.u13ConfirmType,

				doneControllerIcon = props.acceptControllerIcon,
				cancelControllerIcon = props.cancelControllerIcon,

				doneActivated = function()
					self:reportUserInput("Confirm")
					props.acceptPurchaseWarning()
					self:closeCentralOverlay()
				end,
				cancelActivated = function()
					self:reportUserInput("Cancel")
					props.cancelPurchase()
					self:closeCentralOverlay()
				end,
			})
		end,
	}
end

function RobuxUpsellFlow:constructPurchaseErrorPromptAnimatorObj()
	local props: Props = self.props

	self:BindCancelAction()

	return {
		shouldAnimate = props.shouldAnimate,
		shouldShow = props.purchaseState == RobuxUpsellFlowState.Error,
		renderChildren = function()
			return Roact.createElement(PurchaseErrorPrompt, {
				screenSize = props.screenSize,

				errorType = props.errorType,

				doneControllerIcon = props.acceptControllerIcon,

				doneActivated = function()
					self:reportUserInput("Done")
					props.flowComplete()
					self:closeCentralOverlay()
				end,
			})
		end,
	}
end

function RobuxUpsellFlow:constructTwoStepRequiredAnimatorObj()
	local props: Props = self.props

	self:BindCancelAction()

	return {
		shouldAnimate = props.shouldAnimate,
		shouldShow = props.purchaseState == RobuxUpsellFlowState.TwoStepRequired,
		renderChildren = function()
			return Roact.createElement(TwoStepReqPrompt, {
				screenSize = props.screenSize,

				doneControllerIcon = props.acceptControllerIcon,

				openSecuritySettings = function()
					self:reportUserInput("GoToSecuritySettings")
					props.openSecuritySettings()
					props.flowComplete()
					self:closeCentralOverlay()
				end,
				closePrompt = function()
					self:reportUserInput("Cancel")
					props.flowComplete()
					self:closeCentralOverlay()
				end,
			})
		end,
	}
end

function RobuxUpsellFlow:constructRobuxUpsellSuccessPromptAnimatorObj()
	local props: Props = self.props

	self:BindCancelAction()

	return {
		shouldAnimate = props.shouldAnimate,
		shouldShow = props.purchaseState == RobuxUpsellFlowState.Success,
		renderChildren = function()
			return Roact.createElement(RobuxUpsellSuccessPrompt, {
				screenSize = props.screenSize,

				model = props.model,
				itemIcon = props.itemIcon,
				itemName = props.itemName,
				balance = props.iapRobuxAmount + props.beforeRobuxBalance - props.itemRobuxCost,

				confirmControllerIcon = props.acceptControllerIcon,
				cancelControllerIcon = props.cancelControllerIcon,

				doneActivated = function()
					self:reportUserInput("Done")
					props.flowComplete()
					self:closeCentralOverlay()
				end,
				equipActivated = props.equipItem and function()
					self:reportUserInput("Equip")
					props.equipItem()
					self:closeCentralOverlay()
				end or nil,
			})
		end,
	}
end

function RobuxUpsellFlow:constructInsufficientRobuxAnimatorObj()
	local props: Props = self.props

	self:BindCancelAction()

	return {
		shouldAnimate = props.shouldAnimate,
		shouldShow = props.purchaseState == RobuxUpsellFlowState.GenericPurchaseModal,
		renderChildren = function()
			return Roact.createElement(InsufficientRobuxPrompt, {
				screenSize = props.screenSize,

				robuxBalance = props.beforeRobuxBalance,

				buyRobux = function()
					self:reportUserInput("Buy Robux")
					props.openBuyRobux()
					props.flowComplete()
					self:closeCentralOverlay()
				end,
				closePrompt = function()
					self:reportUserInput("Cancel")
					props.flowComplete()
					self:closeCentralOverlay()
				end,
			})
		end,
	}
end

function RobuxUpsellFlow:constructInsufficientRobuxProductAnimatorObj()
	local props: Props = self.props

	self:BindCancelAction()

	return {
		shouldAnimate = props.shouldAnimate,
		shouldShow = props.purchaseState == RobuxUpsellFlowState.LargeRobuxPurchaseModal,
		renderChildren = function()
			return Roact.createElement(InsufficientRobuxProductPrompt, {
				screenSize = props.screenSize,

				model = props.model,
				itemIcon = props.itemIcon,
				itemName = props.itemName,
				itemRobuxCost = props.itemRobuxCost,
				balanceAmount = props.beforeRobuxBalance,

				acceptControllerIcon = props.acceptControllerIcon,
				cancelControllerIcon = props.cancelControllerIcon,

				robuxStoreActivated = function()
					self:reportUserInput("Go to Robux store")
					props.openBuyRobux()
					self:closeCentralOverlay()
				end,
				cancelPurchaseActivated = function()
					self:reportUserInput("Cancel")
					props.flowComplete()
					self:closeCentralOverlay()
				end,
			})
		end,
	}
end

function RobuxUpsellFlow:constructLeaveRobloxPromptAnimatorObj()
	local props: Props = self.props

	self:BindCancelAction()

	return {
		shouldAnimate = props.shouldAnimate,
		shouldShow = props.purchaseState == RobuxUpsellFlowState.LeaveRobloxWarning,
		renderChildren = function()
			return Roact.createElement(LeaveRobloxPrompt, {
				screenSize = props.screenSize,

				cancelActivated = function()
					self:closeCentralOverlay()
				end,
				continueActivated = function()
					props.openVngShop()
				end,
			})
		end,
	}
end

function RobuxUpsellFlow:constructPurchaseVPCPromptAnimatorObj()
	local props: Props = self.props

	self:BindCancelAction()

	return {
		shouldAnimate = props.shouldAnimate,
		shouldShow = props.purchaseState == RobuxUpsellFlowState.PurchaseVPCModal,
		renderChildren = function()
			return Roact.createElement(VPCModal, {
				screenSize = props.screenSize,
				isActionable = props.openSettingsPage ~= nil,
				modalType = props.purchaseVPCType,
				onAction = props.openSettingsPage and function()
					self:reportUserInput("Confirm")
					props.openSettingsPage()
					props.flowComplete()
				end,
				onDismiss = function()
					self:reportUserInput("Cancel")
					props.cancelPurchase()
					self:closeCentralOverlay()
				end,
			})
		end,
	}
end

-- Use CentralOverlay to render the modals so that they could get the gamepad focus on Console in app
-- This method won't be used when it's in game
function RobuxUpsellFlow:dispatchCentralOverlayAndRenderModal(props: Props)
	if not getEnableCentralOverlayForUpsellPrompt() or not props.dispatchCentralOverlay then
		return
	end

	local purchaseState = props.purchaseState
	-- RobuxUpsellPromptAnimator
	if purchaseState == RobuxUpsellFlowState.PurchaseModal then
		props.dispatchCentralOverlay(Constants.CENTRAL_OVERLAY_TYPE_ANIMATOR, self:constructRobuxUpsellPromptAnimatorObj())
		return
	end

	-- U13ConfirmPromptAnimator
	if purchaseState == RobuxUpsellFlowState.PurchaseWarning then
		props.dispatchCentralOverlay(Constants.CENTRAL_OVERLAY_TYPE_ANIMATOR, self:constructU13ConfirmPromptAnimatorObj())
	end

	-- PurchaseErrorPromptAnimator
	if purchaseState == RobuxUpsellFlowState.Error then
		props.dispatchCentralOverlay(Constants.CENTRAL_OVERLAY_TYPE_ANIMATOR, self:constructPurchaseErrorPromptAnimatorObj())
	end

	-- TwoStepRequiredAnimator
	if purchaseState == RobuxUpsellFlowState.TwoStepRequired then
		props.dispatchCentralOverlay(Constants.CENTRAL_OVERLAY_TYPE_ANIMATOR, self:constructTwoStepRequiredAnimatorObj())
	end

	-- RobuxUpsellSuccessPromptAnimator
	if purchaseState == RobuxUpsellFlowState.Success then
		props.dispatchCentralOverlay(Constants.CENTRAL_OVERLAY_TYPE_ANIMATOR, self:constructRobuxUpsellSuccessPromptAnimatorObj())
	end

	-- InsufficientRobuxAnimator
	if purchaseState == RobuxUpsellFlowState.GenericPurchaseModal then
		props.dispatchCentralOverlay(Constants.CENTRAL_OVERLAY_TYPE_ANIMATOR, self:constructInsufficientRobuxAnimatorObj())
	end

	-- InsufficientRobuxProductAnimator
	if purchaseState == RobuxUpsellFlowState.LargeRobuxPurchaseModal then
		props.dispatchCentralOverlay(Constants.CENTRAL_OVERLAY_TYPE_ANIMATOR, self:constructInsufficientRobuxProductAnimatorObj())
	end

	if purchaseState == RobuxUpsellFlowState.LeaveRobloxWarning then
		props.dispatchCentralOverlay(Constants.CENTRAL_OVERLAY_TYPE_ANIMATOR, self:constructLeaveRobloxPromptAnimatorObj())
	end

	if purchaseState == RobuxUpsellFlowState.PurchaseVPCModal then
		props.dispatchCentralOverlay(Constants.CENTRAL_OVERLAY_TYPE_ANIMATOR, self:constructPurchaseVPCPromptAnimatorObj())
	end
end

function RobuxUpsellFlow:reportModalShown()
	local props: Props = self.props
	local state: State = self.state

	if not self.props.onAnalyticEvent then
		return
	end

	local data = getModalShownEventData(
		state.analyticId,
		props.eventPrefix,
		"RobuxUpsell",
		RobuxUpsellFlowState.toRawValue(props.purchaseState)
	)

	props.onAnalyticEvent("UserPurchaseFlow", data)
end

function RobuxUpsellFlow:reportUserInput(inputType: string)
	local props: Props = self.props
	local state: State = self.state

	local data = getUserInputEventData(
		state.analyticId,
		props.eventPrefix,
		"RobuxUpsell",
		RobuxUpsellFlowState.toRawValue(props.purchaseState),
		inputType
	)
	if not game:GetFastFlag("DisableNonSchematizedInGameRobuxUpsellEvent") then
		if self.props.onAnalyticEvent then
			props.onAnalyticEvent("UserPurchaseFlow", data)
		end
	end

	if game:GetFastFlag("EnableSchematizedInGameRobuxUpsellEvent2") then
		local userid = nil
		if Players.LocalPlayer and Players.LocalPlayer.UserId > 0 then
			userid = Players.LocalPlayer.UserId
		end
		LoggingProtocol:logRobloxTelemetryEvent(
			eventConfig,
			{ LoggingProtocol.StandardizedFields.addOsInfo, LoggingProtocol.StandardizedFields.addSessionId },
			{
				universe_id = game.GameId,
				price = props.itemRobuxCost,
				view_name = data.view_name,
				purchase_event_type = data.purchase_event_type,
				input_type = inputType,
				user_id = tostring(userid)
			}
		)
	end
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

function RobuxUpsellFlow:getChildrenElements()
	local props: Props = self.props

	return {
		RobuxUpsellPromptAnimator = Roact.createElement(Animator, self:constructRobuxUpsellPromptAnimatorObj()),
		U13ConfirmPromptAnimator = Roact.createElement(Animator, self:constructU13ConfirmPromptAnimatorObj()),
		PurchaseErrorPromptAnimator = Roact.createElement(Animator, self:constructPurchaseErrorPromptAnimatorObj()),
		TwoStepRequiredAnimator = Roact.createElement(Animator, self:constructTwoStepRequiredAnimatorObj()),
		RobuxUpsellSuccessPromptAnimator = Roact.createElement(Animator, self:constructRobuxUpsellSuccessPromptAnimatorObj()),
		InsufficientRobuxAnimator = Roact.createElement(Animator, self:constructInsufficientRobuxAnimatorObj()),
		InsufficientRobuxProductAnimator = Roact.createElement(Animator, self:constructInsufficientRobuxProductAnimatorObj()),
		PurchaseVPCPromptAnimator = Roact.createElement(Animator, self:constructPurchaseVPCPromptAnimatorObj()),
	}
end

function RobuxUpsellFlow:render()
	local props: Props = self.props

	-- For in app, we use CentralOverlay
	-- For in game, we use CoreScriptsRootProvider
	local childrenElements = {}
	if not getEnableCentralOverlayForUpsellPrompt() or not props.dispatchCentralOverlay then
		-- it will rendered without central overlay
		childrenElements = self:getChildrenElements()
	end

	return Roact.createElement(LoadingOverlay, {
		shouldAnimate = props.shouldAnimate,
		loadingState = self:purchaseStateToOverlayState(props.purchaseState),
	}, childrenElements)
end

return RobuxUpsellFlow
