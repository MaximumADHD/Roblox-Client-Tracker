local Root = script.Parent.Parent.Parent
local GuiService = game:GetService("GuiService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.Workspace.Packages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact
local React = require(CorePackages.Packages.React)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigationCoreScriptsWrapper = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

local RequestType = require(Root.Enums.RequestType)

local completeRequest = require(Root.Thunks.completeRequest)
local launchPremiumUpsell = require(Root.Thunks.launchPremiumUpsell)
local sendEvent = require(Root.Thunks.sendEvent)
local connectToStore = require(Root.connectToStore)
local initiatePremiumPrecheck = require(Root.Thunks.initiatePremiumPrecheck)

local ExternalEventConnection = require(Root.Components.Connection.ExternalEventConnection)

local PremiumUpsellOverlay = require(script.Parent.PremiumUpsellOverlay)

local GetFFLagUseCoreScriptsRootProviderForUpsellModal =
	require(Root.Flags.GetFFLagUseCoreScriptsRootProviderForUpsellModal)
local FFlagCSFocusWrapperRefactor = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCSFocusWrapperRefactor

local PremiumUpsellContainer = Roact.Component:extend(script.Name)

local SELECTION_GROUP_NAME = "PremiumUpsellContainer"

local GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium =
	require(Root.Flags.GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium)

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
	if GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium() then
		self.savedSelectedCoreObject = nil
		self.endPurchase = function()
			self:restoreSelectedObject()
			self.props.completeRequest()
		end
	end
end

function PremiumUpsellContainer:saveSelectedObject()
	if not GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium() then
		return
	end

	self.savedSelectedCoreObject = GuiService.SelectedCoreObject
	GuiService.SelectedCoreObject = nil
end

function PremiumUpsellContainer:restoreSelectedObject()
	if not GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium() then
		return
	end

	-- We want to restore the selected object if the saved version is either nil or a descendant of CoreGui
	if self.savedSelectedCoreObject == nil or self.savedSelectedCoreObject:IsDescendantOf(CoreGui) then
		GuiService.SelectedCoreObject = self.savedSelectedCoreObject
	end
end

function PremiumUpsellContainer:createElement()
	local props = self.props
	local state = self.state

	if props.requestType ~= RequestType.Premium then
		return nil
	end

	if GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium() then
		self:saveSelectedObject()
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
			economicRestrictionError = props.economicRestrictionError,

			currencySymbol = props.premiumProductInfo.currencySymbol,
			robuxPrice = props.premiumProductInfo.price,
			robuxAmount = props.premiumProductInfo.robuxAmount,

			isGamepadEnabled = props.isGamepadEnabled,

			promptPremiumPurchase = props.promptPremiumPurchase,
			dispatchPremiumPrecheck = props.dispatchPremiumPrecheck,
			endPurchase = if GetFFlagFixPlayerGuiSelectionBugOnPromptExitPremium()
				then self.endPurchase
				else props.completeRequest,

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

function PremiumUpsellContainer:render()
	if GetFFLagUseCoreScriptsRootProviderForUpsellModal() then
		return Roact.createElement(CoreScriptsRootProvider, {}, {
			FocusNavigationCoreScriptsWrapper = React.createElement(
				if FFlagCSFocusWrapperRefactor then FocusRoot else FocusNavigationCoreScriptsWrapper,
				if FFlagCSFocusWrapperRefactor
					then {
						surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.CentralOverlay,
						isIsolated = true,
						isAutoFocusRoot = true,
					}
					else {
						selectionGroupName = SELECTION_GROUP_NAME,
						focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.CentralOverlay,
					},
				{
					PremiumUpsellContainer = self:createElement(),
				}
			),
		})
	else
		return self:createElement()
	end
end

PremiumUpsellContainer = connectToStore(function(state)
	return {
		requestType = state.promptRequest.requestType,

		promptState = state.promptState,
		purchaseError = state.purchaseError,
		economicRestrictionError = state.economicRestrictionError,

		premiumProductInfo = state.premiumProductInfo,

		isGamepadEnabled = state.gamepadEnabled,
	}
end, function(dispatch)
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
		dispatchPremiumPrecheck = function()
			return dispatch(initiatePremiumPrecheck())
		end,
	}
end)(PremiumUpsellContainer)

return PremiumUpsellContainer
