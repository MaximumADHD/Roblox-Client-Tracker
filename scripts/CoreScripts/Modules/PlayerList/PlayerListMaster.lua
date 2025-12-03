--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)
local SettingsUtil = require(RobloxGui.Modules.Settings.Utility)
local CachedPolicyService = require(CorePackages.Workspace.Packages.CachedPolicyService)

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UIBlox = require(CorePackages.Packages.UIBlox)
local StyleConstants = UIBlox.App.Style.Constants
local ApolloClientInstance = require(CoreGui.RobloxGui.Modules.ApolloClient)
local ApolloClientModule = require(CorePackages.Packages.ApolloClient)
local ApolloProvider = ApolloClientModule.ApolloProvider
local PlayerList = script.Parent
local Signals = require(CorePackages.Packages.Signals)
local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)

local Reducer = require(PlayerList.Reducers.Reducer)
local GlobalConfig = require(PlayerList.GlobalConfig)
local PlayerListSwitcher = require(PlayerList.PlayerListSwitcher)

local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local PlayerListConstants = PlayerListPackage.Common.Constants

-- Actions
local SetPlayerListEnabled = require(PlayerList.Actions.SetPlayerListEnabled)
local SetPlayerListVisibility = require(PlayerList.Actions.SetPlayerListVisibility)
local SetTempHideKey = require(PlayerList.Actions.SetTempHideKey)
local SetTenFootInterface = require(PlayerList.Actions.SetTenFootInterface)
local SetSmallTouchDevice = require(PlayerList.Actions.SetSmallTouchDevice)
local SetIsUsingGamepad = require(PlayerList.Actions.SetIsUsingGamepad)
local SetMinimized = require(PlayerList.Actions.SetMinimized)
local SetSubjectToChinaPolicies = require(PlayerList.Actions.SetSubjectToChinaPolicies)
local SetSettings = require(PlayerList.Actions.SetSettings)

if not Players.LocalPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
end

local FFlagUseNewPlayerList = PlayerListPackage.Flags.FFlagUseNewPlayerList
local FFlagAddNewPlayerListFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListFocusNav
local FStringPlayerListOverrideType = require(PlayerList.Flags.FStringPlayerListOverrideType)
local FFlagModalPlayerListCloseUnfocused = PlayerListPackage.Flags.FFlagModalPlayerListCloseUnfocused
local FFlagSetIsGamepadOnMount = game:DefineFastFlag("PlayerListSetIsGamepadOnMount", false)
local FFlagEnableMobilePlayerListOnConsole = PlayerListPackage.Flags.FFlagEnableMobilePlayerListOnConsole
local FFlagPlayerListUseMobileOnSmallDisplay = PlayerListPackage.Flags.FFlagPlayerListUseMobileOnSmallDisplay
local FFlagPlayerListIgnoreDevGamepadBindings = PlayerListPackage.Flags.FFlagPlayerListIgnoreDevGamepadBindings

local PlayerListContainer = PlayerListPackage.Container.PlayerListContainer
local LeaderboardStoreInstanceManager = PlayerListPackage.LeaderboardStoreInstanceManager

local FFlagTopBarSignalizeSetCores = CoreGuiCommon.Flags.FFlagTopBarSignalizeSetCores

local function isSmallTouchScreen()
	if _G.__TESTEZ_RUNNING_TEST__ then
		return false
	end
	local isSmallDisplaySize = if FFlagPlayerListUseMobileOnSmallDisplay then GuiService.ViewportDisplaySize == Enum.DisplaySize.Small else false
	local isLargeDisplaySize = if FFlagEnableMobilePlayerListOnConsole then GuiService.ViewportDisplaySize == Enum.DisplaySize.Large else false
	local isTouchOrGamepad = if FFlagEnableMobilePlayerListOnConsole or FFlagPlayerListUseMobileOnSmallDisplay then UserInputService.PreferredInput == Enum.PreferredInput.Touch or UserInputService.PreferredInput == Enum.PreferredInput.Gamepad else false
	return SettingsUtil:IsSmallTouchScreen() 
		or (FFlagEnableMobilePlayerListOnConsole and isLargeDisplaySize and isTouchOrGamepad) 
		or (FFlagPlayerListUseMobileOnSmallDisplay and isSmallDisplaySize and isTouchOrGamepad) 
		or (FStringPlayerListOverrideType == "mobile")
end

local function setupSettings(store)
	local function updateSettings()
		store:dispatch(SetSettings({
			reducedMotion = UserGameSettings.ReducedMotion,
			preferredTransparency = UserGameSettings.PreferredTransparency,
		}))
	end

	updateSettings()

	UserGameSettings:GetPropertyChangedSignal("PreferredTransparency"):Connect(function()
		updateSettings()
	end)
	UserGameSettings:GetPropertyChangedSignal("ReducedMotion"):Connect(function()
		updateSettings()
	end)
end

local PlayerListMaster = {}
PlayerListMaster.__index = PlayerListMaster

function PlayerListMaster.new()
	local self = setmetatable({}, PlayerListMaster)

	if GlobalConfig.propValidation then
		Roact.setGlobalConfig({
			propValidation = true,
		})
	end
	if GlobalConfig.elementTracing then
		Roact.setGlobalConfig({
			elementTracing = true,
		})
	end

	self.layerCollectorRef = Roact.createRef()

	self.store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})

	setupSettings(self.store)

	if not StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList) then
		self.store:dispatch(SetPlayerListEnabled(false))
	end

	coroutine.wrap(function()
		self.store:dispatch(SetSmallTouchDevice(isSmallTouchScreen()))
	end)()

	if FFlagEnableMobilePlayerListOnConsole then
		self.store:dispatch(SetTenFootInterface(false))
	else
		self.store:dispatch(SetTenFootInterface(TenFootInterface:IsEnabled()))
	end

	coroutine.wrap(function()
		self.store:dispatch(SetSubjectToChinaPolicies(CachedPolicyService:IsSubjectToChinaPolicies()))
	end)()

	if not FFlagUseNewPlayerList or not FFlagSetIsGamepadOnMount then
		local lastInputType = UserInputService:GetLastInputType()
		local isGamepad = lastInputType and lastInputType.Name:find("Gamepad")
		self.store:dispatch(SetIsUsingGamepad(isGamepad ~= nil))
	end

	self:_trackEnabled()

	local appStyleForUiModeStyleProvider = {
		themeName = StyleConstants.ThemeName.Dark,
		fontName = StyleConstants.FontName.Gotham,
	}

	self.root = Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		Switcher = Roact.createElement(PlayerListSwitcher, {
			appStyleForUiModeStyleProvider = appStyleForUiModeStyleProvider,
			setLayerCollectorEnabled = function(enabled)
				if not self.layerCollectorRef.current then
					return
				end
				self.layerCollectorRef.current.Enabled = enabled
			end,
		}),
	})

	self.root = Roact.createElement(ApolloProvider, {
		client = ApolloClientInstance,
	}, {
		StoreProvider = self.root,
	})

	if FFlagSetIsGamepadOnMount then
		self._setIsUsingGamepad = function()
			local lastInputType = UserInputService:GetLastInputType()
			local isGamepad = lastInputType and lastInputType.Name:find("Gamepad")
			self.store:dispatch(SetIsUsingGamepad(isGamepad ~= nil))
		end
	end

	self._mountLeaderboardStore = function()
		LeaderboardStoreInstanceManager.createLeaderboardStoreInstance()
	end

	self._unmountLeaderboardStore = function()
		LeaderboardStoreInstanceManager.cleanUpInstance()
	end

	if FFlagUseNewPlayerList then
		self._mountLeaderboardStore()
		if FFlagSetIsGamepadOnMount then
			self._setIsUsingGamepad()
		end
		self.root = Roact.createElement(PlayerListContainer, {
			leaderboardStore = LeaderboardStoreInstanceManager.getLeaderboardStoreInstance,
			TopBarConstants = require(RobloxGui.Modules.TopBar.Constants),
			isTenFoot = if FFlagEnableMobilePlayerListOnConsole then false else TenFootInterface:IsEnabled(),
		}, {
			PlayerListMaster = self.root,
		})
	end

	self.root = Roact.createElement("ScreenGui", {
		AutoLocalize = false,
		IgnoreGuiInset = true,
		DisplayOrder = 1,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		[Roact.Ref] = self.layerCollectorRef,
	}, {
		PlayerListMaster = self.root,
	})

	self.element = Roact.mount(self.root, CoreGui, "PlayerList")

	self.topBarEnabled = true
	self.mounted = true
	self.coreGuiEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)
	self:_updateMounted()

	self.SetVisibleChangedEvent = Instance.new("BindableEvent")
	if FFlagAddNewPlayerListFocusNav then
		self.VisibilityChangedEvent = Instance.new("BindableEvent")
	end

	if FFlagTopBarSignalizeSetCores then 
		self.disposeEffect = Signals.createEffect(function(scope)
			local getTopBarStore = CoreGuiCommon.Stores.GetTopBarStore
			if getTopBarStore then
				self:SetTopBarEnabled(getTopBarStore(scope).getTopBarCoreGuiEnabled(scope))
			end
		end)
	end

	self.store.changed:connect(function(newState, oldState)
		if newState.displayOptions.setVisible ~= oldState.displayOptions.setVisible then
			self.SetVisibleChangedEvent:Fire(newState.displayOptions.setVisible)
		end
		if FFlagAddNewPlayerListFocusNav then
			if newState.displayOptions.isVisible ~= oldState.displayOptions.isVisible then
				self.VisibilityChangedEvent:Fire(newState.displayOptions.isVisible)
			end
		end
	end)

	return self
end

function PlayerListMaster:_updateMounted()
	if FFlagEnableMobilePlayerListOnConsole or not TenFootInterface:IsEnabled() then
		local shouldMount = self.coreGuiEnabled and self.topBarEnabled
		if shouldMount and not self.mounted then
			if FFlagUseNewPlayerList then
				self._mountLeaderboardStore()
				if FFlagSetIsGamepadOnMount then
					self._setIsUsingGamepad()
				end
			end
			self.element = Roact.mount(self.root, CoreGui, "PlayerList")
			self.mounted = true
		elseif not shouldMount and self.mounted then
			Roact.unmount(self.element)
			if FFlagUseNewPlayerList then
				self._unmountLeaderboardStore()
			end
			self.mounted = false
			if self.inspector then
				self.inspector:destroy()
				self.inspector = nil
			end
		end
	end
end

function PlayerListMaster:_trackEnabled()
	StarterGui.CoreGuiChangedSignal:Connect(function(coreGuiType, enabled)
		if coreGuiType == Enum.CoreGuiType.All or coreGuiType == Enum.CoreGuiType.PlayerList then
			self.coreGuiEnabled = enabled
			self:_updateMounted()
			self.store:dispatch(SetPlayerListEnabled(enabled))
			if FFlagPlayerListIgnoreDevGamepadBindings then
				if not enabled then
					GuiService:SetMenuIsOpen(false, PlayerListConstants.PLAYER_LIST_MENU)
				end
			end
		end
	end)
end

if FFlagModalPlayerListCloseUnfocused then
	function PlayerListMaster:GetIsModal()
		return self.store:getState().displayOptions.isSmallTouchDevice
	end
end

function PlayerListMaster:GetVisibility()
	return self.store:getState().displayOptions.isVisible
end

if FFlagAddNewPlayerListFocusNav then
	function PlayerListMaster:GetVisibilityChangedEvent()
		return self.VisibilityChangedEvent
	end
end

function PlayerListMaster:GetSetVisible()
	return self.store:getState().displayOptions.setVisible
end

function PlayerListMaster:GetSetVisibleChangedEvent()
	return self.SetVisibleChangedEvent
end

function PlayerListMaster:SetVisibility(value)
	self.store:dispatch(SetPlayerListVisibility(value))
end

function PlayerListMaster:HideTemp(requester, hidden)
	if hidden == false then
		hidden = nil
	end
	self.store:dispatch(SetTempHideKey(requester, hidden))
end

function PlayerListMaster:SetTopBarEnabled(value)
	self.topBarEnabled = value
	self:_updateMounted()
end

function PlayerListMaster:SetMinimized(value)
	self.store:dispatch(SetMinimized(value))
end

return PlayerListMaster