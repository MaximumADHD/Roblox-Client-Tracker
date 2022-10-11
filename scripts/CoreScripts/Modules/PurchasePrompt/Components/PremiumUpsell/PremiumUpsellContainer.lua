local Root = script.Parent.Parent.Parent
local GuiService = game:GetService("GuiService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local RequestType = require(Root.Enums.RequestType)

local completeRequest = require(Root.Thunks.completeRequest)
local launchPremiumUpsell = require(Root.Thunks.launchPremiumUpsell)
local sendEvent = require(Root.Thunks.sendEvent)
local connectToStore = require(Root.connectToStore)

local ExternalEventConnection = require(Root.Components.Connection.ExternalEventConnection)

local PremiumUpsellOverlay = require(script.Parent.PremiumUpsellOverlay)

local PremiumUpsellContainer = Roact.Component:extend(script.Name)

function PremiumUpsellContainer:init()
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

function PremiumUpsellContainer:render()
	local props = self.props
	local state = self.state

	if props.requestType ~= RequestType.Premium then
		return nil
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
		BackgroundTransparency = 1,
	}, {
		Prompt = Roact.createElement(PremiumUpsellOverlay, {
			screenSize = state.screenSize,

			promptState = props.promptState,
			purchaseError = props.purchaseError,

			currencySymbol = props.premiumProductInfo.currencySymbol,
			robuxPrice = props.premiumProductInfo.price,
			robuxAmount = props.premiumProductInfo.robuxAmount,

			isGamepadEnabled = props.isGamepadEnabled,

			promptPremiumPurchase = props.promptPremiumPurchase,
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

PremiumUpsellContainer = connectToStore(
	function(state)
		return {
			requestType = state.promptRequest.requestType,

			promptState = state.promptState,
			purchaseError = state.purchaseError,

			premiumProductInfo = state.premiumProductInfo,

			isGamepadEnabled = state.gamepadEnabled,
		}
	end,
	function(dispatch)
		return {
			promptPremiumPurchase = function()
				return dispatch(launchPremiumUpsell())
			end,
			completeRequest = function()
				return dispatch(completeRequest())
			end,
			onAnalyticEvent = function(name, data)
				return dispatch(sendEvent(name, data))
			end,
		}
	end
)(PremiumUpsellContainer)

return PremiumUpsellContainer
