local Root = script.Parent.Parent.Parent
local GuiService = game:GetService("GuiService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact
local React = require(CorePackages.Packages.React)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreScriptsRootProvider = require(RobloxGui.Modules.Common.CoreScriptsRootProvider)
local FocusNavigationEffects = require(RobloxGui.Modules.Common.FocusNavigationEffectsWrapper)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

local RequestType = require(Root.Enums.RequestType)

local completeRequest = require(Root.Thunks.completeRequest)
local launchSubscriptionPurchase = require(Root.Thunks.launchSubscriptionPurchase)
local sendEvent = require(Root.Thunks.sendEvent)
local connectToStore = require(Root.connectToStore)

local ExternalEventConnection = require(Root.Components.Connection.ExternalEventConnection)

local SubscriptionPurchaseOverlay = require(script.Parent.SubscriptionPurchaseOverlay)

local SubscriptionPurchaseContainer = Roact.Component:extend(script.Name)

local SELECTION_GROUP_NAME = "SubscriptionPurchaseContainer"

local GetFFlagFixPlayerGuiSelectionBugOnPromptExit = require(Root.Flags.GetFFlagFixPlayerGuiSelectionBugOnPromptExit)

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
	if GetFFlagFixPlayerGuiSelectionBugOnPromptExit() then
		self.savedSelectedCoreObject = nil
		self.endPurchase = function()
			self:restoreSelectedObject()
			self.props.completeRequest()
		end
	end
end

function SubscriptionPurchaseContainer:saveSelectedObject()
	if not GetFFlagFixPlayerGuiSelectionBugOnPromptExit() then
		return
	end

	self.savedSelectedCoreObject = GuiService.SelectedCoreObject
	GuiService.SelectedCoreObject = nil
end

function SubscriptionPurchaseContainer:restoreSelectedObject()
	if not GetFFlagFixPlayerGuiSelectionBugOnPromptExit() then
		return
	end

	-- We want to restore the selected object if the saved version is either nil or a descendant of CoreGui
	if self.savedSelectedCoreObject == nil or self.savedSelectedCoreObject:IsDescendantOf(CoreGui) then
		GuiService.SelectedCoreObject = self.savedSelectedCoreObject
	end
end

function SubscriptionPurchaseContainer:createElement()
	local props = self.props
	local state = self.state

	if GetFFlagFixPlayerGuiSelectionBugOnPromptExit() then
		self:saveSelectedObject()
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

			subscriptionId = props.subscriptionId,
			name = props.subscriptionPurchaseInfo.Name,
			subscriptionProviderId = props.subscriptionPurchaseInfo.SubscriptionProviderId,
			subscriptionProviderName = props.subscriptionPurchaseInfo.SubscriptionProviderName,
			priceTier = props.subscriptionPurchaseInfo.PriceTier,
			displayPrice = props.subscriptionPurchaseInfo.DisplayPrice,
			period = props.subscriptionPurchaseInfo.DisplaySubscriptionPeriod,
			disclaimerText = props.subscriptionPurchaseInfo.DisclaimerText,
			description = props.subscriptionPurchaseInfo.Description,
			itemIcon = props.subscriptionPurchaseInfo.ImageUrl,

			isGamepadEnabled = props.isGamepadEnabled,
			isTestingMode = props.subscriptionPurchaseInfo.IsTestingMode,

			promptSubscriptionPurchase = props.promptSubscriptionPurchase,
			endPurchase = if GetFFlagFixPlayerGuiSelectionBugOnPromptExit() then self.endPurchase else props.completeRequest,
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
		}),
	})
end

function SubscriptionPurchaseContainer:render()
	if self.props.requestType ~= RequestType.Subscription then
		return nil
	end
	return Roact.createElement(CoreScriptsRootProvider, {}, {
		FocusNavigationEffects = React.createElement(FocusNavigationEffects, {
			selectionGroupName = SELECTION_GROUP_NAME,
			focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.CentralOverlay,
		}, {
			SubscriptionPurchaseContainer = self:createElement(),
		}),
	})
end

SubscriptionPurchaseContainer = connectToStore(function(state)
	return {
		requestType = state.promptRequest.requestType,

		promptState = state.promptState,
		purchaseError = state.purchaseError,

		subscriptionPurchaseInfo = state.subscriptionPurchaseInfo,
		subscriptionId = state.promptRequest.id,
		isGamepadEnabled = state.gamepadEnabled,
	}
end, function(dispatch)
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
end)(SubscriptionPurchaseContainer)

return SubscriptionPurchaseContainer
