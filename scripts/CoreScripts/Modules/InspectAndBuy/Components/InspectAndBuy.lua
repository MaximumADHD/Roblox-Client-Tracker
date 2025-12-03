--!nonstrict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local UserInputService = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local MouseIconOverrideService = require(CorePackages.Workspace.Packages.CoreScriptsCommon).MouseIconOverrideService
local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Symbol = require(CorePackages.Workspace.Packages.AppCommonLib).Symbol
local renderWithCoreScriptsStyleProvider = require(CoreGui.RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)
local UIBlox = require(CorePackages.Packages.UIBlox)
local SelectionCursorProvider = UIBlox.App.SelectionImage.SelectionCursorProvider
local IXPUtils = require(CorePackages.Workspace.Packages.IxpUtils)
local FStringAXInspectAndBuyLayerName = game:DefineFastString("AXInspectAndBuyLayerName", "Experience.Menu")
local FFlagEnableInspectAndBuyExposureLogging = game:DefineFastFlag("AXEnableInspectAndBuyExposureLogging", false)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local FocusRoot = FocusNavigationUtils.FocusRoot
local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider

local Chrome = RobloxGui.Modules.Chrome
local ChromeEnabled = require(Chrome.Enabled)
local ChromeService = if ChromeEnabled() then require(Chrome.Service) else nil :: never

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagChromeHideShortcutBarOnInspectAndBuy = SharedFlags.FFlagChromeHideShortcutBarOnInspectAndBuy
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls

local InspectAndBuyFolder = script.Parent.Parent
local SetDetailsInformation = require(InspectAndBuyFolder.Actions.SetDetailsInformation)
local SetTryingOnInfo = require(InspectAndBuyFolder.Actions.SetTryingOnInfo)
local Thunk = require(InspectAndBuyFolder.Thunk)
local Network = require(InspectAndBuyFolder.Services.Network)
local Analytics = require(InspectAndBuyFolder.Services.Analytics)
local InspectAndBuyReducer = require(InspectAndBuyFolder.Reducers.InspectAndBuyReducer)
local Container = require(InspectAndBuyFolder.Components.Container)
local InspectAndBuyBaseContainer = require(InspectAndBuyFolder.Components.InspectAndBuyBaseContainer)
local Constants = require(InspectAndBuyFolder.Constants)
local CompactView = require(InspectAndBuyFolder.CompactView)
local WideView = require(InspectAndBuyFolder.WideView)
local WideLandscapeView = require(InspectAndBuyFolder.WideLandscapeView)
local SetGamepadEnabled = require(InspectAndBuyFolder.Actions.SetGamepadEnabled)
local SetView = require(InspectAndBuyFolder.Actions.SetView)
local SetPlayerId = require(InspectAndBuyFolder.Actions.SetPlayerId)
local SetPlayerName = require(InspectAndBuyFolder.Actions.SetPlayerName)
local SetLocale = require(InspectAndBuyFolder.Actions.SetLocale)
local SetItemBeingPurchased = require(InspectAndBuyFolder.Actions.SetItemBeingPurchased)
local SetIsSubjectToChinaPolicies = require(InspectAndBuyFolder.Actions.SetIsSubjectToChinaPolicies)
local UpdateStoreId = require(InspectAndBuyFolder.Actions.UpdateStoreId)
local FFlagAXEnableFetchAvatarPreview = require(InspectAndBuyFolder.Flags.FFlagAXEnableFetchAvatarPreview)
local GetAssetsFromHumanoidDescription = if FFlagAXEnableFetchAvatarPreview
	then require(InspectAndBuyFolder.Thunks.GetAssetsFromHumanoidDescriptionV2)
	else require(InspectAndBuyFolder.Thunks.GetAssetsFromHumanoidDescription)
local UpdateOwnedStatus = require(InspectAndBuyFolder.Thunks.UpdateOwnedStatus)
local GetCharacterModelFromUserId = require(InspectAndBuyFolder.Thunks.GetCharacterModelFromUserId)
local GetPlayerName = require(InspectAndBuyFolder.Thunks.GetPlayerName)
local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)
local CloseOverlay = require(InspectAndBuyFolder.Actions.CloseOverlay)
local AvatarExperienceInspectAndBuy = require(CorePackages.Workspace.Packages.AvatarExperienceInspectAndBuy)
local getViewType = AvatarExperienceInspectAndBuy.Utils.getViewType
local InspectAndBuyVersion = AvatarExperienceInspectAndBuy.Enums.InspectAndBuyVersion
local FFlagEnableInspectAndBuyV2RootFlag =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableInspectAndBuyV2RootFlag
local FFlagAXEnableInspectAndBuyVersionAnalytics =
	require(InspectAndBuyFolder.Flags.FFlagAXEnableInspectAndBuyVersionAnalytics)

local CachedPolicyService = require(CorePackages.Workspace.Packages.CachedPolicyService)

local FFlagAXEnableNewInspectAndBuyContainer = require(InspectAndBuyFolder.Flags.FFlagAXEnableNewInspectAndBuyContainer)

local COMPACT_VIEW_MAX_WIDTH = 600
local CURSOR_OVERRIDE_KEY = Symbol.named("OverrideCursorInspectMenu")
local BACK_BUTTON_KEY = "BackButtonInspectMenu"
local MODULE_NAME = "InspectAndBuy"

local InspectAndBuy = Roact.PureComponent:extend("InspectAndBuy")

function InspectAndBuy:pushMouseIconOverride()
	local input = UserInputService:GetLastInputType()
	local isGamepad = input.Name:find("Gamepad")

	if isGamepad then
		MouseIconOverrideService.push(CURSOR_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceHide)
	else
		MouseIconOverrideService.push(CURSOR_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceShow)
	end
end

function InspectAndBuy:popMouseIconOverride()
	MouseIconOverrideService.pop(CURSOR_OVERRIDE_KEY)
end

function InspectAndBuy:configureInputType(lastInputType)
	local input = lastInputType or UserInputService:GetLastInputType()
	local isGamepad = input.Name:find("Gamepad")

	if isGamepad then
		self.state.store:dispatch(SetGamepadEnabled(true))
	else
		self.state.store:dispatch(SetGamepadEnabled(false))
	end
end

function InspectAndBuy:updateView()
	local viewportSize = (workspace.CurrentCamera :: Camera).ViewportSize

	if FFlagAXEnableNewInspectAndBuyContainer then
		self.state.store:dispatch(SetView(getViewType(viewportSize)))
	else
		local view = Constants.View.Wide

		if viewportSize.X < COMPACT_VIEW_MAX_WIDTH then
			view = Constants.View.Compact
		elseif viewportSize.X > viewportSize.Y and viewportSize.X < 800 then
			view = Constants.View.WideLandscape
		end

		self.state.store:dispatch(SetView(view))
	end
end

function InspectAndBuy:init()
	local playerId = self.props.playerId
	local playerName = self.props.playerName
	local ctx = self.props.ctx
	self.connections = {}
	self.network = self.props.network or Network.new()

	--[[
		the root flag will determine whether the UI is V1 or V2
		the analytics flag should be de-coupled from the root flag so it is available on the old and new UI
	]]
	self.analytics = (
		if FFlagAXEnableInspectAndBuyVersionAnalytics
			then Analytics.new(
				playerId,
				ctx,
				if FFlagEnableInspectAndBuyV2RootFlag
					then InspectAndBuyVersion.Version2
					else InspectAndBuyVersion.Version1
			)
			else Analytics.new(playerId, ctx)
	) :: any
	self.humanoidDescription = self.props.humanoidDescription

	self.analytics.reportOpenInspectMenu()

	self.state = {
		store = Rodux.Store.new(InspectAndBuyReducer, {}, {
			Thunk.middleware({
				[Network] = self.network,
				[Analytics] = self.analytics,
			}),
		}),
		views = {
			[Constants.View.Compact] = CompactView,
			[Constants.View.Wide] = WideView,
			[Constants.View.WideLandscape] = WideLandscapeView,
		},
	}

	self.state.store:dispatch(UpdateStoreId())

	self.state.store:dispatch(SetPlayerName(playerName))
	self.state.store:dispatch(SetLocale(LocalizationService.RobloxLocaleId))

	if playerId then
		self.state.store:dispatch(SetPlayerId(playerId))
	end

	if self.humanoidDescription then
		self.state.store:dispatch(GetAssetsFromHumanoidDescription(self.humanoidDescription, false))
	end

	self.onPromptPurchaseFinished = function(_, itemId, isPurchased)
		local purchasedInformation = self.state.store:getState().itemBeingPurchased

		self.analytics.sendCounter(Constants.Counters.PurchaseFinished)
		if isPurchased and tostring(itemId) == purchasedInformation.itemId then
			self.analytics.reportPurchaseSuccess(purchasedInformation.itemType, purchasedInformation.itemId)
			self.state.store:dispatch(UpdateOwnedStatus(purchasedInformation.itemId, purchasedInformation.itemType))

			if purchasedInformation.itemType == Constants.ItemType.Asset then
				self.analytics.sendCounter(Constants.Counters.PurchaseSucceededAsset)
			elseif purchasedInformation.itemType == Constants.ItemType.Bundle then
				self.analytics.sendCounter(Constants.Counters.PurchaseSucceededBundle)
			else
				self.analytics.sendCounter(Constants.Counters.PurchaseSucceededOther)
			end
		end
		self.state.store:dispatch(SetItemBeingPurchased(nil, nil))
	end
end

function InspectAndBuy:didMount()
	local playerId = self.props.playerId
	self.isMounted = true
	self:updateView()
	self:bindButtonB()
	self:configureInputType()
	self:pushMouseIconOverride()

	if FFlagEnableInspectAndBuyExposureLogging then
		-- log exposure for both V1 and V2 UIs
		IXPUtils.logLayerExposure(FStringAXInspectAndBuyLayerName)
	end

	if
		FFlagChromeHideShortcutBarOnInspectAndBuy
		and (if FFlagEnableConsoleExpControls then ChromeEnabled() else ChromeEnabled)
	then
		ChromeService:setHideShortcutBar(MODULE_NAME, true)
	end

	local inputTypeChangedListener = UserInputService.LastInputTypeChanged:Connect(function(lastInputType)
		self:configureInputType(lastInputType)
	end)

	local viewportSizeListener = (workspace.CurrentCamera :: Camera)
		:GetPropertyChangedSignal("ViewportSize")
		:Connect(function()
			self:updateView()
		end)

	local localeListener = LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function()
		self.state.store:dispatch(SetLocale(LocalizationService.RobloxLocaleId))
	end)

	local menuOpenedConnection = GuiService.MenuOpened:Connect(function()
		self:popMouseIconOverride()
		GuiService.SelectedCoreObject = nil
	end)

	local menuClosedConnection = GuiService.MenuClosed:Connect(function()
		self:pushMouseIconOverride()
	end)

	coroutine.wrap(function()
		local subjectToChinaPolicies = CachedPolicyService:IsSubjectToChinaPolicies()
		self.state.store:dispatch(SetIsSubjectToChinaPolicies(subjectToChinaPolicies))
	end)()

	-- Update the owned status of an asset if a user purchases it.
	local marketplaceServicePurchaseFinishedListener =
		MarketplaceService.PromptPurchaseFinished:Connect(self.onPromptPurchaseFinished)

	-- Update the owned status of a bundle if a user purchases it.
	local marketplaceServiceBundlePurchaseFinishedListener =
		MarketplaceService.PromptBundlePurchaseFinished:Connect(self.onPromptPurchaseFinished)

	local storeChangedConnection = self.state.store.changed:connect(function(state, oldState)
		self:update(state, oldState)
	end)

	table.insert(self.connections, viewportSizeListener)
	table.insert(self.connections, localeListener)
	table.insert(self.connections, menuOpenedConnection)
	table.insert(self.connections, menuClosedConnection)
	table.insert(self.connections, inputTypeChangedListener)
	table.insert(self.connections, marketplaceServicePurchaseFinishedListener)
	table.insert(self.connections, marketplaceServiceBundlePurchaseFinishedListener)
	table.insert(self.connections, storeChangedConnection)

	local localUserId = Players.LocalPlayer.UserId
	self.state.store:dispatch(GetCharacterModelFromUserId(localUserId, true, function(localPlayerModel)
		if self and self.isMounted then
			self.localPlayerModel = localPlayerModel
			local humanoidDescriptionForLocalPlayer = localPlayerModel.Humanoid.HumanoidDescription

			if humanoidDescriptionForLocalPlayer then
				self.state.store:dispatch(GetAssetsFromHumanoidDescription(humanoidDescriptionForLocalPlayer, true))
			end

			self:setState({
				obtainedLocalPlayerModel = true,
			})
		end
	end))

	if playerId then
		self.state.store:dispatch(GetCharacterModelFromUserId(playerId, false, function(playerModel)
			if self and self.isMounted then
				self.playerModel = playerModel
				local humanoidDescription = self.playerModel.Humanoid.HumanoidDescription

				if humanoidDescription then
					self.state.store:dispatch(GetAssetsFromHumanoidDescription(humanoidDescription, false))
				end

				self:setState({
					obtainedPlayerModel = true,
				})
			end
		end))

		self.state.store:dispatch(GetPlayerName(playerId))
	end
end

function InspectAndBuy:update(newState, oldState)
	if not newState.visible and oldState.visible then
		ContextActionService:UnbindCoreAction(BACK_BUTTON_KEY)
	elseif newState.visible and not oldState.visible then
		self:bindButtonB()
	end
end

function InspectAndBuy:willUnmount()
	self.isMounted = false
	for _, connection in pairs(self.connections) do
		connection:disconnect()
	end

	ContextActionService:UnbindCoreAction(BACK_BUTTON_KEY)
	self:popMouseIconOverride()

	if
		FFlagChromeHideShortcutBarOnInspectAndBuy
		and (if FFlagEnableConsoleExpControls then ChromeEnabled() else ChromeEnabled)
	then
		ChromeService:setHideShortcutBar(MODULE_NAME, false)
	end
end

function InspectAndBuy:render()
	local localPlayerModel = self.localPlayerModel

	if FFlagAXEnableNewInspectAndBuyContainer then
		return Roact.createElement("Folder", { Name = "InspectAndBuyApp" }, {
			CoreScriptsRootProvider = Roact.createElement(CoreScriptsRootProvider, {}, {
				FocusNavigationWrapper = Roact.createElement(FocusRoot, {
					surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.CentralOverlay,
				}, {
					StoreProvider = Roact.createElement(RoactRodux.StoreProvider, {
						store = self.state.store,
					}, {
						Container = Roact.createElement(InspectAndBuyBaseContainer, {
							localPlayerModel = localPlayerModel,
							analytics = self.analytics,
						}),
					}),
				}),
			}),
		})
	end

	return Roact.createElement(InspectAndBuyContext.Provider, {
		value = self.state.views,
	}, {
		StoreProvider = Roact.createElement(RoactRodux.StoreProvider, {
			store = self.state.store,
		}, {
			ThemeProvider = renderWithCoreScriptsStyleProvider({
				CursorProvider = Roact.createElement(SelectionCursorProvider, {}, {
					Container = Roact.createElement(Container, {
						localPlayerModel = localPlayerModel,
					}),
				}),
			}),
		}),
	})
end

function InspectAndBuy:bindButtonB()
	ContextActionService:BindCoreAction(BACK_BUTTON_KEY, function(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.End and inputObject.KeyCode == Enum.KeyCode.ButtonB then
			local state = self.state.store:getState()
			local viewingDetails = state.detailsInformation.viewingDetails

			if state.overlay and state.overlay.overlay ~= nil then
				self.state.store:dispatch(CloseOverlay())
			elseif viewingDetails then
				self.state.store:dispatch(SetDetailsInformation(false, nil))
				self.state.store:dispatch(SetTryingOnInfo(false, nil))
			else
				GuiService:CloseInspectMenu()
			end
		elseif
			inputState == Enum.UserInputState.Begin and inputObject.KeyCode == Enum.KeyCode.Escape
			or inputObject.KeyCode == Enum.KeyCode.ButtonStart
		then
			-- Close the Inspect Menu, allow the ESC menu to open.
			GuiService:CloseInspectMenu()
			return Enum.ContextActionResult.Pass
		end

		return Enum.ContextActionResult.Sink
	end, false, Enum.KeyCode.ButtonB, Enum.KeyCode.Escape, Enum.KeyCode.ButtonStart)
end

return InspectAndBuy
