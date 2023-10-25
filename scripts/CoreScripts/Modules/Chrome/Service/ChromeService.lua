local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local UserInputService = game:GetService("UserInputService")

local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

local Signal = SignalLib.Signal
local utils = require(script.Parent.ChromeUtils)
local LocalStore = require(script.Parent.LocalStore)
local ViewportUtil = require(script.Parent.ViewportUtil)
local WindowSizeSignal = require(script.Parent.WindowSizeSignal)
local ObservableValue = utils.ObservableValue
local NotifySignal = utils.NotifySignal
local AvailabilitySignal = utils.AvailabilitySignal
local Types = require(script.Parent.Types)

local GetFFlagEnableUnibarSneakPeak = require(script.Parent.Parent.Flags.GetFFlagEnableUnibarSneakPeak)
local GetFFlagEnableUnibarMaxDefaultOpen = require(script.Parent.Parent.Flags.GetFFlagEnableUnibarMaxDefaultOpen)
local EnableInGameMenuChromeWithoutSeenClose =
	require(script.Parent.Parent.Flags.GetFFlagEnableInGameMenuChromeWithoutSeenClose)
local GetFFlagSelfViewMultiTouchFix = require(script.Parent.Parent.Flags.GetFFlagSelfViewMultiTouchFix)

local NOTIFICATION_INDICATOR_DISPLAY_TIME_SEC = 1.5
local NOTIFICATION_INDICATOR_IDLE_COOLDOWN_TIME_SEC = 10
local CHROME_INTERACTED_KEY = "ChromeInteracted"
local CHROME_SEEN_COUNT_KEY = "ChromeSeenCount"
local MAX_CHROME_SEEN_COUNT = 3

-- todo: Consider how ChromeService could support multiple UI at the same time, not only the Unibar
--       Does there need to be another layer "IntegrationsService" that ChromeService can pull from?

local ChromeService = {} :: ChromeService
ChromeService.__index = ChromeService

ChromeService.AvailabilitySignal = utils.AvailabilitySignalState
ChromeService.MenuStatus = { Closed = 0, Open = 1 }
ChromeService.IntegrationStatus = { None = 0, Icon = 1, Window = 2 }
ChromeService.Key = {
	MostRecentlyUsed = "MRU",
}

export type ObservableMenuStatus = utils.ObservableValue<number>
export type ObservableSubMenu = utils.ObservableValue<string?>
export type ObservableMenuList = utils.ObservableValue<Types.MenuList>
export type ObservableIntegration = utils.ObservableValue<Types.IntegrationComponentProps | nil>
export type ObservableIntegrationList = utils.ObservableValue<Types.IntegrationList>
export type ObservableIntegrationId = utils.ObservableValue<string?>

export type ObservableWindowList = utils.ObservableValue<Types.WindowList>

export type ObservableDragConnection = utils.ObservableValue<{ current: RBXScriptConnection? }?>
type DragConnectionObjectType = any

function noop() end

export type ChromeService = {
	__index: ChromeService,

	Key: { [string]: string },
	IntegrationStatus: { [string]: number },
	MenuStatus: { [string]: number },
	AvailabilitySignal: { [string]: number },

	new: () -> ChromeService,
	toggleSubMenu: (ChromeService, subMenuId: Types.IntegrationId) -> (),
	currentSubMenu: (ChromeService) -> ObservableSubMenu,
	toggleOpen: (ChromeService) -> (),
	open: (ChromeService) -> (),
	close: (ChromeService) -> (),
	getLastInputToOpenMenu: (ChromeService) -> Enum.UserInputType,
	status: (ChromeService) -> ObservableMenuStatus,
	menuList: (ChromeService) -> ObservableMenuList,
	windowList: (ChromeService) -> ObservableWindowList,
	updateLocalization: (ChromeService, component: Types.IntegrationRegisterProps) -> Types.IntegrationRegisterProps,
	dragConnection: (ChromeService, componentId: Types.IntegrationId) -> { current: RBXScriptConnection? }?,
	register: (ChromeService, Types.IntegrationRegisterProps) -> Types.IntegrationProps,
	updateMenuList: (ChromeService) -> (),
	availabilityChanged: (ChromeService, Types.IntegrationProps) -> (),
	subMenuNotifications: (ChromeService, subMenuId: Types.IntegrationId) -> utils.NotifySignal,
	totalNotifications: (ChromeService) -> utils.NotifySignal,
	notificationIndicator: (ChromeService) -> ObservableIntegration,
	triggerNotificationIndicator: (ChromeService, Types.IntegrationId) -> (),
	updateNotificationTotals: (ChromeService) -> (),
	configureReset: (ChromeService) -> (),
	configureMenu: (ChromeService, menuConfig: Types.MenuConfig) -> (),
	configureSubMenu: (ChromeService, parent: Types.IntegrationId, menuConfig: Types.IntegrationIdList) -> (),
	gesture: (
		ChromeService,
		componentId: Types.IntegrationId,
		connection: { current: RBXScriptConnection? }?,
		inputObject: InputObject?
	) -> (),
	withinCurrentTopLevelMenu: (
		ChromeService,
		componentId: Types.IntegrationId
	) -> (Types.IntegrationComponentProps?, number),
	withinCurrentSubmenu: (ChromeService, componentId: Types.IntegrationId) -> boolean,
	isMostRecentlyUsed: (ChromeService, componentId: Types.IntegrationId) -> boolean,
	setRecentlyUsed: (ChromeService, componentId: Types.IntegrationId, force: boolean?) -> (),
	storeChromeInteracted: (ChromeService) -> (),
	storeChromeSeen: (ChromeService) -> (),
	activate: (ChromeService, componentId: Types.IntegrationId) -> (),
	toggleWindow: (ChromeService, componentId: Types.IntegrationId) -> (),
	isWindowOpen: (ChromeService, componentId: Types.IntegrationId) -> boolean,
	updateWindowSizeSignals: (ChromeService) -> (),
	windowPosition: (ChromeService, componentId: Types.IntegrationId) -> UDim2?,
	updateScreenSize: (ChromeService, screenSize: Vector2, isMobileDevice: boolean) -> (),
	updateWindowPosition: (ChromeService, componentId: Types.IntegrationId, position: UDim2) -> (),
	createIconProps: (ChromeService, Types.IntegrationId, number?, boolean?) -> Types.IntegrationComponentProps,

	onIntegrationRegistered: (ChromeService) -> SignalLib.Signal,
	onIntegrationActivated: (ChromeService) -> SignalLib.Signal,
	onIntegrationStatusChanged: (ChromeService) -> SignalLib.Signal,
	integrations: (ChromeService) -> Types.IntegrationList,
	mostRecentlyUsed: (ChromeService) -> Types.IntegrationIdList,

	setSelected: (ChromeService, Types.IntegrationId?) -> (),
	selectedItem: (ChromeService, Types.IntegrationId?) -> ObservableIntegrationId,
	repairSelected: (ChromeService) -> (),
	setSelectedByOffset: (ChromeService, number) -> (),

	_status: ObservableMenuStatus,
	_currentSubMenu: ObservableSubMenu,

	_integrations: Types.IntegrationList,
	_integrationsConnections: { [Types.IntegrationId]: { SignalLib.SignalHandle } },
	_integrationsStatus: { [Types.IntegrationId]: number },
	_menuConfig: Types.MenuConfig,
	_subMenuConfig: { [Types.IntegrationId]: Types.IntegrationIdList },
	_subMenuNotifications: { [Types.IntegrationId]: utils.NotifySignal },
	_menuList: ObservableMenuList,
	_dragConnection: { [Types.IntegrationId]: DragConnectionObjectType },
	_windowPositions: { [Types.IntegrationId]: UDim2? },
	_windowList: ObservableWindowList,
	_totalNotifications: utils.NotifySignal,
	_mostRecentlyUsedFullRecord: { Types.IntegrationId },
	_mostRecentlyUsed: Types.IntegrationIdList,
	_mostRecentlyUsedLimit: number,
	_notificationIndicator: ObservableIntegration,
	_lastDisplayedNotificationTick: number,
	_lastDisplayedNotificationId: Types.IntegrationId,

	_onIntegrationRegistered: SignalLib.Signal,
	_onIntegrationActivated: SignalLib.Signal,
	_onIntegrationStatusChanged: SignalLib.Signal,

	_lastInputToOpenMenu: Enum.UserInputType,
	_chromeSeenCount: number,

	_localization: any,
	_localizedLabelKeys: {
		[Types.IntegrationId]: { label: string?, secondaryActionLabel: string? },
	},
	_selectedItem: ObservableIntegrationId,
	_selectedItemIdx: number,
}

local DummyIntegration = {
	id = "div",
	label = "div",
	initialAvailability = ChromeService.AvailabilitySignal.Unavailable,
	availability = AvailabilitySignal.new(ChromeService.AvailabilitySignal.Unavailable),
	notification = NotifySignal.new(),
	components = {},
	hideNotificationCountWhileOpen = false,
}

function ChromeService.new(): ChromeService
	local localeId = LocalizationService.RobloxLocaleId
	local self = {}
	self._chromeSeenCount = if GetFFlagEnableUnibarMaxDefaultOpen() then getChromeSeenCount() else 0
	self._status = if GetFFlagEnableUnibarSneakPeak() or GetFFlagEnableUnibarMaxDefaultOpen()
		then getInitialStatus(self._chromeSeenCount)
		else utils.ObservableValue.new(ChromeService.MenuStatus.Closed)
	self._currentSubMenu = utils.ObservableValue.new(nil)
	self._selectedItem = utils.ObservableValue.new(nil)
	self._selectedItemIdx = 0
	self._integrations = {} :: Types.IntegrationList
	self._integrationsConnections = {}
	self._integrationsStatus = {} -- Icon/Window
	self._menuConfig = {} :: Types.MenuConfig
	self._subMenuConfig = {}
	self._subMenuNotifications = {}
	self._menuList = ObservableValue.new({})
	self._windowList = ObservableValue.new({})
	self._dragConnection = {}
	self._windowPositions = ObservableValue.new({})
	self._totalNotifications = NotifySignal.new(true)
	self._mostRecentlyUsedFullRecord = {}
	self._mostRecentlyUsed = {}
	self._mostRecentlyUsedLimit = 1
	self._localization = Localization.new(localeId)
	self._localizedLabelKeys = {}

	self._notificationIndicator = ObservableValue.new(nil)
	self._lastDisplayedNotificationTick = 0
	self._lastDisplayedNotificationId = ""

	self._onIntegrationRegistered = Signal.new()
	self._onIntegrationActivated = Signal.new()
	self._onIntegrationStatusChanged = Signal.new()

	self._lastInputToOpenMenu = Enum.UserInputType.None

	local service = (setmetatable(self, ChromeService) :: any) :: ChromeService

	-- todo: Consider moving this outside of ChromeService to reduce dependency on Roblox instances
	ViewportUtil.screenSize:connect(function(screenSize)
		service:updateScreenSize(screenSize, ViewportUtil.mobileDevice:get())
	end, true)

	if GetFFlagEnableUnibarMaxDefaultOpen() and not EnableInGameMenuChromeWithoutSeenClose() then
		service:storeChromeSeen()
	end

	return service
end

-- Get how many times user has seen chrome from local storage
function getChromeSeenCount(): number
	if GetFFlagEnableUnibarMaxDefaultOpen() and LocalStore.isEnabled() then
		local chromeSeenCount = LocalStore.loadForLocalPlayer(CHROME_SEEN_COUNT_KEY)
		if chromeSeenCount and tonumber(chromeSeenCount) then
			return chromeSeenCount
		end
	end

	return 0
end

-- Get initial status of menu: closed if interacted with before or seen enough times, open otherwise
function getInitialStatus(chromeSeenCount: number): ObservableMenuStatus
	if LocalStore.isEnabled() then
		if GetFFlagEnableUnibarSneakPeak() then
			local storedStatus = LocalStore.loadForLocalPlayer(CHROME_INTERACTED_KEY)
			if storedStatus then
				return utils.ObservableValue.new(ChromeService.MenuStatus.Closed)
			end
		end

		if
			GetFFlagEnableUnibarMaxDefaultOpen()
			and chromeSeenCount >= MAX_CHROME_SEEN_COUNT
			and not EnableInGameMenuChromeWithoutSeenClose()
		then
			return utils.ObservableValue.new(ChromeService.MenuStatus.Closed)
		end
	end

	return utils.ObservableValue.new(ChromeService.MenuStatus.Open)
end

-- store that unibar was interacted with after anything activated
function ChromeService:storeChromeInteracted()
	if GetFFlagEnableUnibarSneakPeak() and LocalStore.isEnabled() then
		LocalStore.storeForLocalPlayer(CHROME_INTERACTED_KEY, true)
	end
end

-- store how many times the unibar has now been seen up to the max
function ChromeService:storeChromeSeen()
	if GetFFlagEnableUnibarMaxDefaultOpen() and LocalStore.isEnabled() and self._chromeSeenCount + 1 < math.huge then
		LocalStore.storeForLocalPlayer(CHROME_SEEN_COUNT_KEY, self._chromeSeenCount + 1)
	end
end

function ChromeService:updateScreenSize(screenSize: Vector2, isMobileDevice: boolean)
	-- Upon screen viewport resize:

	-- 1) Configured the number of most recently used slots

	local isPortrait = screenSize.Y > screenSize.X
	local smallPortraitLimitPx = 375
	local isTinyPortrait = isPortrait and screenSize.X < smallPortraitLimitPx

	local mostRecentlyUsedSlots = 0

	if isMobileDevice then
		if isTinyPortrait then
			mostRecentlyUsedSlots = 0
		elseif isPortrait then
			mostRecentlyUsedSlots = 1
		else
			mostRecentlyUsedSlots = 2
		end
	else
		mostRecentlyUsedSlots = 4
	end

	-- 2) Repopulate most recently list if the slot count changes

	if mostRecentlyUsedSlots ~= self._mostRecentlyUsedLimit then
		-- only run if slot count changes; limit updates

		self._mostRecentlyUsedLimit = mostRecentlyUsedSlots
		table.clear(self._mostRecentlyUsed)

		local i = #self._mostRecentlyUsedFullRecord
		if i > 0 then
			-- slice a subset of the full record to repopulate slots
			table.move(
				self._mostRecentlyUsedFullRecord, -- src
				math.max(1, i - mostRecentlyUsedSlots + 1), -- src start index
				i, -- src end index
				1, -- dst insert index
				self._mostRecentlyUsed -- dst
			)
		end

		self:updateMenuList()
		self:updateNotificationTotals()
	end

	-- 3) Update window size signals
	self:updateWindowSizeSignals()
end

function ChromeService:updateWindowSizeSignals()
	for i, v in self._integrations do
		if v.windowSize then
			v.windowSize:updateConstraints()
		end
	end
end

function ChromeService:triggerNotificationIndicator(id: Types.IntegrationId)
	local menuStatus: ObservableMenuStatus = self._status
	if menuStatus:get() ~= ChromeService.MenuStatus.Closed then
		-- Early out if the menu isn't closed.  We only need to show this in the closed state.
		return
	end

	local notification = self._integrations[id].notification:get()
	if notification.type == "count" then
		local count: number = notification.value :: any
		-- Only run if the count is non zero.
		-- triggerNotificationIndicator will also run when notications get cleared
		if count > 0 then
			local now = tick()
			local timeSinceLastDisplay = (now - self._lastDisplayedNotificationTick)
			self._lastDisplayedNotificationTick = now

			if
				self._lastDisplayedNotificationId == id
				and timeSinceLastDisplay < NOTIFICATION_INDICATOR_IDLE_COOLDOWN_TIME_SEC
			then
				-- Early exit if within a cooloff period.
				-- We don't need to keep flashing the same icon.
				return
			end

			self._lastDisplayedNotificationId = id
			self._notificationIndicator:setMomentary(
				self:createIconProps(id, 0, false),
				NOTIFICATION_INDICATOR_DISPLAY_TIME_SEC
			)
		end
	end
end

function ChromeService:notificationIndicator()
	return self._notificationIndicator
end

function ChromeService:toggleSubMenu(subMenuId: Types.IntegrationId)
	if self._status:get() == ChromeService.MenuStatus.Closed then
		warn("Can't toggleSubMenu while menu is closed")
		return
	end

	if not self._subMenuConfig[subMenuId] then
		warn("Not a valid subMenuId:" .. subMenuId)
		return
	end

	if self._currentSubMenu:get() == subMenuId then
		-- if same ID, toggle close menu
		self._currentSubMenu:set(nil :: string?)
	else
		-- otherwise open the menu
		self._currentSubMenu:set(subMenuId)
	end
end

function ChromeService:currentSubMenu()
	return self._currentSubMenu
end

function ChromeService:toggleOpen()
	local menuStatus: ObservableMenuStatus = self._status
	local subMenu: ObservableSubMenu = self._currentSubMenu

	if GetFFlagEnableUnibarSneakPeak() then
		if menuStatus:get() == ChromeService.MenuStatus.Closed then
			self:open()
		else
			self:close()
		end
	else
		if menuStatus:get() == ChromeService.MenuStatus.Closed then
			menuStatus:set(ChromeService.MenuStatus.Open)
			self._lastDisplayedNotificationId = ""
			self._notificationIndicator:set(nil)
			self._lastInputToOpenMenu = UserInputService:GetLastInputType()
		else
			self._selectedItem:set(nil)
			-- close any current submenu
			subMenu:set(nil)
			menuStatus:set(ChromeService.MenuStatus.Closed)
			self._lastInputToOpenMenu = Enum.UserInputType.None
		end
	end
end

function ChromeService:open()
	local menuStatus: ObservableMenuStatus = self._status

	if menuStatus:get() == ChromeService.MenuStatus.Closed then
		menuStatus:set(ChromeService.MenuStatus.Open)
		self._lastDisplayedNotificationId = ""
		self._notificationIndicator:set(nil)
		self._lastInputToOpenMenu = UserInputService:GetLastInputType()
	end
end

function ChromeService:close()
	local menuStatus: ObservableMenuStatus = self._status
	local subMenu: ObservableSubMenu = self._currentSubMenu

	if menuStatus:get() == ChromeService.MenuStatus.Open then
		self._selectedItem:set(nil)
		-- close any current submenu
		subMenu:set(nil)
		menuStatus:set(ChromeService.MenuStatus.Closed)
		self._lastInputToOpenMenu = Enum.UserInputType.None
	end
end

function ChromeService:getLastInputToOpenMenu()
	return self._lastInputToOpenMenu
end

function ChromeService:toggleWindow(componentId: Types.IntegrationId)
	local window = self._integrations[componentId].components.Window
	if window then
		if
			not self._integrationsStatus[componentId]
			or self._integrationsStatus[componentId] == ChromeService.IntegrationStatus.None
			or self._integrationsStatus[componentId] == ChromeService.IntegrationStatus.Icon
		then
			self._integrationsStatus[componentId] = ChromeService.IntegrationStatus.Window
		else
			self._integrationsStatus[componentId] = ChromeService.IntegrationStatus.Icon
		end
		self._onIntegrationStatusChanged:fire(componentId, self._integrationsStatus[componentId])
	end

	self:updateMenuList()
end

function ChromeService:isWindowOpen(componentId: Types.IntegrationId)
	local window = self._integrations[componentId].components.Window
	return window and self._integrationsStatus[componentId] == ChromeService.IntegrationStatus.Window
end

function ChromeService:status()
	return self._status
end

function ChromeService:menuList()
	return self._menuList
end

function ChromeService:windowList()
	return self._windowList
end

function ChromeService:dragConnection(componentId: Types.IntegrationId)
	if self._integrations[componentId] then
		return self._dragConnection[componentId]
	else
		return nil
	end
end

function ChromeService:updateLocalization(component: Types.IntegrationRegisterProps)
	local localizedLabel: string = ""
	local localizedSecondaryAction: string = ""
	self._localizedLabelKeys[component.id] = {}

	--Store and override original localization keys
	--Localized the string and assign back to component

	-- Localize integration label
	self._localizedLabelKeys[component.id].label = component.label
	localizedLabel = component.label
	local success, err = pcall(function()
		localizedLabel = self._localization:Format(localizedLabel)
	end)
	if not success then
		localizedLabel = component.label
		warn(err)
	end

	component.label = localizedLabel

	-- Localize integration secondaryAction label
	if component.secondaryAction then
		self._localizedLabelKeys[component.id].secondaryActionLabel = component.secondaryAction.label
		localizedSecondaryAction = component.secondaryAction.label
		local secondaryActionSuccess, secondaryActionErr = pcall(function()
			localizedSecondaryAction = self._localization:Format(localizedSecondaryAction)
		end)
		if not secondaryActionSuccess then
			localizedSecondaryAction = component.secondaryAction.label
			warn(secondaryActionErr)
		end
		component.secondaryAction.label = localizedSecondaryAction
	end

	return component :: Types.IntegrationRegisterProps
end

-- Register an integration to be shown within Chrome UIs
-- The Chrome service will monitor any changes to integration availability and notifications
function ChromeService:register(component: Types.IntegrationRegisterProps): Types.IntegrationProps
	if self._integrations[component.id] then
		warn(string.format(component.id .. "already registered", debug.traceback()))
		for _, conn in self._integrationsConnections[component.id] do
			conn:disconnect()
		end
	end

	self._integrationsConnections[component.id] = {}
	local conns = self._integrationsConnections[component.id]

	if component.initialAvailability == nil then
		component.initialAvailability = ChromeService.AvailabilitySignal.Unavailable
	end

	if component.availability == nil then
		component.availability =
			AvailabilitySignal.new(component.initialAvailability or ChromeService.AvailabilitySignal.Unavailable)
	end

	if component.notification == nil then
		component.notification = NotifySignal.new()
	end

	if component.components == nil then
		component.components = {}
	end

	if component.availability then
		conns[#conns + 1] = component.availability:connect(function()
			self:availabilityChanged(component :: Types.IntegrationProps)
		end)
	end

	if component.notification and not component.notification:excludeFromTotalCounts() then
		conns[#conns + 1] = component.notification:connect(function()
			self:triggerNotificationIndicator(component.id)
			self:updateNotificationTotals()
		end)
	end

	-- Add a windowSize signal for integrations with windows if missing
	if component.windowSize == nil and component.components and component.components.Window then
		component.windowSize = WindowSizeSignal.new()
	end

	component = self:updateLocalization(component)

	local populatedComponent = component :: Types.IntegrationProps
	self._integrations[component.id] = populatedComponent

	return populatedComponent
end

function ChromeService:createIconProps(
	id: Types.IntegrationId,
	order: number?,
	recentlyUsedItem: boolean?
): Types.IntegrationComponentProps
	local iconOrder = order or 0
	if self._integrations[id] then
		return {
			id = id,
			children = {},
			order = iconOrder,
			component = self._integrations[id].components.Icon,
			integration = self._integrations[id],
			isDivider = false,
			recentlyUsedItem = recentlyUsedItem or false,
			activated = function()
				self:activate(id)
			end,
		}
	else
		return {
			id = id,
			children = {},
			order = iconOrder,
			activated = noop,
			integration = DummyIntegration,
		}
	end
end

-- Convert the menuConfig into view-model data for the unibar
-- This incluses adding dividers between groups and child submenus
function ChromeService:updateMenuList()
	local divId = 0 -- Unique ID for divider elements
	local order = 0 -- A general order that items are adding to the menu. Can be used to control LayoutOrder

	local function iconProps(id, recentlyUsedItem: boolean?): Types.IntegrationComponentProps
		order += 1
		return self:createIconProps(id, order, recentlyUsedItem)
	end

	local function windowProps(id): Types.IntegrationComponentProps
		order += 1
		if self._integrations[id] then
			return {
				id = id,
				children = {},
				order = order,
				component = self._integrations[id].components.Window,
				activated = noop,
				integration = self._integrations[id],
			}
		else
			return {
				id = id,
				children = {},
				order = order,
				activated = noop,
				integration = DummyIntegration,
			}
		end
	end

	local function divider(id): Types.IntegrationComponentProps
		divId += 1
		order += 1
		return {
			id = "DIV" .. divId,
			order = order,
			isDivider = true,
			children = {},
			activated = noop,
			integration = DummyIntegration,
		}
	end

	local function valid(id: Types.IntegrationId)
		-- Only display available items
		local integration = self._integrations[id]
		if integration then
			local availability = integration.availability
			return availability and availability:get() ~= ChromeService.AvailabilitySignal.Unavailable
		else
			return false
		end
	end

	local function collectMenu(
		items: Types.MenuConfig | Types.MenuList | Types.IntegrationIdList,
		parent: any,
		windowList: Types.WindowList,
		recentlyUsedItem: boolean?
	)
		local validIconCount = 0
		for k, v in pairs(items) do
			if v == ChromeService.Key.MostRecentlyUsed then
				-- If MostRecentlyUsed special key, substitute for the MostRecentlyUsed array
				collectMenu(self._mostRecentlyUsed, parent, windowList)
			elseif type(v) == "table" then
				-- A list (non-string item) is a group of items that require visual dividers to bookend
				if not #parent.children then
					table.insert(parent.children, divider(divId))
				end
				if collectMenu(v, parent, windowList) > 0 then
					table.insert(parent.children, divider(divId))
				end
			else
				if typeof(v) ~= "string" then
					error(`Only tables or strings should be passed into the items list, received {v} (at key {k})`)
				end

				if self._subMenuConfig[v] then
					-- This item has a sub-menu configured, populate the children
					if valid(v) then
						local child = iconProps(v, recentlyUsedItem)
						validIconCount += 1
						collectMenu(self._subMenuConfig[v], child, windowList)
						if #child.children > 0 then
							table.insert(parent.children, child)
						end
					end
				else
					-- Standard item addition, check for valid and add depending on integration type
					if valid(v) then
						local isWindowOpen = self:isWindowOpen(v)
						if isWindowOpen then
							table.insert(windowList, windowProps(v))
						else
							table.insert(parent.children, iconProps(v))
							validIconCount += 1
						end
					end
				end
			end
		end
		return validIconCount
	end

	local root = { children = {} }
	local windowList = {}
	-- recursively collectMenu
	collectMenu(self._menuConfig, root, windowList)

	-- Remove dangling dividers
	if #root.children and root.children[#root.children] and root.children[#root.children].isDivider then
		table.remove(root.children, #root.children)
	end

	-- todo: nice to have optimization, only update if we fail an equality check
	self._menuList:set(root.children)
	self._windowList:set(windowList)
	self:repairSelected()
end

function ChromeService:availabilityChanged(component: Types.IntegrationProps)
	self:updateNotificationTotals()
	self:updateMenuList()
end

function ChromeService:subMenuNotifications(subMenuId: Types.IntegrationId)
	if not self._subMenuNotifications[subMenuId] then
		self._subMenuNotifications[subMenuId] = NotifySignal.new(true)
	end
	return self._subMenuNotifications[subMenuId]
end

function ChromeService:totalNotifications()
	return self._totalNotifications
end

function ChromeService:onIntegrationRegistered()
	return self._onIntegrationRegistered
end

function ChromeService:onIntegrationActivated()
	return self._onIntegrationActivated
end

function ChromeService:onIntegrationStatusChanged()
	return self._onIntegrationStatusChanged
end

function ChromeService:integrations()
	return self._integrations
end

function ChromeService:mostRecentlyUsed()
	return self._mostRecentlyUsed
end

function ChromeService:updateNotificationTotals()
	local total = 0
	for i, v in self._integrations do
		if
			v.availability:get() ~= ChromeService.AvailabilitySignal.Unavailable
			and v.availability:get() ~= ChromeService.AvailabilitySignal.Pinned
			and not v.notification:excludeFromTotalCounts()
		then
			local notification = v.notification:get()
			if notification and notification.type == "count" then
				assert(typeof(notification.value) == "number", "Expected count value to be number")
				total += notification.value :: any
			end
		end
	end
	self._totalNotifications:fireCount(total)

	-- tally submenu notifications
	for id, subTotalNotification in self._subMenuNotifications do
		local submenu = self:withinCurrentTopLevelMenu(id)
		total = 0

		if submenu then
			for i, child in submenu.children do
				-- skip if featured in top level menu
				local withinCurrentTopLevelMenu = self:withinCurrentTopLevelMenu(child.id)

				if
					not withinCurrentTopLevelMenu
					and child.integration.availability:get() ~= ChromeService.AvailabilitySignal.Unavailable
					and not child.integration.notification:excludeFromTotalCounts()
				then
					local notification = child.integration.notification:get()
					if notification and notification.type == "count" then
						assert(typeof(notification.value) == "number", "Expected count value to be number")
						total += notification.value :: any
					end
				end
			end
			subTotalNotification:fireCount(total)
		end
	end
end

function ChromeService:configureReset()
	self._menuConfig = {}
	self._subMenuConfig = {}
	self._subMenuNotifications = {}
	self:updateMenuList()
end

function ChromeService:configureMenu(menuConfig: Types.MenuConfig)
	self._menuConfig = menuConfig
	self:updateNotificationTotals()
	self:updateMenuList()
end

function ChromeService:configureSubMenu(parent: Types.IntegrationId, menuConfig: Types.IntegrationIdList)
	self._subMenuConfig[parent] = menuConfig
	if not self._subMenuNotifications[parent] then
		self._subMenuNotifications[parent] = NotifySignal.new(true)
	end
	self:updateNotificationTotals()
	self:updateMenuList()
end

function ChromeService:gesture(
	componentId: Types.IntegrationId,
	connection: { current: RBXScriptConnection? }?,
	inputObject: InputObject?
)
	if GetFFlagSelfViewMultiTouchFix() then
		if self._integrations[componentId] then
			self._dragConnection[componentId] = {
				connection = connection,
				inputObject = inputObject,
			}
		end
	else
		if self._integrations[componentId] then
			self._dragConnection[componentId] = connection
		end
	end
end

function ChromeService:withinCurrentTopLevelMenu(componentId: Types.IntegrationId)
	local menuItems = self._menuList:get()
	for i, item in menuItems do
		if item.id == componentId then
			return item, i
		end
	end
	return nil, 0
end

function ChromeService:withinCurrentSubmenu(componentId: Types.IntegrationId)
	local currentSubMenu = self._currentSubMenu:get()
	if not currentSubMenu then
		return false
	end

	local menuItems = self._menuList:get()

	local subMenuItems
	for i, item in menuItems do
		if item.id == currentSubMenu then
			subMenuItems = item.children
			break
		end
	end

	if not subMenuItems then
		return false
	end

	for i, item in subMenuItems do
		if item.id == componentId then
			return true
		end
	end

	return false
end

function ChromeService:isMostRecentlyUsed(componentId: Types.IntegrationId)
	return table.find(self._mostRecentlyUsed, componentId) ~= nil
end

function ChromeService:setRecentlyUsed(componentId: Types.IntegrationId, force: boolean?)
	if force or (self:withinCurrentSubmenu(componentId) and not self:isMostRecentlyUsed(componentId)) then
		table.insert(self._mostRecentlyUsed, componentId)
		while self._mostRecentlyUsedLimit >= 0 and #self._mostRecentlyUsed > self._mostRecentlyUsedLimit do
			table.remove(self._mostRecentlyUsed, 1)
		end
		self:updateMenuList()
		self:updateNotificationTotals()

		-- In addition to updating the current slots, we also need to update the full (unbounded) record
		-- This is used to repopulate slots if the number of slots grows or shrinks
		local idx = table.find(self._mostRecentlyUsedFullRecord, componentId)
		if idx then
			table.remove(self._mostRecentlyUsedFullRecord, idx)
		end
		table.insert(self._mostRecentlyUsedFullRecord, componentId)
	end
end

function ChromeService:windowPosition(componentId: Types.IntegrationId)
	return self._windowPositions[componentId]
end

function ChromeService:updateWindowPosition(componentId: Types.IntegrationId, position: UDim2)
	self._windowPositions[componentId] = position
end

function ChromeService:activate(componentId: Types.IntegrationId)
	local errorMessage
	-- todo: Consider if we need to auto-close the sub-menus when items are selected
	if self._integrations[componentId] then
		local toggledSubmenu = false
		local lastInput = UserInputService:GetLastInputType()
		-- todo: accommodate VR laser pointer clicks
		local pressed = lastInput == Enum.UserInputType.MouseButton1 or lastInput == Enum.UserInputType.Touch

		--is part of current sub-menu
		self:setRecentlyUsed(componentId)

		local integrationActivated = self._integrations[componentId].activated
		self._onIntegrationActivated:fire(componentId)

		if GetFFlagEnableUnibarSneakPeak() then
			self:storeChromeInteracted()
		end

		if integrationActivated then
			-- override default

			local success, err = pcall(function()
				integrationActivated(self._integrations[componentId])
			end)
			if not success then
				warn("ChromeService: activate error thrown for " .. componentId)
				errorMessage = err
			end
		else
			-- run default behavior
			if self._subMenuConfig[componentId] then
				self:toggleSubMenu(componentId)
				toggledSubmenu = true
			end
			self:toggleWindow(componentId)
		end

		if self._currentSubMenu:get() ~= componentId then
			self._currentSubMenu:set(nil)
		end

		if GetFFlagEnableUnibarSneakPeak() and not pressed and not toggledSubmenu then
			self:close()
		elseif
			not GetFFlagEnableUnibarSneakPeak()
			and not pressed
			and not toggledSubmenu
			and self._status:get() == ChromeService.MenuStatus.Open
		then
			self:toggleOpen()
		end
	end
	if errorMessage then
		-- defer until end of function
		error(errorMessage)
	end
end

function ChromeService:selectedItem()
	return self._selectedItem
end

function ChromeService:setSelected(componentId: Types.IntegrationId?)
	local item, idx = self:withinCurrentTopLevelMenu(componentId or "")
	if not item then
		return
	end

	local lastInput = UserInputService:GetLastInputType()
	local pressed = lastInput == Enum.UserInputType.MouseButton1 or lastInput == Enum.UserInputType.Touch

	local currentSubmenu = self._currentSubMenu:get()
	if currentSubmenu and currentSubmenu ~= componentId and not pressed then
		self:toggleSubMenu(currentSubmenu)
	end

	self._selectedItemIdx = idx
	self._selectedItem:set(componentId)
end

function ChromeService:setSelectedByOffset(offset: number)
	local menuItems = self._menuList:get()
	local _, idx = self:withinCurrentTopLevelMenu(self._selectedItem:get() or "")
	if idx > 0 then
		idx = math.clamp(idx + offset, 1, #menuItems)
		self:setSelected(menuItems[idx].id)
	end
end

-- As icons are added and removed, ensure we never have an orphan selected state
function ChromeService:repairSelected()
	local selected = self._selectedItem:get()
	if selected then
		-- is selected item still within our set
		local _, idx = self:withinCurrentTopLevelMenu(self._selectedItem:get() or "")
		if idx == 0 then
			-- if not, use the last known selected index
			idx = self._selectedItemIdx
		end
		local menuItems = self._menuList:get()
		idx = math.clamp(idx, 1, #menuItems)
		self:setSelected(menuItems[idx].id)
	end
end

return ChromeService
