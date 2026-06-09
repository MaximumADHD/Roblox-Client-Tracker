local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local UserInputService = game:GetService("UserInputService")
local GamepadService = game:GetService("GamepadService")
local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)
local reverse = LuauPolyfill.Array.reverse

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)

local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local Signal = SignalLib.Signal
local FocusUtils = ChromePackage.FocusUtils
local FocusOnChromeSignal = FocusUtils.FocusOnChromeSignal
local FocusOffChromeSignal = FocusUtils.FocusOffChromeSignal
local utils = require(Root.Service.ChromeUtils)
local LocalStore = require(Root.Service.LocalStore)
local ViewportUtil = require(Root.Service.ViewportUtil)
local WindowSizeSignal = require(Root.Service.WindowSizeSignal)
local ObservableValue = utils.ObservableValue
local NotifySignal = utils.NotifySignal
local AvailabilitySignal = utils.AvailabilitySignal
local Constants = require(Root.Unibar.Constants)
local ShortcutService = require(Root.Service.ShortcutService)

local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local FFlagIntegrationsChromeShortcutTelemetry = require(Root.Parent.Flags.FFlagIntegrationsChromeShortcutTelemetry)
local FFlagChromeDeprecateMRUs = game:DefineFastFlag("ChromeDeprecateMRUs", false)
local FFlagEnableSideSheet = SharedFlags.FFlagEnableSideSheet
local FFlagAddIGMToSideSheet = SharedFlags.FFlagAddIGMToSideSheet
local FIntSideSheetVariant = SharedFlags.FIntSideSheetVariant
local FFlagEnableChromeWindowsNotInMenu = require(Root.Flags).FFlagEnableChromeWindowsNotInMenu

local FFlagReverseUnibar = require(script.Parent.Parent.Parent.Flags.FFlagReverseUnibar)

local CHROME_INTERACTED_KEY = "ChromeInteracted3"
local CHROME_WINDOW_POSITION_KEY = "ChromeWindowPosition"
local CHROME_WINDOW_STATE_KEY = "ChromeWindowStatus"

local toggleSideSheet
local getSideSheetVisibility
local registerSideSheetIntegrations
local InExperienceSideSheet = require(CorePackages.Workspace.Packages.InExperienceSideSheet)
toggleSideSheet = InExperienceSideSheet.toggleSideSheet
getSideSheetVisibility = InExperienceSideSheet.getSideSheetVisibility
registerSideSheetIntegrations = InExperienceSideSheet.registerSideSheetIntegrations

type ActivateProps = ChromePackage.ActivateProps
type IntegrationComponentProps = ChromePackage.IntegrationComponentProps
type IntegrationId = ChromePackage.IntegrationId
type IntegrationIdList = ChromePackage.IntegrationIdList
type IntegrationList = ChromePackage.IntegrationList
type IntegrationProps = ChromePackage.IntegrationProps
type IntegrationRegisterProps = ChromePackage.IntegrationRegisterProps
type MenuConfig = ChromePackage.MenuConfig
type MenuList = ChromePackage.MenuList
type ShortcutBarId = ChromePackage.ShortcutBarId
type ShortcutBarItems = ChromePackage.ShortcutBarItems
type ShortcutBarProps = ChromePackage.ShortcutBarProps
type ShortcutId = ChromePackage.ShortcutId
type ShortcutOverrideId = ChromePackage.ShortcutOverrideId
type ShortcutRegisterProps = ChromePackage.ShortcutRegisterProps
type WindowList = ChromePackage.WindowList

-- todo: Consider how ChromeService could support multiple UI at the same time, not only the Unibar
--       Does there need to be another layer "IntegrationsService" that ChromeService can pull from?

local ChromeService = {} :: ChromeService
ChromeService.__index = ChromeService

ChromeService.AvailabilitySignal = utils.AvailabilitySignalState
ChromeService.IntegrationStatus = { None = 0, Icon = 1, Window = 2 }

export type UnibarLayoutInfo = Rect

export type ObservableSubMenu = utils.ObservableValue<string?>
export type ObservableMenuList = utils.ObservableValue<MenuList>
export type ObservableIntegration = utils.ObservableValue<IntegrationComponentProps | nil>
export type ObservableIntegrationList = utils.ObservableValue<IntegrationList>
export type ObservableIntegrationId = utils.ObservableValue<string?>
export type ObservableMenuLayout = utils.ObservableValue<UnibarLayoutInfo>
export type ObservableInFocusNav = utils.ObservableValue<boolean>
export type ObservableShowTopBar = utils.ObservableValue<boolean>

export type ObservableWindowList = utils.ObservableValue<WindowList>

export type ObservableShortcutBar = utils.ObservableValue<ShortcutBarId?>

export type ObservableDragConnection = utils.ObservableValue<{ current: RBXScriptConnection? }?>
type DragConnectionObjectType = any
export type ObservableAlignment = utils.ObservableValue<Enum.HorizontalAlignment>

function noop() end

export type ChromeService = {
	__index: ChromeService,

	Key: { [string]: string },
	IntegrationStatus: { [string]: number },
	AvailabilitySignal: { [string]: number },

	new: () -> ChromeService,
	toggleSubMenu: (ChromeService, subMenuId: IntegrationId) -> (),
	currentSubMenu: (ChromeService) -> ObservableSubMenu,
	showTopBar: (ChromeService) -> boolean,
	getTopBarVisibiity: (ChromeService) -> ObservableShowTopBar,
	connectTopBarVisibility: (ChromeService, topBarVisibilityObservable: ObservableShowTopBar) -> (),
	getLastInputToOpenMenu: (ChromeService) -> Enum.UserInputType,
	inFocusNav: (ChromeService) -> ObservableInFocusNav,
	enableFocusNav: (ChromeService) -> (),
	disableFocusNav: (ChromeService) -> (),
	layout: (ChromeService) -> ObservableMenuLayout,
	setMenuAbsolutePosition: (ChromeService, position: Vector2) -> (),
	setMenuAbsoluteSize: (ChromeService, open: Vector2) -> (),
	menuList: (ChromeService) -> ObservableMenuList,
	windowList: (ChromeService) -> ObservableWindowList,
	updateLocalization: (ChromeService, component: IntegrationRegisterProps) -> IntegrationRegisterProps,
	dragConnection: (ChromeService, componentId: IntegrationId) -> { current: RBXScriptConnection? }?,
	register: (ChromeService, IntegrationRegisterProps) -> IntegrationProps,
	updateMenuList: (ChromeService) -> (),
	updateSideSheet: (ChromeService) -> (),
	isIntegrationValid: (ChromeService, IntegrationId) -> boolean,
	availabilityChanged: (ChromeService, IntegrationProps) -> (),
	subMenuNotifications: (ChromeService, subMenuId: IntegrationId) -> utils.NotifySignal,
	totalNotifications: (ChromeService) -> utils.NotifySignal,
	notificationIndicator: (ChromeService) -> ObservableIntegration,
	updateNotificationTotals: (ChromeService) -> (),
	configureMenu: (ChromeService, menuConfig: MenuConfig) -> (),
	configureSubMenu: (ChromeService, parent: IntegrationId, menuConfig: IntegrationIdList) -> (),
	gesture: (
		ChromeService,
		componentId: IntegrationId,
		connection: { current: RBXScriptConnection? }?,
		inputObject: InputObject?
	) -> (),
	withinCurrentTopLevelMenu: (ChromeService, componentId: IntegrationId) -> (IntegrationComponentProps?, number),
	withinCurrentSubmenu: (ChromeService, componentId: IntegrationId) -> boolean,
	withinOpenSideSheet: (ChromeService, componentId: IntegrationId) -> boolean,
	storeChromeInteracted: (ChromeService) -> (),
	activate: (ChromeService, componentId: IntegrationId, props: ActivateProps?) -> (),
	toggleWindow: (ChromeService, componentId: IntegrationId) -> (),
	isWindowOpen: (ChromeService, componentId: IntegrationId) -> boolean,
	updateWindowSizeSignals: (ChromeService) -> (),
	getWindowStatusFromStore: (ChromeService, componentId: IntegrationId) -> boolean?,
	getWindowPositionFromStore: (ChromeService, componentId: IntegrationId) -> UDim2?,
	windowPosition: (ChromeService, componentId: IntegrationId) -> UDim2?,
	updateScreenSize: (
		ChromeService,
		screenSize: Vector2,
		isMobileDevice: boolean,
		isPortrait: boolean,
		isTinyPortrait: boolean
	) -> (),
	updateWindowPosition: (ChromeService, componentId: IntegrationId, position: UDim2) -> (),
	createIconProps: (ChromeService, IntegrationId, number?, boolean?) -> IntegrationComponentProps,
	orderAlignment: (ChromeService) -> ObservableAlignment,
	configureOrderAlignment: (ChromeService, alignment: Enum.HorizontalAlignment) -> (),

	registerShortcut: (ChromeService, shortcutProps: ShortcutRegisterProps) -> (),
	activateShortcut: (ChromeService, shortcutId: ShortcutId) -> (),
	configureShortcutBar: (ChromeService, shortcutBarId: ShortcutBarId, config: ShortcutBarProps) -> (),
	setShortcutBar: (ChromeService, shortcutBarId: ShortcutBarId?) -> (),
	getCurrentShortcutBar: (ChromeService) -> ObservableShortcutBar,
	getShortcutsFromBar: (ChromeService, shortcutBarId: ShortcutBarId?) -> ShortcutBarItems,
	getCurrentShortcuts: (ChromeService) -> ShortcutBarItems,
	onShortcutBarChanged: (ChromeService) -> SignalLib.Signal,
	setHideShortcutBar: (ChromeService, sourceName: ShortcutOverrideId, hidden: boolean?) -> (),
	getHideShortcutBar: (ChromeService) -> boolean,

	_currentShortcutBar: ObservableShortcutBar,
	_shortcutService: ShortcutService.ShortcutService,

	selectMenuIcon: (ChromeService) -> (),
	onTriggerMenuIcon: (ChromeService) -> SignalLib.Signal,
	onTriggerVRToggleButton: (ChromeService) -> SignalLib.Signal,

	onIntegrationRegistered: (ChromeService) -> SignalLib.Signal,
	onIntegrationActivated: (ChromeService) -> SignalLib.Signal,
	onIntegrationStatusChanged: (ChromeService) -> SignalLib.Signal,
	onIntegrationHovered: (ChromeService) -> SignalLib.Signal,
	integrations: (ChromeService) -> IntegrationList,

	setSelected: (ChromeService, IntegrationId?) -> (),
	selectedItem: (ChromeService, IntegrationId?) -> ObservableIntegrationId,
	repairSelected: (ChromeService) -> (),
	setSelectedByOffset: (ChromeService, number) -> (),

	_layout: ObservableMenuLayout,
	_menuAbsolutePosition: Vector2,
	_menuAbsoluteSizeOpen: Vector2,
	_currentSubMenu: ObservableSubMenu,
	_topBarVisibility: ObservableShowTopBar,

	_integrations: IntegrationList,
	_integrationsConnections: { [IntegrationId]: { SignalLib.SignalHandle } },
	_integrationsStatus: { [IntegrationId]: number },
	_menuConfig: MenuConfig,
	_subMenuConfig: { [IntegrationId]: IntegrationIdList },
	_subMenuNotifications: { [IntegrationId]: utils.NotifySignal },
	_menuList: ObservableMenuList,
	_dragConnection: { [IntegrationId]: DragConnectionObjectType },
	_windowPositions: { [IntegrationId]: UDim2? },
	_windowList: ObservableWindowList,
	_totalNotifications: utils.NotifySignal,
	_mostRecentlyUsedAndPinnedLimit: number,
	_notificationIndicator: ObservableIntegration,

	_onIntegrationRegistered: SignalLib.Signal,
	_onIntegrationActivated: SignalLib.Signal,
	_onIntegrationStatusChanged: SignalLib.Signal,
	_onIntegrationHovered: SignalLib.Signal,

	_triggerMenuIcon: SignalLib.Signal,
	_triggerVRToggleButton: SignalLib.Signal,

	_localization: any,
	_localizedLabelKeys: {
		[IntegrationId]: { label: string?, secondaryActionLabel: string? },
	},
	_selectedItem: ObservableIntegrationId,
	_selectedItemIdx: number,
	_orderAlignment: ObservableAlignment,
	_inFocusNav: ObservableInFocusNav,
}

local DummyIntegration = {
	id = "div",
	label = "div",
	initialAvailability = ChromeService.AvailabilitySignal.Unavailable,
	availability = AvailabilitySignal.new(ChromeService.AvailabilitySignal.Unavailable),
	notification = NotifySignal.new(),
	components = {},
	hideNotificationCountWhileOpen = false,
	sideSheetPlacement = if FFlagEnableSideSheet then SideSheetPlacement.None else nil :: never,
}

function createUnibarLayoutInfo(position: Vector2, openSize: Vector2): UnibarLayoutInfo
	return Rect.new(position, (position + openSize))
end

function ChromeService.new(): ChromeService
	local localeId = LocalizationService.RobloxLocaleId
	local self = {}
	self._shortcutService = if FFlagEnableConsoleExpControls then ShortcutService.new() else nil :: never

	self._layout = utils.ObservableValue.new(createUnibarLayoutInfo(Vector2.zero, Vector2.zero))
	self._menuAbsolutePosition = Vector2.zero
	self._menuAbsoluteSizeOpen = Vector2.zero
	self._currentSubMenu = utils.ObservableValue.new(nil)
	self._selectedItem = utils.ObservableValue.new(nil)
	self._selectedItemIdx = 0
	self._integrations = {} :: IntegrationList
	self._integrationsConnections = {}
	self._integrationsStatus = {} -- Icon/Window
	self._menuConfig = {} :: MenuConfig
	self._subMenuConfig = {}
	self._subMenuNotifications = {}
	self._menuList = ObservableValue.new({})
	self._windowList = ObservableValue.new({})
	self._dragConnection = {}
	self._windowPositions = ObservableValue.new({})
	self._totalNotifications = NotifySignal.new(true)
	self._mostRecentlyUsedAndPinnedLimit = -1
	self._localization = Localization.new(localeId)
	self._localizedLabelKeys = {}
	self._currentShortcutBar = ObservableValue.new(nil)

	self._notificationIndicator = ObservableValue.new(nil)
	self._orderAlignment = ObservableValue.new(Enum.HorizontalAlignment.Left)

	self._onIntegrationRegistered = Signal.new()
	self._onIntegrationActivated = Signal.new()
	self._onIntegrationStatusChanged = Signal.new()
	self._onIntegrationHovered = Signal.new()
	self._triggerMenuIcon = Signal.new()
	self._triggerVRToggleButton = if isInExperienceUIVREnabled then Signal.new() else nil :: never
	self._topBarVisibility = if isInExperienceUIVREnabled then ObservableValue.new(nil) else nil :: never

	self._inFocusNav = ObservableValue.new(false)

	local service = (setmetatable(self, ChromeService) :: any) :: ChromeService

	-- todo: Consider moving this outside of ChromeService to reduce dependency on Roblox instances
	ViewportUtil.viewport:connect(function(viewportInfo: ViewportUtil.ViewportInfo)
		if FFlagChromeDeprecateMRUs then
			service:updateWindowSizeSignals()
		else
			service:updateScreenSize(
				viewportInfo.size,
				viewportInfo.isMobileDevice,
				viewportInfo.portraitOrientation,
				viewportInfo.tinyPortrait
			)
		end
	end, true)

	if FFlagEnableConsoleExpControls then
		self._shortcutService.onShortcutBarChanged:connect(function(shortcutBarId: ShortcutBarId)
			service._currentShortcutBar:set(shortcutBarId)
		end)
	end
	FocusOnChromeSignal:connect(function(integrationIdToFocus: IntegrationId?)
		-- initial focus on submenu integration not supported
		if integrationIdToFocus and not self._subMenuConfig["nine_dot"][integrationIdToFocus] then
			service:setSelected(integrationIdToFocus)
		end
		service:enableFocusNav()
	end)
	FocusOffChromeSignal:connect(function()
		service:disableFocusNav()
		if FFlagEnableConsoleExpControls then
			service:setShortcutBar(nil)
		end
	end)

	return service
end

-- TODO APPEXP-1879: Flag off this function, as CHROME_INTERACTED_KEY is no longer read
-- store that unibar was interacted with after anything activated
function ChromeService:storeChromeInteracted()
	if LocalStore.isEnabled() then
		LocalStore.storeForLocalPlayer(CHROME_INTERACTED_KEY, true)
	end
end

function ChromeService:updateScreenSize(
	screenSize: Vector2,
	isMobileDevice: boolean,
	isPortrait: boolean,
	isTinyPortrait: boolean
)
	-- Upon screen viewport resize:

	-- 1) Configured the number of most recently used slots
	local mostRecentlyUsedAndPinnedSlots = 0

	if isMobileDevice then
		if isTinyPortrait then
			mostRecentlyUsedAndPinnedSlots = Constants.MOBILE_TINY_PORTRAIT_SLOTS - Constants.CORE_SLOTS
		elseif isPortrait then
			mostRecentlyUsedAndPinnedSlots = Constants.MOBILE_PORTRAIT_SLOTS - Constants.CORE_SLOTS
		else
			mostRecentlyUsedAndPinnedSlots = Constants.MOBILE_LANDSCAPE_SLOTS - Constants.CORE_SLOTS
		end
	else
		mostRecentlyUsedAndPinnedSlots = Constants.NON_MOBILE_SLOTS - Constants.CORE_SLOTS
	end

	-- 2) Repopulate most recently and user pin lists if the slot count changes
	if mostRecentlyUsedAndPinnedSlots ~= self._mostRecentlyUsedAndPinnedLimit then
		-- only run if slot count changes; limit updates
		self._mostRecentlyUsedAndPinnedLimit = mostRecentlyUsedAndPinnedSlots

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

function ChromeService:notificationIndicator()
	return self._notificationIndicator
end

function ChromeService:toggleSubMenu(subMenuId: IntegrationId)
	if FFlagEnableSideSheet and toggleSideSheet then
		toggleSideSheet(true)
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

function ChromeService:inFocusNav()
	return self._inFocusNav
end

function ChromeService:enableFocusNav()
	if GamepadService.GamepadCursorEnabled then
		return
	end
	if not self._inFocusNav:get() then
		self._inFocusNav:set(true)
	end

	if FFlagEnableConsoleExpControls then
		self:setShortcutBar(Constants.UNIBAR_SHORTCUTBAR_ID)
	end
end

function ChromeService:disableFocusNav()
	if GamepadService.GamepadCursorEnabled then
		return
	end
	if self._inFocusNav:get() then
		self._inFocusNav:set(false)
		self._selectedItem:set(nil)
		-- close any current submenu
		self._currentSubMenu:set(nil)
	end
end

function ChromeService:toggleWindow(componentId: IntegrationId)
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

	if LocalStore.isEnabled() then
		if self._integrations[componentId] and self._integrations[componentId].persistWindowState then
			local windowStore = LocalStore.loadForLocalPlayer(CHROME_WINDOW_STATE_KEY) or {}
			windowStore[componentId] = self._integrationsStatus[componentId] == ChromeService.IntegrationStatus.Window
			LocalStore.storeForLocalPlayer(CHROME_WINDOW_STATE_KEY, windowStore)
		end
	end

	self:updateMenuList()
end

function ChromeService:isWindowOpen(componentId: IntegrationId)
	local window = self._integrations[componentId].components.Window
	return window and self._integrationsStatus[componentId] == ChromeService.IntegrationStatus.Window
end
function ChromeService:menuList()
	return self._menuList
end

function ChromeService:windowList()
	return self._windowList
end

function ChromeService:dragConnection(componentId: IntegrationId)
	if self._integrations[componentId] then
		return self._dragConnection[componentId]
	else
		return nil
	end
end

function ChromeService:updateLocalization(component: IntegrationRegisterProps)
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

	return component :: IntegrationRegisterProps
end

-- Register an integration to be shown within Chrome UIs
-- The Chrome service will monitor any changes to integration availability and notifications
function ChromeService:register(component: IntegrationRegisterProps): IntegrationProps
	if self._integrations[component.id] then
		warn(string.format(component.id .. "already registered", debug.traceback()))
		for _, conn in self._integrationsConnections[component.id] do
			conn:disconnect()
		end
	end

	self._integrationsConnections[component.id] = {}
	local conns = self._integrationsConnections[component.id]

	if FFlagEnableSideSheet then
		if component.sideSheetPlacement == nil then
			component.sideSheetPlacement = SideSheetPlacement.Vertical
		end
	end

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
			self:availabilityChanged(component :: IntegrationProps)
		end)
	end

	if component.notification and not component.notification:excludeFromTotalCounts() then
		conns[#conns + 1] = component.notification:connect(function()
			self:updateNotificationTotals()
		end)
	end

	-- Add a windowSize signal for integrations with windows if missing
	if component.windowSize == nil and component.components and component.components.Window then
		component.windowSize = WindowSizeSignal.new()
	end

	if
		ChromeService:getWindowStatusFromStore(component.id) and component.persistWindowState
		or component.windowDefaultOpen
	then
		self._integrationsStatus[component.id] = ChromeService.IntegrationStatus.Window
		self._onIntegrationStatusChanged:fire(component.id, self._integrationsStatus[component.id])
	end

	local windowPos = UDim2.fromOffset(Constants.MENU_ICON_SCREEN_SIDE_OFFSET, Constants.WINDOW_DEFAULT_PADDING)
	if component.startingWindowPosition then
		if component.persistWindowState then
			windowPos = self:getWindowPositionFromStore(component.id) or component.startingWindowPosition
		else
			windowPos = component.startingWindowPosition
		end
	end
	self._windowPositions[component.id] = windowPos

	component = self:updateLocalization(component)

	local populatedComponent = component :: IntegrationProps
	self._integrations[component.id] = populatedComponent

	if FFlagEnableConsoleExpControls and component.selected then
		conns[#conns + 1] = self:selectedItem():connect(function(id)
			if populatedComponent.id == id then
				if GamepadService.GamepadCursorEnabled then
					return
				end
				component.selected(populatedComponent)
			end
		end)
	end

	return populatedComponent
end

function ChromeService:createIconProps(id: IntegrationId, order: number?): IntegrationComponentProps
	local iconOrder = order or 0
	if self._integrations[id] then
		return {
			id = id,
			children = {},
			order = iconOrder,
			component = self._integrations[id].components.Icon,
			integration = self._integrations[id],
			isDivider = false,
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

function reverseOrder(t)
	local n = #t
	local revOrder = {}
	for i = 1, n do
		revOrder[i] = t[i].order
	end
	for i = 1, n do
		t[i].order = revOrder[n - i + 1]
	end
end

function ChromeService:isIntegrationValid(id: IntegrationId)
	-- Only display available items
	local integration = self._integrations[id]
	if integration then
		local availability = integration.availability
		return availability and availability:get() ~= ChromeService.AvailabilitySignal.Unavailable
	else
		return false
	end
end

-- Convert the menuConfig into view-model data for the unibar
-- This incluses adding dividers between groups and child submenus
function ChromeService:updateMenuList()
	local divId = 0 -- Unique ID for divider elements
	local order = 0 -- A general order that items are adding to the menu. Can be used to control LayoutOrder

	local function iconProps(id): IntegrationComponentProps
		order += 1
		return self:createIconProps(id, order)
	end

	local function windowProps(id): IntegrationComponentProps
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

	local function divider(id): IntegrationComponentProps
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

	local function collectMenu(items: MenuConfig | MenuList | IntegrationIdList, parent: any, windowList: WindowList)
		local validIconCount = 0
		for k, v in pairs(items) do
			if type(v) == "table" then
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

				if not FFlagEnableSideSheet and self._subMenuConfig[v] then
					-- This item has a sub-menu configured, populate the children
					if self:isIntegrationValid(v) then
						local child = iconProps(v)
						validIconCount += 1
						collectMenu(self._subMenuConfig[v], child, windowList)
						if #child.children > 0 then
							table.insert(parent.children, child)
						end
					end
				else
					-- Standard item addition, check for valid and add depending on integration type
					if self:isIntegrationValid(v) then
						local isWindowOpen = self:isWindowOpen(v)
						if isWindowOpen then
							table.insert(windowList, windowProps(v))

							table.insert(parent.children, iconProps(v))
							validIconCount += 1
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
	collectMenu(self._menuConfig, root, windowList)

	-- Remove dangling dividers
	if #root.children and root.children[#root.children] and root.children[#root.children].isDivider then
		table.remove(root.children, #root.children)
	end

	if not FFlagReverseUnibar then
		if self._orderAlignment:get() == Enum.HorizontalAlignment.Left then
			root.children = reverse(root.children)
			reverseOrder(root.children)
		end
	end

	if FFlagEnableChromeWindowsNotInMenu then
		local windowIds = {}
		for _, w in windowList do
			windowIds[w.id] = true
		end
		for id, _ in self._integrations do
			if self:isWindowOpen(id) and not windowIds[id] then
				table.insert(windowList, windowProps(id))
			end
		end
	end

	-- todo: nice to have optimization, only update if we fail an equality check
	self._menuList:set(root.children)
	self._windowList:set(windowList)
	self:repairSelected()
end

if FFlagEnableSideSheet then
	function ChromeService:updateSideSheet()
		local order = 0 -- A general order that items are adding to the menu. Can be used to control LayoutOrder
		local toggle = {}
		local unibar = {}
		local page = {}
		local sessionAction = {}

		local function addIntegration(id: IntegrationId)
			local integration = self._integrations[id]

			if
				not integration
				or integration.sideSheetPlacement == SideSheetPlacement.None
				or not self:isIntegrationValid(id)
			then
				return
			end

			if integration.sideSheetPlacement == SideSheetPlacement.Unibar then
				table.insert(unibar, self:createIconProps(id, order))
			elseif FFlagAddIGMToSideSheet and integration.sideSheetPlacement == SideSheetPlacement.Page then
				table.insert(page, self:createIconProps(id, order))
			elseif integration.sideSheetPlacement == SideSheetPlacement.SessionAction then
				table.insert(sessionAction, self:createIconProps(id, order))
			else
				table.insert(toggle, self:createIconProps(id, order))
			end
		end

		for _, config in self._menuConfig do
			for _, id in config do
				order += 1
				addIntegration(id)
			end
		end

		for _, config in self._subMenuConfig do
			for _, id in config do
				order += 1
				addIntegration(id)
			end
		end

		if not FFlagReverseUnibar then
			if self._orderAlignment:get() == Enum.HorizontalAlignment.Left then
				unibar = reverse(unibar)
			end
		end

		if FIntSideSheetVariant == 0 then
			for _, item in toggle do
				table.insert(unibar, item)
			end
			toggle = unibar
			unibar = {}
		end

		registerSideSheetIntegrations({
			unibarIntegrations = unibar,
			toggleIntegrations = toggle,
			pageIntegrations = if FFlagAddIGMToSideSheet then page else {},
			sessionActionIntegrations = sessionAction,
		})
	end
end

function ChromeService:availabilityChanged(component: IntegrationProps)
	self:updateNotificationTotals()
	self:updateMenuList()
	if FFlagEnableSideSheet then
		self:updateSideSheet()
	end
end

function ChromeService:subMenuNotifications(subMenuId: IntegrationId)
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

function ChromeService:onIntegrationHovered()
	return self._onIntegrationHovered
end

function ChromeService:onIntegrationStatusChanged()
	return self._onIntegrationStatusChanged
end

function ChromeService:integrations()
	return self._integrations
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

function ChromeService:configureMenu(menuConfig: MenuConfig)
	self._menuConfig = menuConfig
	self:updateNotificationTotals()
	self:updateMenuList()
end

function ChromeService:configureSubMenu(parent: IntegrationId, menuConfig: IntegrationIdList)
	self._subMenuConfig[parent] = menuConfig
	if not self._subMenuNotifications[parent] then
		self._subMenuNotifications[parent] = NotifySignal.new(true)
	end
	self:updateNotificationTotals()
	self:updateMenuList()
	if FFlagEnableSideSheet then
		self:updateSideSheet()
	end
end

if FFlagEnableConsoleExpControls then
	function ChromeService:registerShortcut(shortcutProps: ShortcutRegisterProps)
		self._shortcutService:registerShortcut(shortcutProps)
		local shortcut = self._shortcutService:getShortcut(shortcutProps.id)
		if shortcut.integration and self._integrations[shortcut.integration] then
			local integration = self._integrations[shortcut.integration]
			if integration.availability:get() == ChromeService.AvailabilitySignal.Unavailable then
				shortcut.availability:unavailable()
			end
			integration.availability:connect(function()
				local integrationAvailability = integration.availability:get()
				if integrationAvailability == ChromeService.AvailabilitySignal.Unavailable then
					shortcut.availability:unavailable()
				elseif
					integrationAvailability == ChromeService.AvailabilitySignal.Available
					or integrationAvailability == ChromeService.AvailabilitySignal.Pinned
				then
					shortcut.availability:available()
				end
			end)
		end
	end

	function ChromeService:activateShortcut(shortcutId: ShortcutId)
		local shortcut = self._shortcutService:getShortcut(shortcutId)
		if shortcut.integration then
			if shortcut.activated then
				if FFlagIntegrationsChromeShortcutTelemetry then
					self._shortcutService:activateShortcut(shortcutId)
					self._onIntegrationActivated:fire(shortcut.integration, { fromShortcut = true })
				end
			else
				if FFlagIntegrationsChromeShortcutTelemetry then
					self:activate(shortcut.integration, { fromShortcut = true })
				else
					self:activate(shortcut.integration)
				end
			end
		else
			self._shortcutService:activateShortcut(shortcutId)
		end
	end

	function ChromeService:configureShortcutBar(shortcutBarId: ShortcutBarId, config: ShortcutBarProps)
		self._shortcutService:configureShortcutBar(shortcutBarId, config)
	end

	function ChromeService:setShortcutBar(shortcutBarId: ShortcutBarId?)
		self._shortcutService:setShortcutBar(shortcutBarId)
	end

	function ChromeService:getCurrentShortcutBar()
		return self._currentShortcutBar
	end

	function ChromeService:getShortcutsFromBar(shortcutBarId: ShortcutBarId?)
		return self._shortcutService:getShortcutsFromBar(shortcutBarId, self._integrations)
	end

	function ChromeService:getCurrentShortcuts()
		return self:getShortcutsFromBar(self._currentShortcutBar:get())
	end

	function ChromeService:onShortcutBarChanged()
		return self._shortcutService.onShortcutBarChanged
	end

	function ChromeService:selectMenuIcon()
		self._triggerMenuIcon:fire()
	end

	function ChromeService:onTriggerMenuIcon()
		return self._triggerMenuIcon
	end

	function ChromeService:setHideShortcutBar(sourceName: ShortcutOverrideId, hidden: boolean?)
		self._shortcutService:setHideShortcutBar(sourceName, hidden)
	end

	function ChromeService:getHideShortcutBar()
		return self._shortcutService:getHideShortcutBar()
	end
end

if isInExperienceUIVREnabled then
	function ChromeService:onTriggerVRToggleButton()
		return self._triggerVRToggleButton
	end

	function ChromeService:showTopBar()
		return self._topBarVisibility:get()
	end

	function ChromeService:getTopBarVisibiity()
		return self._topBarVisibility
	end

	function ChromeService:connectTopBarVisibility(topBarVisibilityObservable: ObservableShowTopBar)
		self._topBarVisibility = topBarVisibilityObservable
	end
end

function ChromeService:gesture(
	componentId: IntegrationId,
	connection: { current: RBXScriptConnection? }?,
	inputObject: InputObject?
)
	if self._integrations[componentId] then
		self._dragConnection[componentId] = {
			connection = connection,
			inputObject = inputObject,
		}
	end
end

function ChromeService:withinCurrentTopLevelMenu(componentId: IntegrationId)
	local menuItems = self._menuList:get()
	for i, item in menuItems do
		if item.id == componentId then
			return item, i
		end
	end
	return nil, 0
end

function ChromeService:withinCurrentSubmenu(componentId: IntegrationId)
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

if FFlagEnableSideSheet then
	function ChromeService:withinOpenSideSheet(componentId: IntegrationId)
		if not getSideSheetVisibility() then
			return false
		end

		for i, integration in self._integrations do
			if integration.id == componentId and integration.sideSheetPlacement ~= SideSheetPlacement.None then
				return true
			end
		end

		return false
	end
end

function ChromeService:windowPosition(componentId: IntegrationId)
	return self._windowPositions[componentId]
end

function ChromeService:updateWindowPosition(componentId: IntegrationId, position: UDim2)
	if LocalStore.isEnabled() then
		if self._integrations[componentId] and self._integrations[componentId].persistWindowState then
			local windowStore = LocalStore.loadForLocalPlayer(CHROME_WINDOW_POSITION_KEY) or {}
			-- JSON (and by extension LocalStore) doesn't play nice with UDims, so we have to encode it a bit
			windowStore[componentId] = { position.X.Scale, position.X.Offset, position.Y.Scale, position.Y.Offset }
			LocalStore.storeForLocalPlayer(CHROME_WINDOW_POSITION_KEY, windowStore)
		end
	end

	self._windowPositions[componentId] = position
end

function ChromeService:getWindowStatusFromStore(componentId: IntegrationId)
	if LocalStore.isEnabled() then
		local storeStates = LocalStore.loadForLocalPlayer(CHROME_WINDOW_STATE_KEY) or {}
		local windowState = storeStates[componentId] or false

		return windowState
	end
	return nil
end

function ChromeService:getWindowPositionFromStore(componentId: IntegrationId)
	if LocalStore.isEnabled() then
		local storePositions = LocalStore.loadForLocalPlayer(CHROME_WINDOW_POSITION_KEY) or {}
		local pos = storePositions[componentId] or nil
		local windowPosition = if pos then UDim2.new(pos[1], pos[2], pos[3], pos[4]) else nil

		return windowPosition
	end
	return nil
end

function ChromeService:activate(componentId: IntegrationId, props: ActivateProps?)
	local errorMessage
	-- todo: Consider if we need to auto-close the sub-menus when items are selected
	if self._integrations[componentId] then
		local integrationActivated = self._integrations[componentId].activated
		if FFlagIntegrationsChromeShortcutTelemetry then
			self._onIntegrationActivated:fire(componentId, props)
		else
			self._onIntegrationActivated:fire(componentId)
		end

		self:storeChromeInteracted()

		if integrationActivated then
			-- override default

			local success, err = pcall(function()
				integrationActivated(self._integrations[componentId])
				if not FFlagEnableConsoleExpControls then
					self:disableFocusNav()
				end
			end)
			if not success then
				warn("ChromeService: activate error thrown for " .. componentId)
				errorMessage = err
			end
		else
			-- run default behavior
			if self._subMenuConfig[componentId] then
				self:toggleSubMenu(componentId)
			end
			self:toggleWindow(componentId)
		end

		if self._currentSubMenu:get() ~= componentId then
			self._currentSubMenu:set(nil)
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

function ChromeService:setSelected(componentId: IntegrationId?)
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
function ChromeService:configureOrderAlignment(alignment: Enum.HorizontalAlignment)
	if self._orderAlignment:get() ~= alignment then
		self._orderAlignment:set(alignment)
		self:updateMenuList()
	end
end

function ChromeService:orderAlignment()
	return self._orderAlignment
end

function ChromeService:setMenuAbsolutePosition(position: Vector2)
	if position ~= self._menuAbsolutePosition then
		self._menuAbsolutePosition = position
		self._layout:set(createUnibarLayoutInfo(position, self._menuAbsoluteSizeOpen))
	end
end

function ChromeService:setMenuAbsoluteSize(open: Vector2)
	if open ~= self._menuAbsoluteSizeOpen then
		self._menuAbsoluteSizeOpen = open
		self._layout:set(createUnibarLayoutInfo(self._menuAbsolutePosition, open))
	end
end

function ChromeService:layout()
	return self._layout
end

return ChromeService
