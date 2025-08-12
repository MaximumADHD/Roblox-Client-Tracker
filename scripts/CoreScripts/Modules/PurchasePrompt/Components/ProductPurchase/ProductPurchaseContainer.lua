--!nonstrict
local Root = script.Parent.Parent.Parent
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")
local AssetService = game:GetService("AssetService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.Workspace.Packages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CachedPolicyService = require(CorePackages.Workspace.Packages.CachedPolicyService)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

local UIBlox = PurchasePromptDeps.UIBlox
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images

local IAPExperience = require(CorePackages.Workspace.Packages.IAPExperience)
local ProductPurchase = IAPExperience.ProductPurchase
local ProductPurchaseRobuxUpsell = IAPExperience.ProductPurchaseRobuxUpsell
local LeaveRobloxAlert = IAPExperience.LeaveRobloxAlert
local IAPAnimator = IAPExperience.Animator

local PurchaseFlow = require(Root.Enums.PurchaseFlow)
local RequestType = require(Root.Enums.RequestType)
local PromptState = require(Root.Enums.PromptState)
local WindowState = require(Root.Enums.WindowState)
local PurchaseError = require(Root.Enums.PurchaseError)
local hideWindow = require(Root.Thunks.hideWindow)
local completeRequest = require(Root.Thunks.completeRequest)
local purchaseItem = require(Root.Thunks.purchaseItem)
local completePurchase = require(Root.Thunks.completePurchase)
local launchRobuxUpsell = require(Root.Thunks.launchRobuxUpsell)
local openSecuritySettings = require(Root.Thunks.openSecuritySettings)
local initiatePurchasePrecheck = require(Root.Thunks.initiatePurchasePrecheck)
local isMockingPurchases = require(Root.Utils.isMockingPurchases)
local connectToStore = require(Root.connectToStore)
local sendEvent = require(Root.Thunks.sendEvent)
local PublishAssetAnalytics = require(Root.Utils.PublishAssetAnalytics)

local PurchasePromptPolicy = require(Root.Components.Connection.PurchasePromptPolicy)
local ExternalEventConnection = require(Root.Components.Connection.ExternalEventConnection)
local MultiTextLocalizer = require(Root.Components.Connection.MultiTextLocalizer)
local LocalizationService = require(Root.Localization.LocalizationService)
local getPlayerPrice = require(Root.Utils.getPlayerPrice)
local isGenericChallengeResponse = require(Root.Utils.isGenericChallengeResponse)
local SelectedRobuxPackage = require(Root.Utils.SelectedRobuxPackage)

local initiateUserPurchaseSettingsPrecheck = require(Root.Thunks.initiateUserPurchaseSettingsPrecheck)
local GetFFlagEnableTexasU18VPCForInExperienceBundleRobuxUpsellFlow =
	require(Root.Flags.GetFFlagEnableTexasU18VPCForInExperienceBundleRobuxUpsellFlow)
local VerifiedParentalConsentDialog = require(CorePackages.Workspace.Packages.VerifiedParentalConsentDialog)
local VPCModal = VerifiedParentalConsentDialog.VerifiedParentalConsentDialog
local VPCModalType = require(Root.Enums.VPCModalType)
local Animator = require(script.Parent.Animator)
local FFlagAddCursorProviderToPurchasePromptApp = require(Root.Flags.FFlagAddCursorProviderToPurchasePromptApp)
local FFlagPurchasePromptPriceShouldUseProductInfoPrice = game:DefineFastFlag("PurchasePromptPriceShouldUseProductInfoPrice", false)

-- Imports needed for analytics
local HttpService = game:GetService("HttpService")
local setPurchaseFlowUUID = require(Root.Actions.SetPurchaseFlowUUID)

-- Used for PurchaseFlowUUID migration metrics
local FFlagEnablePurchaseFlowUUIDMigration = require(Root.Flags.FFlagEnablePurchaseFlowUUIDMigration)

local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol)

-- Import centralized telemetry configs from Events directory
local CentralizedTelemetry = require(Root.Events.PurchaseFlowUUIDTelemetry)

-- Imports needed for the new upsell modal experiment
local DesktopUpsellExperiment = IAPExperience.Utility.DesktopUpsellExperiment
local PurchaseProductModal = IAPExperience.ProductPurchaseModal
local RobuxUpsellModal = IAPExperience.RobuxUpsellModal
local RobuxUpsellModalTooExpensiveFallback = IAPExperience.RobuxUpsellModalTooExpensiveFallback

local ProductPurchaseContainer = Roact.Component:extend(script.Name)

local CONFIRM_BUTTON_BIND = "ProductPurchaseConfirmButtonBind"
local CANCEL_BUTTON_BIND = "ProductPurchaseCancelButtonBind"

-- ProductPurchaseContainer localization keys
local BUY_ITEM_LOCALE_KEY = "CoreScripts.PurchasePrompt.Title.BuyItem"
local SETTINGS_LOCALE_KEY = "CoreScripts.PurchasePrompt.Button.Settings"
local OK_LOCALE_KEY = "CoreScripts.PurchasePrompt.Button.OK"
local CANCEL_LOCALE_KEY = "CoreScripts.PurchasePrompt.CancelPurchase.Cancel"
local ERROR_LOCALE_KEY = "CoreScripts.PremiumModal.Title.Error"

-- RobloxTranslator localization keys
local PURCHASE_COMPLETE_HEADER_KEY = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.SuccessHeading"
local PURCHASE_COMPLETE_DESC_KEY = "CoreScripts.PublishAvatarPrompt.PurchaseCompleteDescription"
local OK_BUTTON_KEY = "CoreScripts.PublishAssetPrompt.ResultModalOk"

local ERROR_ICON = "icons/status/error_large"

local DELAYED_INPUT_SEC = 2.5

local FFlagPPTwoFactorLogOutMessage = game:DefineFastFlag("PPTwoFactorLogOutMessage", false)

local GetFFlagOpenVngTosForVngRobuxUpsell =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagOpenVngTosForVngRobuxUpsell
local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)
local getAppFeaturePolicies = UniversalAppPolicy.getAppFeaturePolicies

local function isRelevantRequestType(requestType, purchaseFlow)
	if purchaseFlow == PurchaseFlow.RobuxUpsellV2 or purchaseFlow == PurchaseFlow.LargeRobuxUpsell then
		return false
	end
	return requestType == RequestType.Asset
		or requestType == RequestType.Bundle
		or requestType == RequestType.GamePass
		or requestType == RequestType.Product
		or requestType == RequestType.AvatarCreationFee
end

-- Since we're mimicking RobuxUpsellFlow, we need to map our prompt state to that component's state
local function promptStateToViewName(promptState): string
	local switch = {
		[PromptState.RobuxUpsell] = "PurchaseModal",
		[PromptState.UpsellInProgress] = "RobuxPurchasePending",
	}
	return switch[promptState]
end

function ProductPurchaseContainer:init()
	self.state = {
		screenSize = Vector2.new(0, 0),
		isLuobu = false,
		analyticId = HttpService:GenerateGUID(false),
	}

	if not FFlagEnablePurchaseFlowUUIDMigration then
		-- Legacy: generate UUID in component init
		self.props.setPurchaseFlowUUID(HttpService:GenerateGUID(false))
		LoggingProtocol.default:logRobloxTelemetryCounter(
			CentralizedTelemetry.ProductPurchaseContainerMigrationCounter, 
			1.0,
			{
				method = "ProductPurchaseContainerInit",
			}
		)
	end

	coroutine.wrap(function()
		if CachedPolicyService:IsSubjectToChinaPolicies() then
			self:setState({
				isLuobu = true,
			})
		end
	end)()

	-- Desktop in game upsell follows a different flow than all other upsells
	-- We're mimicking the events emitted in the following componenet here:
	-- modules/economy/in-app-purchasing/iap-experience/src/PurchaseFlow/RobuxUpsell/RobuxUpsellFlow.lua
	self.emitPurchaseFlowEvent = function(eventType, inputType)
		-- If view name not explicitly set, don't emit event
		local viewName = promptStateToViewName(self.props.promptState)
		if not viewName then
			return
		end
		local data = {
			purchase_flow_uuid = self.props.purchaseFlowUUID,
			purchase_flow = "InGameRobuxUpsell",
			view_name = viewName,
			purchase_event_type = eventType,
			input_type = inputType,
			event_metadata = HttpService:JSONEncode({
				universe_id = tostring(game.GameId),
				item_product_id = tostring(self.props.productInfo.productId),
				item_name = self.props.productInfo.name,
				price = tostring(self.props.productInfo.price),
				user_balance = tostring(self.props.accountInfo.balance) or nil,
				package_robux_amount = tostring(self.props.robuxPurchaseAmount) or nil,
			}),
		}
		self.props.onAnalyticEvent("UserPurchaseFlow", data)
	end

	self.changeScreenSize = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize,
			})
		end
	end

	self.hasDelayedInput = function()
		-- No delayed input on test purchases (helps testing in studio)
		local isTestPurchase = self.props.isTestPurchase
		if isTestPurchase then
			return false
		end

		local promptState = self.props.promptState
		return promptState == PromptState.PromptPurchase
			or promptState == PromptState.PurchaseInProgress
			or promptState == PromptState.RobuxUpsell
			or promptState == PromptState.UpsellInProgress
	end

	self.isWindowShowAndDoneAnimating = function()
		return self.state.isAnimating == false
	end

	self.canConfirmInput = function()
		if Players.LocalPlayer.GameplayPaused then
			return false
		end
		-- check == false because isAnimating == nil is used for when its not even shown
		local isDoneAnimating = self.isWindowShowAndDoneAnimating()

		if self.hasDelayedInput() then
			local isDelayedInputDone = false
			if self.state.doneAnimatingTime then
				-- TODO: Ideally, the button itself tells us when its ready for input
				-- However, there are several issues that prevent a clean implementation
				-- 1) GenericButton uses a spring animation that limits our animation
				-- It clamps at its goal because it has a dampening less than 1
				-- This means the actual time of the motor != its actual animation time
				-- 2) Even if we have dampening == 1, the animator still has a very slow roll off
				-- the onComplete callback doesn't match the end of the loading bar well
				--
				-- So because of all of this, we have a nice tunable number to allow accepting input
				isDelayedInputDone = os.clock() - self.state.doneAnimatingTime > DELAYED_INPUT_SEC
			end
			return isDoneAnimating and isDelayedInputDone
		end

		return isDoneAnimating
	end
	self.getConfirmButtonAction = function(promptState, requestType, purchaseError)
		if promptState == PromptState.None or not isRelevantRequestType(requestType) then
			return nil
		elseif promptState == PromptState.PromptPurchase or promptState == PromptState.PurchaseInProgress then
			return self.props.onBuy
		elseif
			promptState == PromptState.RobuxUpsell
			or promptState == PromptState.UpsellInProgress
			or promptState == PromptState.LeaveRobloxWarning
		then
			return self.props.onRobuxUpsell
		elseif
			promptState == PromptState.U13PaymentModal
			or promptState == PromptState.U13MonthlyThreshold1Modal
			or promptState == PromptState.U13MonthlyThreshold2Modal
			or promptState == PromptState.ParentalConsentWarningPaymentModal13To17
		then
			return self.props.onScaryModalConfirm
		elseif promptState == PromptState.Error and purchaseError == PurchaseError.TwoFactorNeededSettings then
			return self.props.onOpenSecuritySettings
		elseif isGenericChallengeResponse(purchaseError) then
			return function()
				self.props.onOpenSecuritySettings(purchaseError)
			end
		else
			return self.props.hideWindow
		end
	end

	self.getCancelButtonAction = function(promptState, requestType)
		if promptState == PromptState.None or not isRelevantRequestType(requestType) then
			return nil
		else
			return self.props.hideWindow
		end
	end

	self.confirmButtonPressed = function()
		if
			self.props.requestType == RequestType.AvatarCreationFee
			and self.props.promptState == PromptState.PromptPurchase
		then
			PublishAssetAnalytics.sendButtonClicked(
				PublishAssetAnalytics.Section.BuyItemModal,
				PublishAssetAnalytics.Element.Buy
			)
		end
		local confirmButtonAction =
			self.getConfirmButtonAction(self.props.promptState, self.props.requestType, self.props.purchaseError)
		if confirmButtonAction ~= nil and self.canConfirmInput() then
			confirmButtonAction()
		end
	end

	self.cancelButtonPressed = function()
		if
			self.props.requestType == RequestType.AvatarCreationFee
			and self.props.promptState == PromptState.PromptPurchase
		then
			PublishAssetAnalytics.sendButtonClicked(
				PublishAssetAnalytics.Section.BuyItemModal,
				PublishAssetAnalytics.Element.Cancel
			)
		end
		local cancelButtonAction = self.getCancelButtonAction(self.props.promptState, self.props.requestType)
		if cancelButtonAction ~= nil then
			cancelButtonAction()
		end
	end

	-- Setup on prop change + init, handles both cases where this modal can persist forever or not
	self.configContextActionService = function(windowState)
		if windowState == WindowState.Shown then
			ContextActionService:BindCoreAction(CONFIRM_BUTTON_BIND, function(actionName, inputState, inputObj)
				if inputState == Enum.UserInputState.Begin then
					self.confirmButtonPressed()
				end
			end, false, Enum.KeyCode.ButtonA)
			ContextActionService:BindCoreAction(CANCEL_BUTTON_BIND, function(actionName, inputState, inputObj)
				if inputState == Enum.UserInputState.Begin then
					self.cancelButtonPressed()
				end
			end, false, Enum.KeyCode.ButtonB)
		else
			ContextActionService:UnbindCoreAction(CONFIRM_BUTTON_BIND)
			ContextActionService:UnbindCoreAction(CANCEL_BUTTON_BIND)
		end
	end

	self.getVPCModalType = function(promptState)
		if promptState == PromptState.EnablePurchaseVPCModal then
			return VPCModalType.toRawValue(VPCModalType.EnablePurchase)
		end
		return VPCModalType.toRawValue(VPCModalType.None)
	end
end

function ProductPurchaseContainer:didMount()
	local purchaseFlow = self.props.purchaseFlow
	local requestType = self.props.requestType

	if self.props.windowState == WindowState.Shown and isRelevantRequestType(requestType, purchaseFlow) then
		self:setState({
			isAnimating = true,
		})
		self.configContextActionService(self.props.windowState)

		GuiService.SetPurchasePromptIsShown(true)
	end
end

function ProductPurchaseContainer:willUpdate(nextProps)
	if self.props.expectedPrice ~= nextProps.expectedPrice then
		self:setState({})
	end
end

function ProductPurchaseContainer:didUpdate(prevProps, prevState)
	-- Legacy UUID generation - only when flag is disabled
	-- When flag is enabled, UUID generation happens in initiatePurchase thunk
	if not FFlagEnablePurchaseFlowUUIDMigration 
		and self.props.promptState ~= prevProps.promptState 
		and self.props.promptState == PromptState.None 
	then
		local newUUID = HttpService:GenerateGUID(false)
		self.props.setPurchaseFlowUUID(newUUID)

		LoggingProtocol.default:logRobloxTelemetryCounter(
			CentralizedTelemetry.ProductPurchaseContainerMigrationCounter,
			1.0,
			{
				method = "ProductPurchaseContainerDidUpdate",
			}
		)
	end
	
	-- Game unpause and purchase workflow could be triggered at the same time by doing some hack.
	-- The fix is to check the game pause status in didUpdate(), and close ourchase prompt if in game pause.
	-- More details in https://jira.rbx.com/browse/CLI-59903.
	if Players.LocalPlayer.GameplayPaused then
		self.props.onAnalyticEvent("PurchasePromptGamePausedDetected", { place_id = game.PlaceId })
		self.props.hideWindow()
	end

	local purchaseFlow = self.props.purchaseFlow
	local requestType = self.props.requestType

	if prevProps.windowState ~= self.props.windowState and isRelevantRequestType(requestType, purchaseFlow) then
		self:setState({
			isAnimating = true,
		})
		self.configContextActionService(self.props.windowState)

		GuiService:SetPurchasePromptIsShown(self.props.windowState == WindowState.Shown)

		if FFlagAddCursorProviderToPurchasePromptApp then
			if self.props.windowState == WindowState.Hidden then
				self.props.completeRequest()
			end
		end
	end

	if
		requestType == RequestType.AvatarCreationFee
		and self.props.promptState == PromptState.PurchaseComplete
		and prevProps.promptState ~= PromptState.PurchaseComplete
	then
		PublishAssetAnalytics.sendPageLoad(PublishAssetAnalytics.Section.ProcessCompleteModal)
	end

	-- Call the function anytime the prompt state changes
	-- reportModalShown will be responsible for determining how to process the prompt state
	if prevProps.promptState ~= self.props.promptState then
		self.emitPurchaseFlowEvent("ViewShown")
	end
end

function ProductPurchaseContainer:getMessageKeysFromPromptState()
	local promptState = self.props.promptState
	local productInfo = self.props.productInfo
	local purchaseError = self.props.purchaseError

	if promptState == PromptState.PurchaseComplete then
		return {
			messageText = {
				key = "CoreScripts.PurchasePrompt.PurchaseMessage.Succeeded",
				params = {
					ITEM_NAME = productInfo.name,
				},
			},
			okText = { key = OK_LOCALE_KEY },
			titleText = { key = BUY_ITEM_LOCALE_KEY },
		}
	elseif promptState == PromptState.U13PaymentModal then
		return {
			messageText = { key = "CoreScripts.PurchasePrompt.PurchaseDetails.ScaryModalOne" },
			okText = { key = OK_LOCALE_KEY },
			titleText = { key = BUY_ITEM_LOCALE_KEY },
		}
	elseif promptState == PromptState.U13MonthlyThreshold1Modal then
		return {
			messageText = { key = "CoreScripts.PurchasePrompt.PurchaseDetails.ScaryModalTwo" },
			okText = { key = OK_LOCALE_KEY },
			titleText = { key = BUY_ITEM_LOCALE_KEY },
		}
	elseif promptState == PromptState.U13MonthlyThreshold2Modal then
		return {
			messageText = { key = "CoreScripts.PurchasePrompt.PurchaseDetails.ScaryModalParental" },
			okText = { key = OK_LOCALE_KEY },
			titleText = { key = BUY_ITEM_LOCALE_KEY },
		}
	elseif promptState == PromptState.ParentalConsentWarningPaymentModal13To17 then
		return {
			messageText = { key = "CoreScripts.PurchasePrompt.PurchaseDetails.ParentalConsent" },
			okText = { key = OK_LOCALE_KEY },
			titleText = { key = BUY_ITEM_LOCALE_KEY },
		}
	elseif promptState == PromptState.Error then
		if purchaseError == PurchaseError.UnknownFailure then
			return {
				messageText = {
					key = LocalizationService.getErrorKey(purchaseError),
					params = {
						ITEM_NAME = productInfo.name,
					},
				},
				okText = { key = OK_LOCALE_KEY },
				titleText = { key = ERROR_LOCALE_KEY },
			}
		elseif purchaseError == PurchaseError.TwoFactorNeededSettings or isGenericChallengeResponse(purchaseError) then
			local messageKey = "CoreScripts.PurchasePrompt.PurchaseFailed.Enable2SV"
			if FFlagPPTwoFactorLogOutMessage then
				messageKey = "CoreScripts.PurchasePrompt.PurchaseFailed.Enable2SVLogout"
			end

			return {
				messageText = { key = messageKey },
				okText = { key = SETTINGS_LOCALE_KEY },
				cancelText = { key = CANCEL_LOCALE_KEY },
				titleText = { key = "CoreScripts.PurchasePrompt.Title.VerificationRequired" },
			}
		else
			return {
				messageText = { key = LocalizationService.getErrorKey(purchaseError) },
				okText = { key = OK_LOCALE_KEY },
				titleText = { key = ERROR_LOCALE_KEY },
			}
		end
	end
end

function ProductPurchaseContainer:determinePrompt()
	local purchaseFlow = self.props.purchaseFlow
	local promptState = self.props.promptState
	local expectedPrice = self.props.expectedPrice
	local requestType = self.props.requestType
	local purchaseError = self.props.purchaseError
	local productInfo = self.props.productInfo
	local accountInfo = self.props.accountInfo
	local isTestPurchase = self.props.isTestPurchase

	local BUTTON_A_ICON = "rbxasset://textures/ui/Controls/DesignSystem/ButtonA.png"
	local BUTTON_B_ICON = "rbxasset://textures/ui/Controls/DesignSystem/ButtonB.png"

	if promptState == PromptState.None or not isRelevantRequestType(requestType, purchaseFlow) then
		--[[
			When the prompt is hidden, we'd rather not keep unused Roblox
			instances for it around, so we don't render them
		]]
		return nil
	elseif promptState == PromptState.PromptPurchase or promptState == PromptState.PurchaseInProgress then
		-- For buy item flow, we're just updating modal, so we don't need to check the experiment
		if DesktopUpsellExperiment.shouldShowNewModal() then
			return Roact.createElement(PurchaseProductModal, {
				screenSize = self.state.screenSize,
				product = {
					itemIcon = productInfo.imageUrl,
					itemName = productInfo.name,
					itemRobuxCost = if FFlagPurchasePromptPriceShouldUseProductInfoPrice
						then self.props.productPrice
						else getPlayerPrice(productInfo, accountInfo.membershipType == 4, expectedPrice),
				},
				balanceAmount = accountInfo.balance,
				balanceAmountValid = game:DefineFastFlag("BalanceNotShowingInExperimentIssueFix", false) and not accountInfo.hasFailed,
				buttons = {
					isDisabled = promptState == PromptState.PurchaseInProgress,
					buyItemActivated = self.confirmButtonPressed,
					buyItemControllerIcon = self.props.isGamepadEnabled and BUTTON_A_ICON or nil,
					buyItemIsDelayedInput = self.hasDelayedInput(),
					buyItemEnableInputDelayed = self.isWindowShowAndDoneAnimating(),
					cancelActivated = self.cancelButtonPressed,
				},
			})
		end
		return Roact.createElement(ProductPurchase, {
			screenSize = self.state.screenSize,

			isDisabled = promptState == PromptState.PurchaseInProgress,
			model = self.props.humanoidModel,
			itemIcon = productInfo.imageUrl,
			itemName = productInfo.name,
			itemRobuxCost = if FFlagPurchasePromptPriceShouldUseProductInfoPrice
				then self.props.productPrice
				else getPlayerPrice(productInfo, accountInfo.membershipType == 4, expectedPrice),
			currentBalance = accountInfo.balance,
			currentBalanceValid = not accountInfo.hasFailed,
			testPurchase = isTestPurchase,

			isDelayedInput = self.hasDelayedInput(),
			enableInputDelayed = self.isWindowShowAndDoneAnimating(),

			buyItemControllerIcon = self.props.isGamepadEnabled and BUTTON_A_ICON or nil,
			cancelControllerIcon = self.props.isGamepadEnabled and BUTTON_B_ICON or nil,

			buyItemActivated = self.confirmButtonPressed,
			cancelPurchaseActivated = self.cancelButtonPressed,

			isLuobu = self.state.isLuobu,
		})
	elseif promptState == PromptState.RobuxUpsell or promptState == PromptState.UpsellInProgress then
		if DesktopUpsellExperiment.shouldShowNewModal() then
			return Roact.createElement(RobuxUpsellModal, {
				screenSize = self.state.screenSize,
				
				product = {
					model = self.props.humanoidModel,
					itemIcon = productInfo.imageUrl,
					itemName = productInfo.name,
					itemRobuxCost = if FFlagPurchasePromptPriceShouldUseProductInfoPrice
						then self.props.productPrice
						else getPlayerPrice(productInfo, accountInfo.membershipType == 4, expectedPrice),
				},
				
				upsell = {
					balanceAmount = accountInfo.balance,
					robuxPurchaseAmount = self.props.robuxPurchaseAmount,
					robuxPurchaseAmountBeforeBonus = self.props.robuxAmountBeforeBonus,
					robuxPurchaseCost = self.props.robuxPurchaseCost,
				},
				
				buttons = {
					buyItemActivated = function()
						self.confirmButtonPressed()
						self.emitPurchaseFlowEvent("UserInput", "Buy")
					end,
					buyItemDisabled = promptState == PromptState.UpsellInProgress,
					buyItemControllerIcon = self.props.isGamepadEnabled and BUTTON_A_ICON or nil,
					buyItemisDelayedInput = self.hasDelayedInput(),
					buyItemEnableInputDelayed = self.isWindowShowAndDoneAnimating(),
					
					cancelPurchaseActivated = function()
						self.cancelButtonPressed()
						self.emitPurchaseFlowEvent("UserInput", "Cancel")
					end,
					cancelControllerIcon = self.props.isGamepadEnabled and BUTTON_B_ICON or nil,
					opensBuyRobuxPage = DesktopUpsellExperiment.getVariant() == DesktopUpsellExperiment.variants.OpenRobuxStore,
				},
				
			})
		end
		return Roact.createElement(ProductPurchaseRobuxUpsell, {
			screenSize = self.state.screenSize,

			isDisabled = promptState == PromptState.UpsellInProgress,
			model = self.props.humanoidModel,
			itemIcon = productInfo.imageUrl,
			itemName = productInfo.name,
			itemRobuxCost = if FFlagPurchasePromptPriceShouldUseProductInfoPrice
				then self.props.productPrice
				else getPlayerPrice(productInfo, accountInfo.membershipType == 4, expectedPrice),
			robuxPurchaseAmount = self.props.robuxPurchaseAmount,
			robuxPurchaseAmountBeforeBonus = self.props.robuxAmountBeforeBonus,
			balanceAmount = accountInfo.balance,

			isDelayedInput = self.hasDelayedInput(),
			enableInputDelayed = self.isWindowShowAndDoneAnimating(),

			buyItemControllerIcon = self.props.isGamepadEnabled and BUTTON_A_ICON or nil,
			cancelControllerIcon = self.props.isGamepadEnabled and BUTTON_B_ICON or nil,

			buyItemActivated = function()
				self.confirmButtonPressed()
				self.emitPurchaseFlowEvent("UserInput", "Buy")
			end,
			cancelPurchaseActivated = function()
				self.cancelButtonPressed()
				self.emitPurchaseFlowEvent("UserInput", "Cancel")
			end,
			isLuobu = self.state.isLuobu,
			isVng = GetFFlagOpenVngTosForVngRobuxUpsell() and getAppFeaturePolicies().getShowVNGTosForRobuxUpsell(),
		})
	elseif promptState == PromptState.LeaveRobloxWarning then
		return Roact.createElement(LeaveRobloxAlert, {
			screenSize = self.state.screenSize,

			cancelActivated = self.cancelButtonPressed,
			continueActivated = self.confirmButtonPressed,
		})
	elseif promptState == PromptState.PurchaseComplete and requestType == RequestType.AvatarCreationFee then
		return Roact.createElement(InteractiveAlert, {
			bodyText = RobloxTranslator:FormatByKey(PURCHASE_COMPLETE_DESC_KEY),
			buttonStackInfo = {
				buttons = {
					{
						buttonType = ButtonType.PrimarySystem,
						props = {
							onActivated = self.confirmButtonPressed,
							text = RobloxTranslator:FormatByKey(OK_BUTTON_KEY),
							inputIcon = self.props.isGamepadEnabled and BUTTON_A_ICON or nil,
						},
					},
				},
			},
			screenSize = self.state.screenSize,
			title = RobloxTranslator:FormatByKey(PURCHASE_COMPLETE_HEADER_KEY),
		})
	elseif
		(promptState == PromptState.Error and purchaseError == PurchaseError.TwoFactorNeededSettings)
		or isGenericChallengeResponse(purchaseError)
	then
		return Roact.createElement(MultiTextLocalizer, {
			locKeys = self:getMessageKeysFromPromptState(),
			render = function(localeMap)
				return Roact.createElement(InteractiveAlert, {
					bodyText = localeMap.messageText,
					buttonStackInfo = {
						buttons = {
							{
								props = {
									onActivated = self.cancelButtonPressed,
									text = localeMap.cancelText,
									inputIcon = self.props.isGamepadEnabled and BUTTON_B_ICON or nil,
								},
							},
							{
								buttonType = ButtonType.PrimarySystem,
								props = {
									onActivated = self.confirmButtonPressed,
									text = localeMap.okText,
									inputIcon = self.props.isGamepadEnabled and BUTTON_A_ICON or nil,
								},
							},
						},
					},
					screenSize = self.state.screenSize,
					title = localeMap.titleText,
					titleIcon = Images[ERROR_ICON],
				})
			end,
		})
	elseif
		GetFFlagEnableTexasU18VPCForInExperienceBundleRobuxUpsellFlow()
		and promptState == PromptState.EnablePurchaseVPCModal
	then
		return Roact.createElement(IAPAnimator, {
			shouldAnimate = true,
			shouldShow = promptState == PromptState.EnablePurchaseVPCModal,
			renderChildren = function()
				return Roact.createElement(VPCModal, {
					screenSize = self.state.screenSize,
					isActionable = false,
					modalType = self.getVPCModalType(promptState),
					onDismiss = function()
						self.confirmButtonPressed()
					end,
				})
			end,
		})
	elseif 
		promptState == PromptState.Error 
		and purchaseError == PurchaseError.NotEnoughRobuxXbox 
		and DesktopUpsellExperiment.shouldShowNewModal()
	then
		-- Currently this specific scenario is being handled with all other errors
		-- introducing handling if user is in the experiment
		return Roact.createElement(RobuxUpsellModalTooExpensiveFallback, {
			screenSize = self.state.screenSize,
			product = {
				itemIcon = productInfo.imageUrl,
				itemName = productInfo.name,
				itemRobuxCost = if FFlagPurchasePromptPriceShouldUseProductInfoPrice
					then self.props.productPrice
					else getPlayerPrice(productInfo, accountInfo.membershipType == 4, expectedPrice),
			},
			balanceAmount = accountInfo.balance,
			doneActivated = function()
				self.cancelButtonPressed()
				self.emitPurchaseFlowEvent("UserInput", "Cancel")
			end,
		})
	else
		return Roact.createElement(MultiTextLocalizer, {
			locKeys = self:getMessageKeysFromPromptState(),
			render = function(localeMap)
				return Roact.createElement(InteractiveAlert, {
					bodyText = localeMap.messageText,
					buttonStackInfo = {
						buttons = {
							{
								buttonType = ButtonType.PrimarySystem,
								props = {
									onActivated = self.confirmButtonPressed,
									text = localeMap.okText,
									inputIcon = self.props.isGamepadEnabled and BUTTON_A_ICON or nil,
								},
							},
						},
					},
					screenSize = self.state.screenSize,
					title = localeMap.titleText,
				})
			end,
		})
	end
end

function ProductPurchaseContainer:render()
	local promptState = self.props.promptState
	local prompt = self:determinePrompt()

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
		BackgroundTransparency = 1,
	}, {
		Animator = Roact.createElement(Animator, {
			shouldShow = self.props.windowState ~= WindowState.Hidden,
			onShown = function()
				if
					self.props.requestType == RequestType.AvatarCreationFee
					and promptState == PromptState.PromptPurchase
				then
					PublishAssetAnalytics.sendPageLoad(PublishAssetAnalytics.Section.BuyItemModal)
				end
				self:setState({
					isAnimating = false,
					doneAnimatingTime = os.clock(),
				})
			end,
			onHidden = function()
				self:setState({
					isAnimating = nil,
					doneAnimatingTime = nil,
				})
				if not FFlagAddCursorProviderToPurchasePromptApp then
					if
						self.props.windowState == WindowState.Hidden and isRelevantRequestType(self.props.requestType)
					then
						self.props.completeRequest()
					end
				end
			end,
			[Roact.Ref] = self.animatorRef,
		}, {
			Prompt = prompt,
			-- UIBlox components do not have Modal == true to fix FPS interaction with modals
			ModalFix = prompt ~= nil and Roact.createElement("ImageButton", {
				BackgroundTransparency = 0,
				Modal = true,
				Size = UDim2.new(0, 0, 0, 0),
			}) or nil,
		}),
		OnCoreGuiMenuOpened = Roact.createElement(ExternalEventConnection, {
			event = GuiService.MenuOpened,
			callback = function()
				if self.props.hideWindow then
					self.props.hideWindow()
				end
			end,
		}),
		OnUserGuiRenderingChanged = Roact.createElement(ExternalEventConnection, {
			event = CoreGui.UserGuiRenderingChanged,
			callback = function(enabled, guiAdornee)
				-- Hide window if UI is not rendering on any adornee
				if not enabled or not guiAdornee then
					self.props.hideWindow()
				end
			end,
		}),
	})
end

local function mapStateToProps(state)
	local isTestPurchase = isMockingPurchases(state.promptRequest.requestType)
	-- Default to control if the experiment is not set
	local desktopUpsellExpVariant = if state.abVariations then state.abVariations.DesktopUpsellExpVariant else nil
	
	return {
		productPrice = if FFlagPurchasePromptPriceShouldUseProductInfoPrice
			then getPlayerPrice(state.productInfo, state.accountInfo.membershipType == 4)
			else nil,
		purchaseFlowUUID = state.purchaseFlowUUID,
		purchaseFlow = state.purchaseFlow,
		promptState = state.promptState,
		requestType = state.promptRequest.requestType,
		humanoidModel = state.promptRequest.humanoidModel,
		expectedPrice = state.promptRequest.expectedPrice,
		windowState = state.windowState,
		purchaseError = state.purchaseError,
		productInfo = state.productInfo,
		accountInfo = state.accountInfo,
		robuxPurchaseAmount = SelectedRobuxPackage.getRobuxPurchaseAmount(state),
		robuxAmountBeforeBonus = SelectedRobuxPackage.getRobuxAmountBeforeBonus(state),
		robuxPurchaseCost = SelectedRobuxPackage.getPrice(state),
		isTestPurchase = isTestPurchase,
		isGamepadEnabled = state.gamepadEnabled,
		desktopUpsellExpVariant = desktopUpsellExpVariant,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setPurchaseFlowUUID = function(purchaseFlowUUID)
			dispatch(setPurchaseFlowUUID(purchaseFlowUUID))
		end,
		onBuy = function()
			dispatch(purchaseItem())
		end,
		completePurchase = function()
			dispatch(completePurchase())
		end,
		onScaryModalConfirm = function()
			dispatch(launchRobuxUpsell())
		end,
		onOpenSecuritySettings = function(challengeResponse: string?)
			if challengeResponse then
				dispatch(openSecuritySettings(challengeResponse))
			else
				dispatch(openSecuritySettings())
			end
		end,
		onRobuxUpsell = function()
			if GetFFlagEnableTexasU18VPCForInExperienceBundleRobuxUpsellFlow() then
				dispatch(initiateUserPurchaseSettingsPrecheck())
			else
				dispatch(initiatePurchasePrecheck())
			end
		end,
		hideWindow = function()
			dispatch(hideWindow())
		end,
		completeRequest = function()
			if FFlagAddCursorProviderToPurchasePromptApp then
				GuiService.SelectedCoreObject = nil
			end
			dispatch(completeRequest())
		end,
		onAnalyticEvent = function(name, data)
			dispatch(sendEvent(name, data))
		end,
	}
end

-- Make sure this is before connectToStore
--[[
ProductPurchaseContainer = PurchasePromptPolicy.connect(function(appPolicy, props)
	return {
		enablePurchaseWarningChecks = appPolicy.enablePurchaseWarningChecks(),
	}
end)(ProductPurchaseContainer)
]]
--

ProductPurchaseContainer = connectToStore(mapStateToProps, mapDispatchToProps)(ProductPurchaseContainer)

return ProductPurchaseContainer
