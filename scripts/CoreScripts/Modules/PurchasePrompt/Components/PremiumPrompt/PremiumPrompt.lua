local Root = script.Parent.Parent.Parent
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact
local Otter = PurchasePromptDeps.Otter
local UIBlox = PurchasePromptDeps.UIBlox
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local PurchaseError = require(Root.Enums.PurchaseError)
local PromptState = require(Root.Enums.PromptState)
local RequestType = require(Root.Enums.RequestType)
local WindowState = require(Root.Enums.WindowState)
local completeRequest = require(Root.Thunks.completeRequest)
local launchPremiumUpsell = require(Root.Thunks.launchPremiumUpsell)
local hideWindow = require(Root.Thunks.hideWindow)
local connectToStore = require(Root.connectToStore)

local ExternalEventConnection = require(script.Parent.Parent.Connection.ExternalEventConnection)
local MultiTextLocalizer = require(script.Parent.Parent.Connection.MultiTextLocalizer)

local PremiumModal = require(script.Parent.PremiumModal)

local PREMIUM_MODAL_LOC_KEY = "CoreScripts.PremiumModal.%s"
local PREMIUM_BUTTON_BIND = "PremiumBackButton"

local PremiumPrompt = Roact.Component:extend(script.Name)

local SPRING_CONFIG = {
	dampingRatio = 1,
	frequency = 1.6,
}

local function isRelevantRequestType(requestType)
	return requestType == RequestType.Premium
end

function PremiumPrompt:init()
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

	local animationProgress, setProgress = Roact.createBinding(0)

	self.motor = Otter.createSingleMotor(0)
	self.motor:start()

	self.motor:onStep(setProgress)
	self.animationProgress = animationProgress

	self.motor:onComplete(function()
		-- Do not complete the request if we are waiting for the browser or native purchase to complete
		if self.props.windowState == WindowState.Hidden
				and isRelevantRequestType(self.props.requestType)
				and self.props.promptState ~= PromptState.UpsellInProgress then
			self.props.setCompleteRequest()
		end
	end)

	self.onClose = function()
		self.props.hideWindow()
	end
end

function PremiumPrompt:didUpdate(prevProps, prevState)
	if prevProps.windowState ~= self.props.windowState then
		local goal = (self.props.windowState == WindowState.Hidden or not isRelevantRequestType(self.props.requestType)) and 0 or 1
		self.motor:setGoal(Otter.spring(goal, SPRING_CONFIG))

		if self.props.windowState == WindowState.Shown then
			ContextActionService:BindCoreAction(
				PREMIUM_BUTTON_BIND,
				function(actionName, inputState, inputObj)
					if inputState == Enum.UserInputState.Begin then
						self.onClose()
					end
				end, false, Enum.KeyCode.ButtonB)
		else
			ContextActionService:UnbindCoreAction(PREMIUM_BUTTON_BIND)
		end
	end
end

function PremiumPrompt:RenderError()
	local purchaseError = self.props.purchaseError

	local errorKey
	if purchaseError == PurchaseError.AlreadyPremium then
		errorKey = "Error.AlreadyPremium"
	elseif purchaseError == PurchaseError.PremiumUnavailablePlatform then
		errorKey = "Error.PlatformUnavailable"
	else
		errorKey = "Error.Unavailable"
	end

	return Roact.createElement(MultiTextLocalizer, {
		keys = {
			titleLocalizedText = {
				key = PREMIUM_MODAL_LOC_KEY:format("Title.Error"),
			},
			errorLocalizedText = {
				key = PREMIUM_MODAL_LOC_KEY:format(errorKey),
			},
			okLocalizedText = {
				key = "CoreScripts.PurchasePrompt.Button.OK",
			},
		},
		render = function(textMap)
			return Roact.createElement(InteractiveAlert, {
				bodyText = textMap.errorLocalizedText,
				buttonStackInfo = {
					buttons = {
						{
							buttonType = ButtonType.PrimarySystem,
							props = {
								onActivated = self.onClose,
								text = textMap.okLocalizedText,
							},
						},
					},
				},
				screenSize = self.state.screenSize,
				title = textMap.titleLocalizedText,
			})
		end
	})
end

function PremiumPrompt:render()
	local promptState = self.props.promptState
	local requestType = self.props.requestType

	local contents
	if promptState == PromptState.None or not isRelevantRequestType(requestType) then
		--[[
			When the prompt is hidden, we'd rather not keep unused Roblox
			instances for it around, so we don't render them
		]]
		contents = nil
	else
		if promptState == PromptState.Error then
			contents = self:RenderError()
		else
			contents = Roact.createElement(PremiumModal,{
				screenSize = self.state.screenSize,
			})
		end
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		AnchorPoint = Vector2.new(0.5, 0),
		Position = self.animationProgress:map(function(value)
			return UDim2.new(0.5, 0, 1 - value, 0)
		end),
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
		BackgroundTransparency = 1,
	}, {
		PremiumPrompt = contents,
		OnCoreGuiMenuOpened = Roact.createElement(ExternalEventConnection, {
			event = GuiService.MenuOpened,
			callback = self.onClose,
		})
	})
end

local function mapStateToProps(state)
	return {
		premiumProductInfo = state.premiumProductInfo,
		promptState = state.promptState,
		requestType = state.promptRequest.requestType,
		purchaseError = state.purchaseError,
		windowState = state.windowState,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		purchasePremium = function()
			dispatch(launchPremiumUpsell())
		end,
		hideWindow = function()
			dispatch(hideWindow())
		end,
		setCompleteRequest = function()
			dispatch(completeRequest())
		end
	}
end

PremiumPrompt = connectToStore(
	mapStateToProps,
	mapDispatchToProps
)(PremiumPrompt)

return PremiumPrompt
