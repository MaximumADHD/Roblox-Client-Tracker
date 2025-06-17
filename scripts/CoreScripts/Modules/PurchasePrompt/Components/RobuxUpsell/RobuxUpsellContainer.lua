--!nonstrict
local Root = script.Parent.Parent.Parent
local GuiService = game:GetService("GuiService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.Workspace.Packages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact
local React = require(CorePackages.Packages.React)

local IAPExperience = require(CorePackages.Workspace.Packages.IAPExperience)
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigationCoreScriptsWrapper = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

local PromptNativeUpsellSuggestions = require(Root.Actions.PromptNativeUpsellSuggestions)

local PurchaseFlow = require(Root.Enums.PurchaseFlow)

local RobuxUpsell =  require(Root.Models.RobuxUpsell)
type RobuxUpsellProduct = RobuxUpsell.Product

local completeRequest = require(Root.Thunks.completeRequest)
local purchaseItem = require(Root.Thunks.purchaseItem)
local launchRobuxUpsell = require(Root.Thunks.launchRobuxUpsell)
local openRobuxStore = require(Root.Thunks.openRobuxStore)
local openSecuritySettings = require(Root.Thunks.openSecuritySettings)
local openTermsOfUse = require(Root.Thunks.openTermsOfUse)
local initiatePurchasePrecheck = require(Root.Thunks.initiatePurchasePrecheck)
local initiateUserPurchaseSettingsPrecheck = require(Root.Thunks.initiateUserPurchaseSettingsPrecheck)
local sendEvent = require(Root.Thunks.sendEvent)
local isMockingPurchases = require(Root.Utils.isMockingPurchases)
local getPlayerPrice = require(Root.Utils.getPlayerPrice)
local isLinksAllowed = require(Root.Utils.isLinksAllowed)
local SelectedRobuxPackage = require(Root.Utils.SelectedRobuxPackage)
local connectToStore = require(Root.connectToStore)

local ExternalEventConnection = require(Root.Components.Connection.ExternalEventConnection)

local GetFFLagUseCoreScriptsRootProviderForUpsellModal =
	require(Root.Flags.GetFFLagUseCoreScriptsRootProviderForUpsellModal)
local FFlagCSFocusWrapperRefactor = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCSFocusWrapperRefactor
local FFlagEnableUpsellSuggestionsAPI = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableUpsellSuggestionsAPI
local UpsellSuggestionsAPIMaxPackages = require(CorePackages.Workspace.Packages.SharedFlags).UpsellSuggestionsAPIMaxPackages

local RobuxUpsellOverlay = require(script.Parent.RobuxUpsellOverlay)

local RobuxUpsellContainer = Roact.Component:extend(script.Name)

local SELECTION_GROUP_NAME = "RobuxUpsellContainer"

local GetFFlagEnableTexasU18VPCForInExperienceRobuxUpsellFlow =
	require(Root.Flags.GetFFlagEnableTexasU18VPCForInExperienceRobuxUpsellFlow)

function RobuxUpsellContainer:init()
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

function RobuxUpsellContainer:createElement()
	local props = self.props
	local state = self.state

	if props.purchaseFlow ~= PurchaseFlow.RobuxUpsellV2 and props.purchaseFlow ~= PurchaseFlow.LargeRobuxUpsell then
		return nil
	end

	local allowLinks = isLinksAllowed()

	local imageIcon = props.productInfo.imageUrl
	if string.find(props.productInfo.imageUrl, "assetid=0") then
		imageIcon = nil
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
		BackgroundTransparency = 1,
	}, {
		Prompt = Roact.createElement(RobuxUpsellOverlay, {
			screenSize = state.screenSize,

			requestType = props.requestType,

			promptState = props.promptState,
			purchaseFlow = props.purchaseFlow,
			purchaseError = props.purchaseError,
			economicRestrictionError = props.economicRestrictionError,

			-- Robux Upsell Suggestions
			useUpsellSuggestions = FFlagEnableUpsellSuggestionsAPI and UpsellSuggestionsAPIMaxPackages > 1,
			upsellSuggestions = props.robuxSuggestions,
			selectedUpsellIndex = props.robuxPackageSelection,
			virtualItemBadgeType = props.virtualItemBadgeType,
			onUpsellSuggestionsSelected = function(index: number)
				props.onUpsellSuggestionsSelected(props.robuxSuggestions, index, props.virtualItemBadgeType)
			end,

			robuxProviderId = props.robuxProductId,
			robuxProductId = props.productId,

			itemIcon = imageIcon,
			itemProductId = props.productInfo.productId,
			itemName = props.productInfo.name,
			itemRobuxCost = getPlayerPrice(
				props.productInfo,
				props.accountInfo.membershipType == 4,
				props.expectedPrice
			),
			iapRobuxAmount = props.robuxPurchaseAmount or 0,
			iapCostStr = props.price,
			beforeRobuxBalance = props.accountInfo.balance,

			isTestPurchase = props.isTestPurchase,
			isGamepadEnabled = props.isGamepadEnabled,

			purchaseItem = props.purchaseItem,
			promptRobuxPurchase = props.promptRobuxPurchase,
			openRobuxStore = props.openRobuxStore,
			openTermsOfUse = allowLinks and props.openTermsOfUse or nil,
			openSecuritySettings = allowLinks and props.openSecuritySettings or nil,
			dispatchFetchPurchaseWarning = props.dispatchFetchPurchaseWarning,
			endPurchase = props.completeRequest,

			onAnalyticEvent = props.onAnalyticEvent,

			humanoidModel = props.humanoidModel,
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

function RobuxUpsellContainer:render()
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
					RobuxUpsellContainer = self:createElement(),
				}
			),
		})
	else
		return self:createElement()
	end
end

RobuxUpsellContainer = connectToStore(function(state)
	local isTestPurchase = isMockingPurchases(state.promptRequest.requestType)

	return {
		purchaseFlow = state.purchaseFlow,
		requestType = state.promptRequest.requestType,
		expectedPrice = state.promptRequest.expectedPrice,

		promptState = state.promptState,
		purchaseError = state.purchaseError,
		economicRestrictionError = state.economicRestrictionError,

		productInfo = state.productInfo,
		accountInfo = state.accountInfo,
		
		-- Robux Upsell Suggestions
		robuxSuggestions = state.robuxUpsellSuggestions.products,
		robuxPackageSelection = state.robuxUpsellSuggestions.selection,
		virtualItemBadgeType = state.robuxUpsellSuggestions.virtualItemBadgeType,

		-- Selected Robux Package details - used for legacy upsell flow and processing
		robuxProductId = SelectedRobuxPackage.getRobuxProductId(state),
		productId = SelectedRobuxPackage.getProductId(state),
		robuxPurchaseAmount = SelectedRobuxPackage.getRobuxPurchaseAmount(state),
		robuxAmountBeforeBonus = SelectedRobuxPackage.getRobuxAmountBeforeBonus(state),
		price = SelectedRobuxPackage.getPrice(state),

		isTestPurchase = isTestPurchase,
		isGamepadEnabled = state.gamepadEnabled,

		humanoidModel = state.promptRequest.humanoidModel,
	}
end, function(dispatch)
	return {
		purchaseItem = function()
			return dispatch(purchaseItem())
		end,
		promptRobuxPurchase = function()
			return dispatch(launchRobuxUpsell())
		end,
		openRobuxStore = function()
			return dispatch(openRobuxStore())
		end,
		openSecuritySettings = function()
			return dispatch(openSecuritySettings())
		end,
		openTermsOfUse = function()
			return dispatch(openTermsOfUse())
		end,
		dispatchFetchPurchaseWarning = function()
			if GetFFlagEnableTexasU18VPCForInExperienceRobuxUpsellFlow() then
				return dispatch(initiateUserPurchaseSettingsPrecheck())
			else
				return dispatch(initiatePurchasePrecheck())
			end
		end,
		completeRequest = function()
			GuiService.SelectedCoreObject = nil
			return dispatch(completeRequest())
		end,
		onUpsellSuggestionsSelected = function(products: {[number]: RobuxUpsellProduct}, index: number, virtualItemBadgeType: string)
			return dispatch(PromptNativeUpsellSuggestions(products, index, virtualItemBadgeType))
		end,
		onAnalyticEvent = function(name, data)
			return dispatch(sendEvent(name, data))
		end,
	}
end)(RobuxUpsellContainer)

return RobuxUpsellContainer
