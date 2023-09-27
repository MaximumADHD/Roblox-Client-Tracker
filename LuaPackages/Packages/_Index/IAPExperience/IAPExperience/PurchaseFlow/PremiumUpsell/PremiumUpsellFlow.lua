local HttpService = game:GetService("HttpService")
local ContextActionService = game:GetService("ContextActionService")

local PremiumUpsellRoot = script.Parent
local PurchaseFlowRoot = PremiumUpsellRoot.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local UIBlox = require(Packages.UIBlox)
local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal

local PremiumUpsellFlowState = require(PremiumUpsellRoot.PremiumUpsellFlowState)

local Animator = require(IAPExperienceRoot.Generic.Animator)
local Constants = require(IAPExperienceRoot.Generic.Constants)

local PurchaseErrorPrompt = require(IAPExperienceRoot.Generic.PurchaseErrorPrompt)
local PremiumUpsellPrompt = require(IAPExperienceRoot.PremiumUpsell.PremiumUpsellPrompt)

local getModalShownEventData = require(IAPExperienceRoot.Utility.getModalShownEventData)
local getUserInputEventData = require(IAPExperienceRoot.Utility.getUserInputEventData)

local getEnableCentralOverlayForUpsellPrompt = require(IAPExperienceRoot.Flags.getEnableCentralOverlayForUpsellPrompt)

local FFlagCompleteFlowInStudioAccept = game:DefineFastFlag("CompleteFlowInStudioAccept", false)

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

	dispatchCentralOverlay: (any, any) -> any,
}

type State = {
	analyticId: string,
}

function PremiumUpsellFlow:init()
	local props: Props = self.props

	self.state = {
		analyticId = HttpService:GenerateGUID(false),
	}

	self.closeModal = function()
		local props: Props = self.props
		self:reportUserInput("Cancel")
		props.cancelPurchase()
		self:closeCentralOverlay()

		self:UnbindActions()
	end
end

function PremiumUpsellFlow:didUpdate(prevProps: Props, prevState: State)
	local props: Props = self.props

	if prevProps.purchaseState ~= props.purchaseState then
		self:reportModalShown()
		self:dispatchCentralOverlayAndRenderModal(props)
	end
end


function PremiumUpsellFlow:UnbindActions()
	if getEnableCentralOverlayForUpsellPrompt() and self.props.dispatchCentralOverlay then
		ContextActionService:UnbindAction(Constants.CLOSE_MODAL_ACTION)
	end
end

function PremiumUpsellFlow:BindCancelAction()
	-- only if the central overlay is dispatched, we need to make sure the
	-- overlay will be properly handled when canceled action is triggered
	-- otherwise, the B button in console still could trigger modal close but
	-- with the central overlay opening
	if getEnableCentralOverlayForUpsellPrompt() and self.props.dispatchCentralOverlay then
		ContextActionService:BindAction(Constants.CLOSE_MODAL_ACTION, self.closeModal, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Escape)
	end
end

function PremiumUpsellFlow:closeCentralOverlay()
	local props: Props = self.props

	if getEnableCentralOverlayForUpsellPrompt() and props.dispatchCentralOverlay then
		props.dispatchCentralOverlay() -- close the central overlay
	end
end


function PremiumUpsellFlow:constructPremiumUpsellPromptAnimatorObj()
	local props: Props = self.props

	return {
		shouldShow = props.purchaseState == PremiumUpsellFlowState.PurchaseModal,
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
					if FFlagCompleteFlowInStudioAccept and game:GetService("RunService"):IsStudio() then
						props.flowComplete()
					end
					self:closeCentralOverlay()
				end,
				cancelPurchaseActivated = function()
					self:reportUserInput("Cancel")
					props.cancelPurchase()
					self:closeCentralOverlay()
				end,
			})
		end,
	}
end

function PremiumUpsellFlow:constructPurchaseErrorPromptAnimatorObj()
	local props: Props = self.props

	return {
		shouldShow = props.purchaseState == PremiumUpsellFlowState.Error,
		shouldAnimate = true,
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

function PremiumUpsellFlow:dispatchCentralOverlayAndRenderModal(props: Props)
	if not getEnableCentralOverlayForUpsellPrompt() or not props.dispatchCentralOverlay then
		return
	end

	local purchaseState = props.purchaseState
	-- PremiumUpsellPromptAnimator
	if purchaseState == PremiumUpsellFlowState.PurchaseModal then
		props.dispatchCentralOverlay(Constants.CENTRAL_OVERLAY_TYPE_ANIMATOR, self:constructPremiumUpsellPromptAnimatorObj())
	end

	-- PurchaseErrorPromptAnimator
	if purchaseState == PremiumUpsellFlowState.Error then
		props.dispatchCentralOverlay(Constants.CENTRAL_OVERLAY_TYPE_ANIMATOR, self:constructPurchaseErrorPromptAnimatorObj())
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

-- TODO: use function to generate createElement and dispatchCentralOverlay
function PremiumUpsellFlow:getChildrenElements()
	local props: Props = self.props

	return {
		PremiumUpsellPromptAnimator = Roact.createElement(Animator, self:constructPremiumUpsellPromptAnimatorObj()),
		PurchaseErrorPromptAnimator = Roact.createElement(Animator, self:constructPurchaseErrorPromptAnimatorObj()),
	}
end

function PremiumUpsellFlow:render()
	local props: Props = self.props
	-- For in app, we use CentralOverlay
	-- For in game, we use CoreScriptsRootProvider
	local childrenElements = {}
	if not getEnableCentralOverlayForUpsellPrompt() or not props.dispatchCentralOverlay then
		childrenElements = self:getChildrenElements()
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, childrenElements)
end

return PremiumUpsellFlow
