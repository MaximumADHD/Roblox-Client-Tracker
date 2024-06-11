--!nonstrict
local Root = script.Parent.Parent.Parent
local GuiService = game:GetService("GuiService")
local ContextActionService = game:GetService("ContextActionService")
local ExperienceAuthService = game:GetService("ExperienceAuthService")
local AssetService = game:GetService("AssetService")

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local PolicyService = require(RobloxGui.Modules.Common:WaitForChild("PolicyService"))

local UIBlox = PurchasePromptDeps.UIBlox
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local Images = UIBlox.App.ImageSet.Images

local IAPExperience = require(CorePackages.IAPExperience)
local ProductPurchase =  IAPExperience.ProductPurchase
local ProductPurchaseRobuxUpsell =  IAPExperience.ProductPurchaseRobuxUpsell
local LeaveRobloxAlert = IAPExperience.LeaveRobloxAlert

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

local PurchasePromptPolicy = require(Root.Components.Connection.PurchasePromptPolicy)
local ExternalEventConnection = require(Root.Components.Connection.ExternalEventConnection)
local MultiTextLocalizer = require(Root.Components.Connection.MultiTextLocalizer)
local LocalizationService = require(Root.Localization.LocalizationService)
local getPlayerPrice = require(Root.Utils.getPlayerPrice)
local isGenericChallengeResponse = require(Root.Utils.isGenericChallengeResponse)
local GetFFlagEnableAvatarCreationFeePurchase = require(Root.Flags.GetFFlagEnableAvatarCreationFeePurchase)

local Animator = require(script.Parent.Animator)

local ProductPurchaseContainer = Roact.Component:extend(script.Name)

local AVATAR_NAME_KEY = "avatarName"
local CONFIRM_BUTTON_BIND = "ProductPurchaseConfirmButtonBind"
local CANCEL_BUTTON_BIND = "ProductPurchaseCancelButtonBind"

local PURCHASE_MESSAGE_KEY = "CoreScripts.PurchasePrompt.PurchaseMessage.%s"

local BUY_ITEM_LOCALE_KEY = "CoreScripts.PurchasePrompt.Title.BuyItem"
local SETTINGS_LOCALE_KEY = "CoreScripts.PurchasePrompt.Button.Settings"
local OK_LOCALE_KEY = "CoreScripts.PurchasePrompt.Button.OK"
local CANCEL_LOCALE_KEY = "CoreScripts.PurchasePrompt.CancelPurchase.Cancel"
local ERROR_LOCALE_KEY = "CoreScripts.PremiumModal.Title.Error"

local ERROR_ICON = "icons/status/error_large"

local DELAYED_INPUT_SEC = 2.5

local FFlagPPTwoFactorLogOutMessage = game:DefineFastFlag("PPTwoFactorLogOutMessage", false)
local FFlagFixOpenWithMenuConsole = game:DefineFastFlag("FixOpenWithMenuConsole", false)

local function isRelevantRequestType(requestType, purchaseFlow)
	if purchaseFlow == PurchaseFlow.RobuxUpsellV2 or purchaseFlow == PurchaseFlow.LargeRobuxUpsell then
		return false
	end
	return requestType == RequestType.Asset
		or requestType == RequestType.Bundle
		or requestType == RequestType.GamePass
		or requestType == RequestType.Product
		or (GetFFlagEnableAvatarCreationFeePurchase() and requestType == RequestType.AvatarCreationFee)
end

function ProductPurchaseContainer:init()
	self.state = {
		screenSize = Vector2.new(0, 0),
		isLuobu = false,
	}

	coroutine.wrap(function()
		if PolicyService:IsSubjectToChinaPolicies() then
			self:setState({
				isLuobu = true,
			})
		end
	end)()

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
		if Players.LocalPlayer.GameplayPaused or (GuiService.MenuIsOpen and FFlagFixOpenWithMenuConsole) then
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

	self.onAvatarCreationFeePurchase = function()
		-- Avatar Creation Purchase is handled by
		-- AvatarCreationService:PromptCreateAvatarAsync
		-- We use ExperienceAuthService to continue the API call
		-- as the user has confirmed their purchase here
		local metadata = {}
		metadata[AVATAR_NAME_KEY] = self.props.productInfo.name

		local scopes = {}
		scopes[1] = Enum.ExperienceAuthScope.CreatorAssetsCreate

		ExperienceAuthService:ScopeCheckUIComplete(
			self.props.productInfo.productId,
			scopes,
			Enum.ScopeCheckResult.ConsentAccepted,
			metadata
		)

		-- TODO: AVBURST-13509 Handle underlying avatar creation prompt
		-- being opened upon payment prompting and completion
		self.props.completePurchase()
	end

	self.getConfirmButtonAction = function(promptState, requestType, purchaseError)
		if promptState == PromptState.None or not isRelevantRequestType(requestType) then
			return nil
		elseif GetFFlagEnableAvatarCreationFeePurchase() and requestType == RequestType.AvatarCreationFee then
			return self.onAvatarCreationFeePurchase
		elseif promptState == PromptState.PromptPurchase
				or promptState == PromptState.PurchaseInProgress then
			return self.props.onBuy
		elseif promptState == PromptState.RobuxUpsell
				or promptState == PromptState.UpsellInProgress
				or promptState == PromptState.LeaveRobloxWarning then
			return self.props.onRobuxUpsell
		elseif promptState == PromptState.U13PaymentModal
				or promptState == PromptState.U13MonthlyThreshold1Modal
				or promptState == PromptState.U13MonthlyThreshold2Modal
				or promptState == PromptState.ParentalConsentWarningPaymentModal13To17 then
			return self.props.onScaryModalConfirm
		elseif promptState == PromptState.Error
				and purchaseError == PurchaseError.TwoFactorNeededSettings then
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
		local confirmButtonAction = self.getConfirmButtonAction(self.props.promptState,
			self.props.requestType, self.props.purchaseError)
		if confirmButtonAction ~= nil and self.canConfirmInput() then
			confirmButtonAction()
		end

	end

	self.cancelButtonPressed = function()
		local cancelButtonAction = self.getCancelButtonAction(self.props.promptState, self.props.requestType)
		if cancelButtonAction ~= nil then
			cancelButtonAction()
		end
	end


	-- Setup on prop change + init, handles both cases where this modal can persist forever or not
	self.configContextActionService = function(windowState)
		if windowState == WindowState.Shown then
			ContextActionService:BindCoreAction(
				CONFIRM_BUTTON_BIND,
				function(actionName, inputState, inputObj)
					if inputState == Enum.UserInputState.Begin then
						self.confirmButtonPressed()
					end
				end, false, Enum.KeyCode.ButtonA)
			ContextActionService:BindCoreAction(
				CANCEL_BUTTON_BIND,
				function(actionName, inputState, inputObj)
					if inputState == Enum.UserInputState.Begin then
						self.cancelButtonPressed()
					end
				end, false, Enum.KeyCode.ButtonB)
		else
			ContextActionService:UnbindCoreAction(CONFIRM_BUTTON_BIND)
			ContextActionService:UnbindCoreAction(CANCEL_BUTTON_BIND)
		end
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
	-- Game unpause and purchase workflow could be triggered at the same time by doing some hack.
	-- The fix is to check the game pause status in didUpdate(), and close ourchase prompt if in game pause.
	-- More details in https://jira.rbx.com/browse/CLI-59903.
	-- Similar issue happens with gamepad/console: https://roblox.atlassian.net/browse/CLIPS-1195
	if Players.LocalPlayer.GameplayPaused or (GuiService.MenuIsOpen and FFlagFixOpenWithMenuConsole) then
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
	end
end

function ProductPurchaseContainer:getMessageKeysFromPromptState()
	local promptState = self.props.promptState
	local productInfo = self.props.productInfo
	local purchaseError = self.props.purchaseError

	if promptState == PromptState.PurchaseComplete then
		return {
			messageText = {
				key = PURCHASE_MESSAGE_KEY:format("Succeeded"),
				params = {
					ITEM_NAME = productInfo.name,
				}
			},
			okText = { key = OK_LOCALE_KEY },
			titleText = { key = BUY_ITEM_LOCALE_KEY },
		}
	elseif promptState == PromptState.U13PaymentModal then
		return {
			messageText = { key = "CoreScripts.PurchasePrompt.PurchaseDetails.ScaryModalOne", },
			okText = { key = OK_LOCALE_KEY },
			titleText = { key = BUY_ITEM_LOCALE_KEY },
		}
	elseif promptState == PromptState.U13MonthlyThreshold1Modal then
		return {
			messageText = { key = "CoreScripts.PurchasePrompt.PurchaseDetails.ScaryModalTwo", },
			okText = { key = OK_LOCALE_KEY },
			titleText = { key = BUY_ITEM_LOCALE_KEY },
		}
	elseif promptState == PromptState.U13MonthlyThreshold2Modal then
		return {
			messageText = { key = "CoreScripts.PurchasePrompt.PurchaseDetails.ScaryModalParental", },
			okText = { key = OK_LOCALE_KEY },
			titleText = { key = BUY_ITEM_LOCALE_KEY },
		}
	elseif promptState == PromptState.ParentalConsentWarningPaymentModal13To17 then
		return {
			messageText = { key = "CoreScripts.PurchasePrompt.PurchaseDetails.ParentalConsent", },
			okText = { key = OK_LOCALE_KEY },
			titleText = { key = BUY_ITEM_LOCALE_KEY },
		}
	elseif promptState == PromptState.Error then
		if purchaseError == PurchaseError.UnknownFailure then
			return {
				messageText = {
					key = LocalizationService.getErrorKey(purchaseError),
					params = {
						ITEM_NAME = productInfo.name
					}
				},
				okText = { key = OK_LOCALE_KEY },
				titleText = { key = ERROR_LOCALE_KEY },
			}
		elseif (purchaseError == PurchaseError.TwoFactorNeededSettings or isGenericChallengeResponse(purchaseError)) then

			local messageKey = "CoreScripts.PurchasePrompt.PurchaseFailed.Enable2SV"
			if FFlagPPTwoFactorLogOutMessage then
				messageKey = "CoreScripts.PurchasePrompt.PurchaseFailed.Enable2SVLogout"
			end

			return {
				messageText = { key = messageKey, },
				okText = { key = SETTINGS_LOCALE_KEY },
				cancelText = { key = CANCEL_LOCALE_KEY },
				titleText = { key = "CoreScripts.PurchasePrompt.Title.VerificationRequired" },
			}
		else
			return {
				messageText = { key = LocalizationService.getErrorKey(purchaseError), },
				okText = { key = OK_LOCALE_KEY },
				titleText = { key = ERROR_LOCALE_KEY },
			}
		end
	end
end

function ProductPurchaseContainer:render()
	local purchaseFlow = self.props.purchaseFlow
	local promptState = self.props.promptState
	local expectedPrice = self.props.expectedPrice
	local requestType = self.props.requestType
	local purchaseError = self.props.purchaseError
	local productInfo = self.props.productInfo
	local accountInfo = self.props.accountInfo
	local nativeUpsell = self.props.nativeUpsell
	local isTestPurchase = self.props.isTestPurchase

	local prompt
	local BUTTON_A_ICON = "rbxasset://textures/ui/Controls/DesignSystem/ButtonA.png"
	local BUTTON_B_ICON = "rbxasset://textures/ui/Controls/DesignSystem/ButtonB.png"

	if promptState == PromptState.None or not isRelevantRequestType(requestType, purchaseFlow) then
		--[[
			When the prompt is hidden, we'd rather not keep unused Roblox
			instances for it around, so we don't render them
		]]
		prompt = nil
	elseif promptState == PromptState.PromptPurchase
			or promptState == PromptState.PurchaseInProgress then
		prompt = Roact.createElement(ProductPurchase, {
			screenSize = self.state.screenSize,

			isDisabled = promptState == PromptState.PurchaseInProgress,
			model = if self.props.serializedModel then AssetService:DeserializeInstance(self.props.serializedModel) else nil,
			itemIcon = productInfo.imageUrl,
			itemName = productInfo.name,
			itemRobuxCost = getPlayerPrice(productInfo, accountInfo.membershipType == 4, expectedPrice),
			currentBalance = accountInfo.balance,
			testPurchase = isTestPurchase,

			isDelayedInput = self.hasDelayedInput(),
			enableInputDelayed = self.isWindowShowAndDoneAnimating(),

			buyItemControllerIcon = self.props.isGamepadEnabled and BUTTON_A_ICON or nil,
			cancelControllerIcon = self.props.isGamepadEnabled and BUTTON_B_ICON or nil,

			buyItemActivated = self.confirmButtonPressed,
			cancelPurchaseActivated = self.cancelButtonPressed,

			isLuobu = self.state.isLuobu,
		})
	elseif promptState == PromptState.RobuxUpsell
			or promptState == PromptState.UpsellInProgress then
		prompt = Roact.createElement(ProductPurchaseRobuxUpsell, {
			screenSize = self.state.screenSize,

			isDisabled = promptState == PromptState.UpsellInProgress,
			model = if self.props.serializedModel then AssetService:DeserializeInstance(self.props.serializedModel) else nil,
			itemIcon = productInfo.imageUrl,
			itemName = productInfo.name,
			itemRobuxCost = getPlayerPrice(productInfo, accountInfo.membershipType == 4, expectedPrice),
			robuxPurchaseAmount = nativeUpsell.robuxPurchaseAmount,
			balanceAmount = accountInfo.balance,

			isDelayedInput = self.hasDelayedInput(),
			enableInputDelayed = self.isWindowShowAndDoneAnimating(),

			buyItemControllerIcon = self.props.isGamepadEnabled and BUTTON_A_ICON or nil,
			cancelControllerIcon = self.props.isGamepadEnabled and BUTTON_B_ICON or nil,

			buyItemActivated = self.confirmButtonPressed,
			cancelPurchaseActivated = self.cancelButtonPressed,

			isLuobu = self.state.isLuobu,
		})
	elseif promptState == PromptState.LeaveRobloxWarning then
		prompt = Roact.createElement(LeaveRobloxAlert, {
				screenSize = self.state.screenSize,

				cancelActivated = self.cancelButtonPressed,
				continueActivated = self.confirmButtonPressed,
			})
	elseif (promptState == PromptState.Error
			and purchaseError == PurchaseError.TwoFactorNeededSettings) or
			isGenericChallengeResponse(purchaseError) then
		prompt = Roact.createElement(MultiTextLocalizer, {
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
			end
		})
	else
		prompt = Roact.createElement(MultiTextLocalizer, {
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
			end
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
		BackgroundTransparency = 1,
	}, {
		Animator = Roact.createElement(Animator, {
			shouldShow = self.props.windowState ~= WindowState.Hidden,
			onShown = function()
				self:setState({
					isAnimating = false,
					doneAnimatingTime = os.clock()
				})
			end,
			onHidden = function()
				self:setState({
					isAnimating = nil,
					doneAnimatingTime = nil,
				})
				if self.props.windowState == WindowState.Hidden and isRelevantRequestType(self.props.requestType) then
					self.props.completeRequest()
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
	return {
		purchaseFlow = state.purchaseFlow,
		promptState = state.promptState,
		requestType = state.promptRequest.requestType,
		serializedModel = state.promptRequest.serializedModel,
		expectedPrice = state.promptRequest.expectedPrice,
		windowState = state.windowState,
		purchaseError = state.purchaseError,
		productInfo = state.productInfo,
		accountInfo = state.accountInfo,
		nativeUpsell = state.nativeUpsell,
		isTestPurchase = isMockingPurchases(),
		isGamepadEnabled = state.gamepadEnabled,
	}
end

local function mapDispatchToProps(dispatch)
	return {
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
			dispatch(initiatePurchasePrecheck())
		end,
		hideWindow = function()
			dispatch(hideWindow())
		end,
		completeRequest = function()
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
]]--

ProductPurchaseContainer = connectToStore(
	mapStateToProps,
	mapDispatchToProps
)(ProductPurchaseContainer)

return ProductPurchaseContainer
