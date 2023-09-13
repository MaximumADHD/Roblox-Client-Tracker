local Root = script.Parent.Parent.Parent
local GuiService = game:GetService("GuiService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local RequestType = require(Root.Enums.RequestType)

local completeRequest = require(Root.Thunks.completeRequest)
local launchSubscriptionPurchase = require(Root.Thunks.launchSubscriptionPurchase)
local sendEvent = require(Root.Thunks.sendEvent)
local connectToStore = require(Root.connectToStore)

local ExternalEventConnection = require(Root.Components.Connection.ExternalEventConnection)

local SubscriptionPurchaseOverlay = require(script.Parent.SubscriptionPurchaseOverlay)

local SubscriptionPurchaseContainer = Roact.Component:extend(script.Name)

function SubscriptionPurchaseContainer:init()
	self.state = {
		screenSize = Vector2.new(0, 0),
	}

	self.changeScreenSize = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize,
			})
		end
	end
end

function SubscriptionPurchaseContainer:render()
	local props = self.props
	local state = self.state

	if props.requestType ~= RequestType.Subscription then
		return nil
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
		BackgroundTransparency = 1,
	}, {
		Prompt = Roact.createElement(SubscriptionPurchaseOverlay, {
			screenSize = state.screenSize,

			promptState = props.promptState,
			purchaseError = props.purchaseError,

			name = props.subscriptionPurchaseInfo.Name,
			subscriptionProviderName = props.subscriptionPurchaseInfo.SubscriptionProviderName,
			displayPrice = props.subscriptionPurchaseInfo.DisplayPrice,
			period = props.subscriptionPurchaseInfo.DisplaySubscriptionPeriod,
			disclaimerText = props.subscriptionPurchaseInfo.DisclaimerText,
			description = props.subscriptionPurchaseInfo.Description,
			itemIcon = props.subscriptionPurchaseInfo.ImageUrl,
	
			isTestingMode = props.subscriptionPurchaseInfo.IsTestingMode,

			promptSubscriptionPurchase = props.promptSubscriptionPurchase,
			endPurchase = props.completeRequest,

			onAnalyticEvent = props.onAnalyticEvent,
		}),
		-- UIBlox components do not have Modal == true to fix FPS interaction with modals
		ModalFix = Roact.createElement("ImageButton", {
			BackgroundTransparency = 0,
			Modal = true,
			Size = UDim2.new(0, 0, 0, 0),
		}),
		OnCoreGuiMenuOpened = Roact.createElement(ExternalEventConnection, {
			event = GuiService.MenuOpened,
			callback = function()
				props.completeRequest()
			end,
		})
	})
end

SubscriptionPurchaseContainer = connectToStore(
	function(state)
		return {
			requestType = state.promptRequest.requestType,

			promptState = state.promptState,
			purchaseError = state.purchaseError,

			subscriptionPurchaseInfo = state.subscriptionPurchaseInfo,
		}
	end,
	function(dispatch)
		return {
			promptSubscriptionPurchase = function()
				return dispatch(launchSubscriptionPurchase())
			end,
			completeRequest = function()
				return dispatch(completeRequest())
			end,
			onAnalyticEvent = function(name, data)
				return dispatch(sendEvent(name, data))
			end,
		}
	end
)(SubscriptionPurchaseContainer)

return SubscriptionPurchaseContainer
