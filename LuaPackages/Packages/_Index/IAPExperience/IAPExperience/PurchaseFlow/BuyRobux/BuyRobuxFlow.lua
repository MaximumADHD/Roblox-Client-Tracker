local HttpService = game:GetService("HttpService")

local BuyRobuxRoot = script.Parent
local PurchaseFlowRoot = BuyRobuxRoot.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local BuyRobuxFlowState = require(BuyRobuxRoot.BuyRobuxFlowState)

local Constants = require(IAPExperienceRoot.Generic.Constants)
local LoadingOverlay = require(IAPExperienceRoot.Generic.LoadingOverlay)
local LoadingOverlayState = require(IAPExperienceRoot.Generic.LoadingOverlayState)
local BuyRobuxPage = require(IAPExperienceRoot.BuyRobux.BuyRobuxPage)
local PurchaseErrorPrompt = require(IAPExperienceRoot.Generic.PurchaseErrorPrompt)
local U13ConfirmPrompt = require(IAPExperienceRoot.Generic.U13ConfirmPrompt)

local getModalShownEventData = require(IAPExperienceRoot.Utility.getModalShownEventData)
local getUserInputEventData = require(IAPExperienceRoot.Utility.getUserInputEventData)

local BuyRobuxFlow = Roact.Component:extend(script.Name)

type Props = {
	screenSize: Vector2,
	isConsoleSize: boolean?,
	shouldAnimate: boolean?,
	showBackground: boolean?,
	showCloseButton: boolean?,

	robuxBalance: number?,
	robuxPackages: table?,

	-- TODO: Add enum type?
	purchaseState: any?,
	errorType: any?,
	u13ConfirmType: any?,

	purchaseRobux: (string) -> any,
	acceptPurchaseWarning: () -> any?,
	cancelPurchase: () -> any?,

	onAnalyticEvent: (string, table) -> any?,
	onPageClose: () -> any,
	flowComplete: () -> any,
	dispatchCentralOverlay: (any, any) -> any,
}

type State = {
	analyticId: string,
}

function BuyRobuxFlow:init()
	local props: Props = self.props

	self.state = {
		analyticId = HttpService:GenerateGUID(false),
	}
end

function BuyRobuxFlow:didUpdate(prevProps: Props, prevState: State)
	local props: Props = self.props

	if prevProps.purchaseState ~= props.purchaseState then
		self:reportModalShown()
		self:dispatchAndRenderModal(props)
	end
end

-- Use CentralOverlay to render the modals so that they could get the gamepad focus on Console
function BuyRobuxFlow:dispatchAndRenderModal(props: Props)
	if props.purchaseState == BuyRobuxFlowState.Error then
		props.dispatchCentralOverlay(Constants.CENTRAL_OVERLAY_TYPE_ANIMATOR, {
			shouldAnimate = props.shouldAnimate,
			shouldShow = props.purchaseState == BuyRobuxFlowState.Error,
			renderChildren = function()
				return Roact.createElement(PurchaseErrorPrompt, {
					screenSize = props.screenSize,

					errorType = props.errorType,

					doneControllerIcon = props.acceptControllerIcon,

					doneActivated = function()
						self:reportUserInput("Done")
						props.flowComplete()
						props.dispatchCentralOverlay(); -- close the modal
					end,
				})
			end,
		})
		return
	end

	if props.purchaseState == BuyRobuxFlowState.PurchaseWarning then
		props.dispatchCentralOverlay(Constants.CENTRAL_OVERLAY_TYPE_ANIMATOR, {
			shouldAnimate = props.shouldAnimate,
			shouldShow = props.purchaseState == BuyRobuxFlowState.PurchaseWarning,
			renderChildren = function()
				return Roact.createElement(U13ConfirmPrompt, {
					screenSize = props.screenSize,

					modalType = props.u13ConfirmType,

					doneActivated = function()
						self:reportUserInput("Confirm")
						props.acceptPurchaseWarning()
						props.dispatchCentralOverlay(); -- close the modal
					end,
					cancelActivated = function()
						self:reportUserInput("Cancel")
						props.cancelPurchase()
						props.dispatchCentralOverlay(); -- close the modal
					end,
				})
			end,
		})
		return
	end
end

function BuyRobuxFlow:reportModalShown()
	local props: Props = self.props
	local state: State = self.state

	if not self.props.onAnalyticEvent then
		return
	end

	local data =
		getModalShownEventData(state.analyticId, "", "BuyRobux", BuyRobuxFlowState.toRawValue(props.purchaseState))

	props.onAnalyticEvent("UserPurchaseFlow", data)
end

function BuyRobuxFlow:reportUserInput(inputType: string)
	local props: Props = self.props
	local state: State = self.state

	if not self.props.onAnalyticEvent then
		return
	end

	local data = getUserInputEventData(
		state.analyticId,
		"",
		"BuyRobux",
		BuyRobuxFlowState.toRawValue(props.purchaseState),
		inputType
	)

	props.onAnalyticEvent("UserPurchaseFlow", data)
end

function BuyRobuxFlow:purchaseStateToOverlayState(purchaseState: any?): any?
	if purchaseState == BuyRobuxFlowState.Loading then
		return LoadingOverlayState.Loading
	elseif purchaseState == BuyRobuxFlowState.RobuxPurchasePending then
		return LoadingOverlayState.PurchasingRobux
	elseif purchaseState == BuyRobuxFlowState.RobuxGrantPending then
		return LoadingOverlayState.WaitingForRobux
	elseif purchaseState == BuyRobuxFlowState.PurchaseWarning then
		return LoadingOverlayState.None -- Show faded overlay
	elseif purchaseState == BuyRobuxFlowState.None then
		return LoadingOverlayState.None -- Show faded overlay
	else
		return nil -- Do not show faded overlay
	end
end

function BuyRobuxFlow:render()
	local props: Props = self.props
	local state: State = self.state
	local purchaseState = props.purchaseState

	local loadingOverlayState = self:purchaseStateToOverlayState(props.purchaseState)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		BuyRobuxFrame = Roact.createElement(BuyRobuxPage, {
			showCloseButton = props.showCloseButton,
			showBackground = props.showBackground,
			isConsoleSize = props.isConsoleSize,

			robuxBalance = props.robuxBalance,
			robuxPackages = props.robuxPackages,

			robuxPackageActivated = function(packageId: string)
				self:reportUserInput("Confirm")
				props.purchaseRobux(packageId)
			end,
			onPageClose = props.onPageClose,
			hasNativePurchaseSucceeded = purchaseState == BuyRobuxFlowState.Succeed,
			shouldAnimate = props.shouldAnimate,
			analyticId = state.analyticId,
			onAnalyticEvent = props.onAnalyticEvent,
		}),
		LoadingOverlay = Roact.createElement(LoadingOverlay, {
			shouldAnimate = false,
			showOverlay = loadingOverlayState ~= nil,
			loadingState = loadingOverlayState,
		}),
	})
end

return BuyRobuxFlow
