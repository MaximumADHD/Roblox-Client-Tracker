local Root = script:FindFirstAncestor("ChromeShared")
local ChromeUtils = require(Root.Service.ChromeUtils)

local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local LocalizationService = game:GetService("LocalizationService")
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local locales = Localization.new(LocalizationService.RobloxLocaleId)

local AppCommonLib = require(CorePackages.Workspace.Packages.AppCommonLib)

local Types = require(Root.Service.Types)

local Signal = AppCommonLib.Signal
local AvailabilitySignal = ChromeUtils.AvailabilitySignal
local AvailabilitySignalState = ChromeUtils.AvailabilitySignalState

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagConsoleSinglePressIntegrationExit = SharedFlags.FFlagConsoleSinglePressIntegrationExit
local FFlagChromeShortcutDisableRespawn = SharedFlags.FFlagChromeShortcutDisableRespawn
local FFlagChromeShortcutBarUseHideOverrides = SharedFlags.FFlagChromeShortcutBarUseHideOverrides
local FFlagShortcutBarUseTokens = SharedFlags.FFlagShortcutBarUseTokens
local FFlagChromeUnbindAllShortcuts = SharedFlags.FFlagChromeUnbindAllShortcuts

type ShortcutId = Types.ShortcutId
type ShortcutBarId = Types.ShortcutBarId
type ShortcutIdList = Types.ShortcutIdList
type ShortcutBarList = Types.ShortcutBarList
type ShortcutList = Types.ShortcutList

local ShortcutService = {} :: ShortcutService
ShortcutService.__index = ShortcutService

export type ShortcutService = {
	__index: ShortcutService,

	new: () -> ShortcutService,

	registerShortcut: (ShortcutService, shortcutProps: Types.ShortcutRegisterProps) -> (),
	activateShortcut: (ShortcutService, shortcutId: ShortcutId) -> Enum.ContextActionResult?,
	shortcutChanged: (ShortcutService, shortcut: Types.ShortcutProps) -> (),
	updateShortcutBar: (ShortcutService, shortcutBarId: ShortcutBarId?) -> (),

	configureShortcutBar: (ShortcutService, shortcutBarId: ShortcutBarId, config: Types.ShortcutBarProps) -> (),
	setShortcutBar: (ShortcutService, shortcutBarId: ShortcutBarId?) -> (),
	getShortcut: (ShortcutService, shortcutId: ShortcutId) -> Types.ShortcutProps,
	shortcuts: (ShortcutService) -> Types.ShortcutList,
	getShortcutsFromBar: (
		ShortcutService,
		shortcutBarId: ShortcutBarId?,
		integrationList: Types.IntegrationList
	) -> Types.ShortcutBarItems,
	getCurrentShortcutBar: (ShortcutService) -> ShortcutBarId?,
	setHideShortcutBar: (ShortcutService, sourceName: string, hidden: boolean?) -> (),
	getHideShortcutBar: (ShortcutService) -> boolean,

	onShortcutBarChanged: AppCommonLib.Signal,

	_bindShortcutBar: (ShortcutService, shortcutBarId: ShortcutBarId) -> (),
	_unbindShortcutBar: (ShortcutService, shortcutBarId: ShortcutBarId) -> (),
	_bindShortcut: (ShortcutService, shortcutId: ShortcutId) -> (),
	_unbindShortcut: (ShortcutService, shortcutId: ShortcutId) -> (),
	_unbindAllShortcuts: (ShortcutService) -> (),
	_handleShortcutEvent: (
		ShortcutService
	) -> (actionName: string, userInputState: Enum.UserInputState, input: InputObject) -> Enum.ContextActionResult,

	_shortcuts: ShortcutList,
	_shortcutBarList: ShortcutBarList,
	_currentShortcutBar: ShortcutBarId?,
	_shortcutBarHiddenOverrides: { [Types.ShortcutOverrideId]: boolean? },
	_shortcutBarHidden: boolean,
	_boundShortcuts: {},
}

local function _handleShortcutEvent(shortcutService: ShortcutService)
	return function(actionName: string, userInputState: Enum.UserInputState, input: InputObject)
		if userInputState ~= Enum.UserInputState.Begin then
			return Enum.ContextActionResult.Pass
		end

		for id, shortcut in shortcutService._shortcuts do
			if shortcut.actionName and shortcut.actionName == actionName then
				if FFlagConsoleSinglePressIntegrationExit then
					return shortcutService:activateShortcut(id) or Enum.ContextActionResult.Sink
				else
					shortcutService:activateShortcut(id)
					return Enum.ContextActionResult.Sink
				end
			end
		end
		return Enum.ContextActionResult.Pass
	end
end

function ShortcutService.new(): ShortcutService
	local self = {}

	self._shortcuts = {} :: ShortcutIdList
	self._shortcutBarList = {} :: ShortcutBarList
	self._shortcutBarHiddenOverrides = {}

	self.onShortcutBarChanged = Signal.new()

	self._boundShortcuts = {}

	return (setmetatable(self, ShortcutService) :: any) :: ShortcutService
end

function ShortcutService:registerShortcut(shortcut: Types.ShortcutRegisterProps)
	if self._shortcuts[shortcut.id] then
		warn(string.format("shortcut " .. shortcut.id .. " already registered", debug.traceback()))
	end

	local newShortcut = shortcut :: Types.ShortcutProps
	if shortcut.label then
		newShortcut.label = locales:Format(shortcut.label)
	end
	if FFlagShortcutBarUseTokens then
		newShortcut.displayPriority = shortcut.displayPriority or 0
	end
	if FFlagChromeShortcutDisableRespawn then
		if shortcut.availability == nil then
			newShortcut.availability = AvailabilitySignal.new(AvailabilitySignalState.Available)
		end

		newShortcut.availability:connect(function()
			self:shortcutChanged(newShortcut)
		end)
	end

	newShortcut.icon = UserInputService:GetImageForKeyCode(shortcut.keyCode)

	self._shortcuts[shortcut.id] = newShortcut
end

function ShortcutService:activateShortcut(shortcutId: ShortcutId)
	if self._shortcuts[shortcutId] then
		local shortcut = self._shortcuts[shortcutId]

		if shortcut.activated then
			return shortcut.activated()
		end
	end
	return nil
end

function ShortcutService:shortcutChanged(shortcut: Types.ShortcutProps)
	if FFlagChromeShortcutDisableRespawn then
		self:updateShortcutBar(self:getCurrentShortcutBar())
	end
end

function ShortcutService:updateShortcutBar(shortcutBarId: ShortcutBarId?)
	if FFlagChromeUnbindAllShortcuts then
		self:_unbindAllShortcuts()
	elseif self._currentShortcutBar and self._shortcutBarList[self._currentShortcutBar] then
		self:_unbindShortcutBar(self._currentShortcutBar)
	end

	self._currentShortcutBar = shortcutBarId

	if FFlagChromeShortcutBarUseHideOverrides and self._shortcutBarHidden then
		self.onShortcutBarChanged:fire(nil)
	else
		self.onShortcutBarChanged:fire(shortcutBarId)

		if shortcutBarId and self._shortcutBarList[shortcutBarId] then
			self:_bindShortcutBar(shortcutBarId)
		end
	end
end

function ShortcutService:configureShortcutBar(shortcutBarId: ShortcutBarId, config: Types.ShortcutBarProps)
	self._shortcutBarList[shortcutBarId] = config
end

function ShortcutService:setShortcutBar(shortcutBarId: ShortcutBarId?)
	if self._currentShortcutBar ~= shortcutBarId then
		self:updateShortcutBar(shortcutBarId)
	end
end

function ShortcutService:setHideShortcutBar(sourceName: Types.ShortcutOverrideId, hidden: boolean?)
	if self._shortcutBarHiddenOverrides[sourceName] ~= hidden then
		if hidden then
			self._shortcutBarHiddenOverrides[sourceName] = hidden
		else
			self._shortcutBarHiddenOverrides[sourceName] = nil
		end

		local isHidden = false
		for _, hidden in pairs(self._shortcutBarHiddenOverrides) do
			if hidden then
				isHidden = true
				break
			end
		end

		self._shortcutBarHidden = isHidden
		self:updateShortcutBar(self._currentShortcutBar)
	end
end

function ShortcutService:getHideShortcutBar()
	return self._shortcutBarHidden
end

function ShortcutService:getShortcut(shortcutId: ShortcutId)
	return self._shortcuts[shortcutId]
end

function ShortcutService:getShortcutsFromBar(shortcutBarId: ShortcutBarId?, integrationList: Types.IntegrationList)
	if not shortcutBarId then
		return {}
	end
	local activeShortcuts: Types.ShortcutBarItems = {}

	for k, shortcutId in self._shortcutBarList[shortcutBarId] do
		if not self._shortcuts[shortcutId] then
			warn(string.format("shortcut " .. shortcutId .. " not found", debug.traceback()))
			continue
		end

		local shortcut = self._shortcuts[shortcutId]

		if FFlagChromeShortcutDisableRespawn then
			if shortcut.availability:get() == AvailabilitySignalState.Unavailable then
				continue
			end
		else
			if shortcut.integration then
				if
					integrationList[shortcut.integration].availability:get()
					== ChromeUtils.AvailabilitySignalState.Unavailable
				then
					continue
				end
			end
		end
		table.insert(activeShortcuts, shortcut)
	end

	return activeShortcuts
end

function ShortcutService:getCurrentShortcutBar()
	return self._currentShortcutBar
end

function ShortcutService:_bindShortcutBar(shortcutBarId: ShortcutBarId)
	for k, shortcutId in self._shortcutBarList[shortcutBarId] do
		local shortcut = self._shortcuts[shortcutId]
		if FFlagChromeShortcutDisableRespawn then
			if not shortcut or not shortcut.actionName then
				continue
			end
			self:_unbindShortcut(shortcutId)
			if shortcut.availability:get() == AvailabilitySignalState.Unavailable then
				continue
			end
			self:_bindShortcut(shortcutId)
		else
			if shortcut and shortcut.actionName then
				self:_unbindShortcut(shortcutId)
				self:_bindShortcut(shortcutId)
			end
		end
	end
end

function ShortcutService:_unbindShortcutBar(shortcutBarId: ShortcutBarId)
	if shortcutBarId then
		for k, shortcutId in self._shortcutBarList[shortcutBarId] do
			local shortcut = self._shortcuts[shortcutId]
			if shortcut and shortcut.actionName then
				self:_unbindShortcut(shortcutId)
			end
		end
	end
end

function ShortcutService:_bindShortcut(shortcutId: ShortcutId)
	local shortcut = self._shortcuts[shortcutId]
	if shortcut and shortcut.actionName then
		ContextActionService:BindCoreAction(shortcut.actionName, _handleShortcutEvent(self), false, shortcut.keyCode)
		if FFlagChromeUnbindAllShortcuts then
			self._boundShortcuts[shortcut.actionName] = true
		end
	end
end

function ShortcutService:_unbindShortcut(shortcutId: ShortcutId)
	local shortcut = self._shortcuts[shortcutId]
	if shortcut and shortcut.actionName then
		ContextActionService:UnbindCoreAction(shortcut.actionName)
		if FFlagChromeUnbindAllShortcuts then
			self._boundShortcuts[shortcut.actionName] = false
		end
	end
end

function ShortcutService:_unbindAllShortcuts()
	if not FFlagChromeUnbindAllShortcuts then
		return
	end
	for actionName, isBound in self._boundShortcuts do
		if isBound then
			ContextActionService:UnbindCoreAction(actionName :: string)
			self._boundShortcuts[actionName] = false
		end
	end
end

return ShortcutService
