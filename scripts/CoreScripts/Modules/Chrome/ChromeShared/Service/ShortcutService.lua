local Root = script:FindFirstAncestor("ChromeShared")
local ChromeUtils = require(Root.Service.ChromeUtils)

local CorePackages = game:GetService("CorePackages")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local LocalizationService = game:GetService("LocalizationService")
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local locales = Localization.new(LocalizationService.RobloxLocaleId)

local AppCommonLib = require(CorePackages.Workspace.Packages.AppCommonLib)

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)

local Signal = AppCommonLib.Signal
local AvailabilitySignal = ChromeUtils.AvailabilitySignal
local AvailabilitySignalState = ChromeUtils.AvailabilitySignalState

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagGamepadIconSupportCheck = SharedFlags.FFlagGamepadIconSupportCheck

type ShortcutId = ChromePackage.ShortcutId
type ShortcutBarId = ChromePackage.ShortcutBarId
type ShortcutIdList = ChromePackage.ShortcutIdList
type ShortcutBarList = ChromePackage.ShortcutBarList
type ShortcutList = ChromePackage.ShortcutList
type IntegrationList = ChromePackage.IntegrationList
type ShortcutBarItems = ChromePackage.ShortcutBarItems
type ShortcutBarProps = ChromePackage.ShortcutBarProps
type ShortcutOverrideId = ChromePackage.ShortcutOverrideId
type ShortcutProps = ChromePackage.ShortcutProps
type ShortcutRegisterProps = ChromePackage.ShortcutRegisterProps

local ShortcutService = {} :: ShortcutService
ShortcutService.__index = ShortcutService

export type ShortcutService = {
	__index: ShortcutService,

	new: () -> ShortcutService,

	registerShortcut: (ShortcutService, shortcutProps: ShortcutRegisterProps) -> (),
	activateShortcut: (ShortcutService, shortcutId: ShortcutId) -> Enum.ContextActionResult?,
	shortcutChanged: (ShortcutService, shortcut: ShortcutProps) -> (),
	updateShortcutBar: (ShortcutService, shortcutBarId: ShortcutBarId?) -> (),

	configureShortcutBar: (ShortcutService, shortcutBarId: ShortcutBarId, config: ShortcutBarProps) -> (),
	setShortcutBar: (ShortcutService, shortcutBarId: ShortcutBarId?) -> (),
	getShortcut: (ShortcutService, shortcutId: ShortcutId) -> ShortcutProps,
	shortcuts: (ShortcutService) -> ShortcutList,
	getShortcutsFromBar: (
		ShortcutService,
		shortcutBarId: ShortcutBarId?,
		integrationList: IntegrationList
	) -> ShortcutBarItems,
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
	_shortcutBarHiddenOverrides: { [ShortcutOverrideId]: boolean? },
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
				return shortcutService:activateShortcut(id) or Enum.ContextActionResult.Sink
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

function ShortcutService:registerShortcut(shortcut: ShortcutRegisterProps)
	if self._shortcuts[shortcut.id] then
		warn(string.format("shortcut " .. shortcut.id .. " already registered", debug.traceback()))
	end

	local newShortcut = shortcut :: ShortcutProps
	if shortcut.label then
		newShortcut.label = locales:Format(shortcut.label)
	end
	newShortcut.displayPriority = shortcut.displayPriority or 0
	if shortcut.availability == nil then
		newShortcut.availability = AvailabilitySignal.new(AvailabilitySignalState.Available)
	end

	newShortcut.availability:connect(function()
		self:shortcutChanged(newShortcut)
	end)

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

function ShortcutService:shortcutChanged(shortcut: ShortcutProps)
	self:updateShortcutBar(self:getCurrentShortcutBar())
end

function ShortcutService:updateShortcutBar(shortcutBarId: ShortcutBarId?)
	self:_unbindAllShortcuts()
	self._currentShortcutBar = shortcutBarId

	if self._shortcutBarHidden then
		self.onShortcutBarChanged:fire(nil)
	else
		self.onShortcutBarChanged:fire(shortcutBarId)

		if shortcutBarId and self._shortcutBarList[shortcutBarId] then
			self:_bindShortcutBar(shortcutBarId)
		end
	end
end

function ShortcutService:configureShortcutBar(shortcutBarId: ShortcutBarId, config: ShortcutBarProps)
	self._shortcutBarList[shortcutBarId] = config
end

function ShortcutService:setShortcutBar(shortcutBarId: ShortcutBarId?)
	if self._currentShortcutBar ~= shortcutBarId then
		self:updateShortcutBar(shortcutBarId)
	end
end

function ShortcutService:setHideShortcutBar(sourceName: ShortcutOverrideId, hidden: boolean?)
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

function ShortcutService:getShortcutsFromBar(shortcutBarId: ShortcutBarId?, integrationList: IntegrationList)
	if not shortcutBarId then
		return {}
	end
	local activeShortcuts: ShortcutBarItems = {}

	for k, shortcutId in self._shortcutBarList[shortcutBarId] do
		if not self._shortcuts[shortcutId] then
			warn(string.format("shortcut " .. shortcutId .. " not found", debug.traceback()))
			continue
		end

		local shortcut = self._shortcuts[shortcutId]

		if
			shortcut.availability:get() == AvailabilitySignalState.Unavailable
			or (
				FFlagGamepadIconSupportCheck
				and not UserInputService:GamepadSupports(UserInputService:GetLastInputType(), shortcut.keyCode)
			)
		then
			continue
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
		if not shortcut or not shortcut.actionName then
			continue
		end
		self:_unbindShortcut(shortcutId)
		if shortcut.availability:get() == AvailabilitySignalState.Unavailable then
			continue
		end
		self:_bindShortcut(shortcutId)
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
		self._boundShortcuts[shortcut.actionName] = true
	end
end

function ShortcutService:_unbindShortcut(shortcutId: ShortcutId)
	local shortcut = self._shortcuts[shortcutId]
	if shortcut and shortcut.actionName then
		ContextActionService:UnbindCoreAction(shortcut.actionName)
		self._boundShortcuts[shortcut.actionName] = false
	end
end

function ShortcutService:_unbindAllShortcuts()
	for actionName, isBound in self._boundShortcuts do
		if isBound then
			ContextActionService:UnbindCoreAction(actionName :: string)
			self._boundShortcuts[actionName] = false
		end
	end
end

return ShortcutService
