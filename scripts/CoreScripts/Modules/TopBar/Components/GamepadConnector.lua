--[[
This module connects Gamepads to the Topbar. This includes binding gamepad
buttons to navigate to and away from Unibar + Toast Notifications.
]]

-- Services
local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local GamepadService = game:GetService("GamepadService")
local AppCommonLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Responsive = require(CorePackages.Workspace.Packages.Responsive)
local InputModeStore = Responsive.GetInputModeStore(false)
local IXPServiceWrapper = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local ExperimentLayers = require(CorePackages.Workspace.Packages.ExperimentLayers).AppUserLayers
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local Signals = require(CorePackages.Packages.Signals)

-- Modules
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagTiltIconUnibarFocusNav = SharedFlags.FFlagTiltIconUnibarFocusNav
local FFlagHideTopBarConsole = SharedFlags.FFlagHideTopBarConsole
local FFlagEnableChromeShortcutBar = SharedFlags.FFlagEnableChromeShortcutBar
local FFlagIgnoreDevGamepadBindingsMenuOpen = SharedFlags.FFlagIgnoreDevGamepadBindingsMenuOpen
local FFlagConsoleChatOnExpControls = SharedFlags.FFlagConsoleChatOnExpControls
local FFlagShowUnibarOnVirtualCursor = SharedFlags.FFlagShowUnibarOnVirtualCursor
local FFlagChromeFixDelayLoadControlLock = SharedFlags.FFlagChromeFixDelayLoadControlLock
local FFlagGamepadConnectorUseChromeFocusAPI = SharedFlags.FFlagGamepadConnectorUseChromeFocusAPI
local FFlagGamepadConnectorSetCoreGuiNavEnabled = SharedFlags.FFlagGamepadConnectorSetCoreGuiNavEnabled
local FFlagConsoleChatUseChromeFocusUtils = SharedFlags.FFlagConsoleChatUseChromeFocusUtils
local FFlagExperienceMenuGamepadExposureEnabled = SharedFlags.FFlagExperienceMenuGamepadExposureEnabled
local FFlagFixChromeConsoleNilRefs = SharedFlags.FFlagFixChromeConsoleNilRefs

local FFlagAddNewPlayerListFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListFocusNav
local FFlagModalPlayerListCloseUnfocused = PlayerListPackage.Flags.FFlagModalPlayerListCloseUnfocused

local FFlagUseToBarFocusedToToggleTopBar = game:DefineFastFlag("UseToBarFocusedToToggleTopBar", false)
local FFlagAddDismissTopBarFocus = game:DefineFastFlag("AddDismissTopBarFocus", false)
local FFlagRefactorIsTopBarFocused = game:DefineFastFlag("RefactorIsTopBarFocused", false)
local FFlagShowTopBarAlwaysOnTouchEnabled = game:DefineFastFlag("ShowTopBarAlwaysOnTouchEnabled", false)

local Modules = script.Parent.Parent.Parent
local TopBar = Modules.TopBar

local FFlagAddTopBarScrim = require(TopBar.Flags.FFlagAddTopBarScrim)

local TopBarTelemetry = require(TopBar:WaitForChild("Telemetry"))
local LogGamepadOpenExperienceControlsMenu = TopBarTelemetry.LogGamepadOpenExperienceControlsMenu
local Chrome = Modules.Chrome
local ChromeEnabled = require(Chrome.Enabled)()
local ChromeService = if ChromeEnabled then require(Chrome.Service) else nil :: any
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local ChromeFocusUtils = require(CorePackages.Workspace.Packages.Chrome).FocusUtils
local ObservableValue = if ChromeEnabled and (FFlagTiltIconUnibarFocusNav or FFlagHideTopBarConsole)
	then ChromeUtils.ObservableValue
	else nil
local ToastNotificationConstants = require(CorePackages.Workspace.Packages.ToastNotification).ToastNotificationConstants
local Constants = require(script.Parent.Parent.Constants)
local SettingsShowSignal = require(CorePackages.Workspace.Packages.CoreScriptsCommon).SettingsShowSignal
local PlayerList = Modules.PlayerList
local PlayerListManager = require(PlayerList.PlayerListManager)

local MenuIconSelectedSignal = ChromeFocusUtils.MenuIconSelectedSignal

local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
local ExpChatFocusNavigationStore = ExpChat.Stores.GetFocusNavigationStore(false)

local ToastRoot = nil
local ToastGui = nil
local Toast = nil
task.spawn(function()
	ToastRoot = CoreGui:WaitForChild("ToastNotification", 3)
	ToastGui = if ToastRoot ~= nil then ToastRoot:WaitForChild("ToastNotificationWrapper", 3) else nil
	Toast = if ToastGui ~= nil then ToastGui:FindFirstChild("Toast", true) :: any else nil
end)

-- Types
export type ContextActionName = string
export type ObservableValue<T> = ChromeUtils.ObservableValue<T>

type ActionBind = (GamepadConnector, ContextActionName, Enum.UserInputState, InputObject) -> Enum.ContextActionResult

type GamepadConnectorImpl = {
	__index: GamepadConnectorImpl,
	new: () -> GamepadConnector,
	connectToTopbar: (GamepadConnector) -> (),
	disconnectFromTopbar: (GamepadConnector) -> (),
	getSelectedCoreObject: (GamepadConnector) -> ObservableValue<GuiObject?>,
	getShowTopBar: (GamepadConnector) -> ObservableValue<boolean>,
	topBarFocused: (GamepadConnector, Signals.scope) -> boolean?,
	getGamepadActive: (GamepadConnector) -> ObservableValue<boolean>,
	_addDismissFocusConnections: (GamepadConnector) -> (),
	_removeDismissFocusConnections: (GamepadConnector) -> (),
	_isTopBarFocused: (GamepadConnector) -> boolean,
	_toggleUnibarMenu: (GamepadConnector) -> (),
	_toggleTopbar: ActionBind,
	_focusGamepadToTopBar: (GamepadConnector) -> (),
	_unfocusGamepadFromTopBar: (GamepadConnector) -> (),
	_focusToastNotification: (GamepadConnector, Enum.UserInputState) -> boolean,
	_logExperienceMenuGamepadExposure: (GamepadConnector) -> (),
	_bindSelf: <T..., R...>(GamepadConnector, (GamepadConnector, T...) -> R...) -> (T...) -> R...,
}

export type GamepadConnector = typeof(setmetatable(
	{} :: {
		_loggedExperienceMenuGamepadExposure: boolean,
		_selectedCoreObject: ObservableValue<GuiObject?>,
		_topBarFocused: Signals.getter<boolean>,
		_setTopBarFocused: Signals.setter<boolean>,
		_chromeFocused: ObservableValue<boolean>,
		_lastMenuButtonPress: number,
		_gamepadActive: ObservableValue<boolean>,
		_tiltMenuOpen: ObservableValue<boolean>,
		_showTopBar: ObservableValue<boolean>,
		_devSetCoreGuiNavEnabled: boolean,
		_connections: { AppCommonLib.SignalHandle },
		_dismissFocusConnections: { RBXScriptConnection },
	},
	{} :: GamepadConnectorImpl
))

-- Constants
local FOCUS_GAMEPAD_TO_TOPBAR: ContextActionName = "FocusGamepadToTopbar"
local TOPBAR_MENU: ContextActionName = "TopbarMenu"

-- Helper functions
local function createSelectedCoreObject(): ObservableValue<GuiObject?>
	local selectedCoreObject = (ObservableValue :: never).new(GuiService.SelectedCoreObject)
	GuiService:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function()
		selectedCoreObject:set(GuiService.SelectedCoreObject)
	end)
	if not FFlagConsoleChatOnExpControls and FFlagIgnoreDevGamepadBindingsMenuOpen then
		-- override any developer bindings when active
		selectedCoreObject:connect(function(instance: Instance)
			if not instance then
				ChromeService:disableFocusNav()
				GuiService:SetMenuIsOpen(false, TOPBAR_MENU)
			end
		end)
	end

	return selectedCoreObject
end

local function isInputGamepad(input): boolean
	for _, gamepad in Constants.GamepadInputTypes do
		if input == gamepad then
			return true
		end
	end
	return false
end

-- Core Module
local GamepadConnector: GamepadConnectorImpl = {} :: GamepadConnectorImpl
GamepadConnector.__index = GamepadConnector

function GamepadConnector.new(): GamepadConnector
	local self = {}
	self._loggedExperienceMenuGamepadExposure = false
	self._devSetCoreGuiNavEnabled = GuiService.CoreGuiNavigationEnabled
	self._chromeFocused = if not FFlagFixChromeConsoleNilRefs or ChromeService then ChromeService:inFocusNav() else false
	self._lastMenuButtonPress = 0
	self._dismissFocusConnections = {}
	-- remove never cast when cleaning up GetFFlagTiltIconUnibarFocusNav
	self._selectedCoreObject = if ChromeEnabled and (FFlagTiltIconUnibarFocusNav or FFlagHideTopBarConsole)
		then createSelectedCoreObject()
		else nil :: never
	self._connections = {}
	if ChromeEnabled and FFlagHideTopBarConsole then
		self._gamepadActive = (ObservableValue :: never).new(isInputGamepad(UserInputService:GetLastInputType()))
		self._tiltMenuOpen = if FFlagEnableChromeShortcutBar
			then (ObservableValue :: never).new(false)
			else nil :: never
		self._playerListModalOpen = if FFlagAddNewPlayerListFocusNav
			then (ObservableValue :: never).new(false)
			else nil :: never
		self._showTopBar = (ObservableValue :: never).new(true)

		UserInputService.LastInputTypeChanged:Connect(function(lastInputType)
			self._gamepadActive:set(isInputGamepad(lastInputType))
		end)

		if FFlagEnableChromeShortcutBar then
			SettingsShowSignal:connect(function(isOpen)
				self._tiltMenuOpen:set(isOpen)
			end)
		end

		if FFlagAddNewPlayerListFocusNav then
			PlayerListManager:GetVisibilityChangedEvent().Event:Connect(function()
				local isModal = if FFlagModalPlayerListCloseUnfocused then PlayerListManager:GetIsModal() else true
				self._playerListModalOpen:set(isModal and PlayerListManager:GetVisibility())
			end)
		end

		local shouldShowTopBar = function()
			local showTopBar = not self._gamepadActive:get()
				or self._chromeFocused:get()
				or self._selectedCoreObject:get() ~= nil
				or (FFlagShowTopBarAlwaysOnTouchEnabled and UserInputService.TouchEnabled)
				or (FFlagEnableChromeShortcutBar and self._tiltMenuOpen:get())
				or (FFlagAddNewPlayerListFocusNav and self._playerListModalOpen:get())
				or (FFlagShowUnibarOnVirtualCursor and GamepadService.GamepadCursorEnabled)
			self._showTopBar:set(showTopBar)
			if FFlagGamepadConnectorSetCoreGuiNavEnabled then
				if showTopBar then
					GuiService.CoreGuiNavigationEnabled = true
				else
					GuiService.CoreGuiNavigationEnabled = self._devSetCoreGuiNavEnabled
				end
			end
		end

		self._selectedCoreObject:connect(shouldShowTopBar)
		self._chromeFocused:connect(shouldShowTopBar)
		if FFlagEnableChromeShortcutBar then
			self._tiltMenuOpen:connect(shouldShowTopBar)
		end
		if FFlagShowUnibarOnVirtualCursor then
			GamepadService:GetPropertyChangedSignal("GamepadCursorEnabled"):Connect(shouldShowTopBar)
		end
		self._gamepadActive:connect(shouldShowTopBar, true)
	end

	if FFlagGamepadConnectorSetCoreGuiNavEnabled then
		GuiService:GetPropertyChangedSignal("CoreGuiNavigationEnabled"):Connect(function()
			self._devSetCoreGuiNavEnabled = GuiService.CoreGuiNavigationEnabled
		end)
	end

	if FFlagRefactorIsTopBarFocused then
		self._isTopBarFocused = function(): boolean
			return self._chromeFocused:get() or MenuIconSelectedSignal:get()
		end
	end

	if FFlagAddTopBarScrim then
		local isTopBarFocused
		if FFlagRefactorIsTopBarFocused then
			isTopBarFocused = self._isTopBarFocused()
		else
			isTopBarFocused = self._chromeFocused:get() or MenuIconSelectedSignal:get()
		end
		self._topBarFocused, self._setTopBarFocused = Signals.createSignal(isTopBarFocused)
	end

	return setmetatable(self, GamepadConnector)
end

function GamepadConnector:connectToTopbar()
	if ChromeEnabled then
		if FFlagEnableChromeShortcutBar then
			self:disconnectFromTopbar()
		end
		ContextActionService:BindCoreAction(
			FOCUS_GAMEPAD_TO_TOPBAR,
			self:_bindSelf(self._toggleTopbar),
			false,
			Enum.KeyCode.ButtonStart
		)
		local onFocusChanged = function()
			-- Top bar menu being focused is dependent on either unibar or menu being focused.
			local focused
			if FFlagRefactorIsTopBarFocused then
				focused = self:_isTopBarFocused()
			else
				focused = self._chromeFocused:get() or MenuIconSelectedSignal:get()
			end
			GuiService:SetMenuIsOpen(focused, TOPBAR_MENU)
			if FFlagAddTopBarScrim then
				self._setTopBarFocused(focused)
			end

			if focused then
				if FFlagAddDismissTopBarFocus then
					self:_addDismissFocusConnections()
				end
			else
				if FFlagAddDismissTopBarFocus then
					self:_removeDismissFocusConnections()
				end
			end
		end
		table.insert(self._connections, self._chromeFocused:connect(onFocusChanged))
		table.insert(self._connections, MenuIconSelectedSignal:connect(onFocusChanged))
	end
end

function GamepadConnector:disconnectFromTopbar()
	for _, connection in self._connections do
		connection:disconnect()
	end
	self._connections = {}

	if FFlagAddDismissTopBarFocus then
		self:_removeDismissFocusConnections()
	end

	ContextActionService:UnbindCoreAction(FOCUS_GAMEPAD_TO_TOPBAR)
end

function GamepadConnector:getSelectedCoreObject(): ObservableValue<GuiObject?>
	return self._selectedCoreObject
end

function GamepadConnector:getShowTopBar(): ObservableValue<boolean>
	return self._showTopBar
end

function GamepadConnector:getGamepadActive(): ObservableValue<boolean>
	return self._gamepadActive
end

function GamepadConnector:topBarFocused(scope: Signals.scope): boolean?
	if not FFlagAddTopBarScrim then
		return
	end
	return self._topBarFocused(scope)
end

-- Internal
function GamepadConnector:_addDismissFocusConnections()
	local dismissOnInputEnded = UserInputService.InputEnded:Connect(
		function(inputChangedObj: InputObject, gameProcessedEvent: boolean)
			local lastInputType = InputModeStore.getLastInputType(false)
			local isPointerClick = lastInputType == Responsive.Input.Pointer
				and inputChangedObj.UserInputType ~= Enum.UserInputType.Keyboard
			local isTouch = lastInputType == Responsive.Input.Touch
			if isPointerClick or isTouch and not gameProcessedEvent then
				self:_unfocusGamepadFromTopBar()
			end
		end
	)

	self._dismissFocusConnections = {
		dismissOnInputEnded,
	}
end

function GamepadConnector:_removeDismissFocusConnections()
	for _, connection in self._dismissFocusConnections do
		connection:Disconnect()
	end
	self._dismissFocusConnections = {}
end

function GamepadConnector:_toggleTopbar(actionName, userInputState, input): Enum.ContextActionResult
	if
		ChromeEnabled
		and not self:_focusToastNotification(userInputState)
		and (
			not FFlagEnableChromeShortcutBar and userInputState == Enum.UserInputState.End
			or FFlagEnableChromeShortcutBar and userInputState == Enum.UserInputState.Begin
		)
	then
		if FFlagTiltIconUnibarFocusNav or FFlagHideTopBarConsole then
			if FFlagChromeFixDelayLoadControlLock then
				if ChromeService:integrations().nine_dot == nil then
					return Enum.ContextActionResult.Pass
				end
			end
			local isTopBarFocused
			if FFlagRefactorIsTopBarFocused then
				isTopBarFocused = self:_isTopBarFocused()
			else
				isTopBarFocused = self._chromeFocused:get() or MenuIconSelectedSignal:get()
			end
			local toggleTopBarOpen = if FFlagUseToBarFocusedToToggleTopBar
				then not (isTopBarFocused or ExpChatFocusNavigationStore.getChatInputBarFocused(false))
				else self:getSelectedCoreObject():get() == nil
			if toggleTopBarOpen then
				if FFlagGamepadConnectorUseChromeFocusAPI then
					self:_focusGamepadToTopBar()
				else
					ChromeService:enableFocusNav()
				end
			else
				if FFlagGamepadConnectorUseChromeFocusAPI then
					self:_unfocusGamepadFromTopBar()
				else
					ChromeService:disableFocusNav()
					GuiService.SelectedCoreObject = nil
				end
			end
			self:_logExperienceMenuGamepadExposure()
			LogGamepadOpenExperienceControlsMenu(toggleTopBarOpen)
		else
			if FFlagChromeFixDelayLoadControlLock then
				if ChromeService:integrations().nine_dot == nil then
					return Enum.ContextActionResult.Pass
				end
			end
			self:_toggleUnibarMenu()
		end

		if FFlagModalPlayerListCloseUnfocused then
			-- Close modal PlayerList when the top bar is focused or closed
			if PlayerListManager:GetIsModal() and PlayerListManager:GetVisibility() then
				PlayerListManager:SetVisibility(false)
			end
		end

		return Enum.ContextActionResult.Sink
	end

	return Enum.ContextActionResult.Pass
end

function GamepadConnector:_toggleUnibarMenu()
	local toggleUnibarOpen = self._chromeFocused:get()
	if toggleUnibarOpen then
		if FFlagGamepadConnectorUseChromeFocusAPI then
			self:_unfocusGamepadFromTopBar()
		else
			ChromeService:disableFocusNav()
		end
	else
		if FFlagGamepadConnectorUseChromeFocusAPI then
			self:_focusGamepadToTopBar()
		else
			ChromeService:enableFocusNav()
		end
	end
	self:_logExperienceMenuGamepadExposure()
	LogGamepadOpenExperienceControlsMenu(toggleUnibarOpen)
end

function GamepadConnector:_focusGamepadToTopBar()
	ChromeFocusUtils.FocusOnChrome()
end

function GamepadConnector:_unfocusGamepadFromTopBar()
	ChromeFocusUtils.FocusOffChrome(function()
		if FFlagConsoleChatUseChromeFocusUtils and ExpChatFocusNavigationStore.getChatInputBarFocused(false) then
			ExpChatFocusNavigationStore.unfocusChatInputBar()
		end
		GuiService.SelectedCoreObject = nil
	end)
end

function GamepadConnector:_focusToastNotification(userInputState): boolean
	local function buttonHoldTime()
		return tick() - self._lastMenuButtonPress
	end

	local isToastVisible = Toast ~= nil and Toast.Visible
	if userInputState == Enum.UserInputState.Begin then
		self._lastMenuButtonPress = tick()
		return false
	end

	return userInputState == Enum.UserInputState.End
		and isToastVisible
		and buttonHoldTime() < ToastNotificationConstants.MenuButtonPressHoldTime
end

function GamepadConnector:_logExperienceMenuGamepadExposure()
	if FFlagExperienceMenuGamepadExposureEnabled and not self._loggedExperienceMenuGamepadExposure then
		IXPServiceWrapper:LogFlagLinkedUserLayerExposure(ExperimentLayers.ExperienceMenuGamepadExposureLayer)
		self._loggedExperienceMenuGamepadExposure = true
	end
end

function GamepadConnector:_bindSelf<T..., R...>(func: (GamepadConnector, T...) -> R...): (T...) -> R...
	return function(...)
		return func(self, ...)
	end
end

if FFlagHideTopBarConsole then
	local instance: GamepadConnector = GamepadConnector.new()
	return instance
else
	return GamepadConnector :: never
end
