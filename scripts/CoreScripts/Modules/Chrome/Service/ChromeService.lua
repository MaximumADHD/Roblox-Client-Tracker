local utils = require(script.Parent.ChromeUtils)
local ObservableValue = utils.ObservableValue
local NotifySignal = utils.NotifySignal
local AvailabilitySignal = utils.AvailabilitySignal

type IntegrationComponents = {
	Icon: any?,
	Window: any?,
}

type IntegrationProps = {
	id: string,
	label: string,
	initialAvailability: any?,
	availability: any?,
	components: IntegrationComponents?,
	activated: any?,
	notification: any?,
	startingWindowSize: UDim2?,
	startingWindowPosition: UDim2?,
}

type IntegrationComponentProps = {
	id: string,
	label: string,
	component: any,
	integration: IntegrationProps,
	activated: any?,
	order: number,
	children: any?,
}

-- todo: Consider how ChromeService could support multiple UI at the same time, not only the Unibar
--       Does there need to be another layer "IntegrationsService" that ChromeService can pull from?

local ChromeService = {}
ChromeService.__index = ChromeService

ChromeService.AvailabilitySignal = utils.AvailabilitySignalState
ChromeService.MenuStatus = { Closed = 0, Open = 1 }
ChromeService.IntegrationStatus = { None = 0, Icon = 1, Window = 2 }
ChromeService.Key = {
	MostRecentlyUsed = "MRU",
}

function ChromeService.new(): ChromeServiceInterface
	local self = {}
	self._status = ObservableValue.new(ChromeService.MenuStatus.Closed)
	self._currentSubMenu = ObservableValue.new(nil)
	self._integrations = {}
	self._integrationsConnections = {}
	self._integrationsProps = {}
	self._integrationsStatus = {} -- Icon/Window
	self._menuConfig = {}
	self._subMenuConfig = {}
	self._menuList = ObservableValue.new({})
	self._totalNotifications = NotifySignal.new()
	self._mostRecentlyUsed = {}
	self._mostRecentlyUsedLimit = 1
	setmetatable(self, ChromeService)

	return self
end

function ChromeService.toggleSubMenu(self: ChromeServiceInterface, subMenuId: string)
	-- todo: Add analytics

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
		self._currentSubMenu:set(nil)
	else
		-- otherwise open the menu
		self._currentSubMenu:set(subMenuId)
	end
end

function ChromeService.currentSubMenu(self: ChromeServiceInterface)
	return self._currentSubMenu
end

function ChromeService.toggleOpen(self: ChromeServiceInterface)
	-- todo: Add analytics

	if self._status:get() == ChromeService.MenuStatus.Closed then
		self._status:set(ChromeService.MenuStatus.Open)
	else
		-- close any current submenu
		self._currentSubMenu:set(nil)
		self._status:set(ChromeService.MenuStatus.Closed)
	end
end

function ChromeService.status(self: ChromeServiceInterface)
	return self._status
end

function ChromeService.menuList(self: ChromeServiceInterface)
	return self._menuList
end

-- Register an integration to be shown within Chrome UIs
-- The Chrome service will monitor any changes to integration availability and notifications
function ChromeService.register(self: ChromeServiceInterface, component: any)
	if self._integrations[component.id] then
		warn(string.format(component.id .. "already registered", debug.traceback()))
		for _, conn in self._integrationsConnections[component.id] do
			conn:disconnect()
		end
	end

	self._integrations[component.id] = component
	self._integrationsConnections[component.id] = {}
	local conns = self._integrationsConnections[component.id]

	if component.availability == nil then
		component.availability = AvailabilitySignal.new(component.initialAvailability)
	end

	if component.notification == nil then
		component.notification = NotifySignal.new()
	end

	conns[#conns + 1] = component.availability:connect(function()
		self:availabilityChanged(component)
	end)

	if component.notification ~= self._totalNotifications then
		conns[#conns + 1] = component.notification:connect(function()
			self:notification(component)
		end)
	end

	return component
end

-- Convert the menuConfig into view-model data for the unibar
-- This incluses adding dividers between groups and child submenus
function ChromeService.updateMenuList(self: ChromeServiceInterface)
	local divId = 0 -- Unique ID for divider elements
	local order = 0 -- aA general order that items are adding to the menu. Can be used to control LayoutOrder

	local function iconProps(id, recentlyUsedItem: boolean?): any
		order += 1
		if self._integrations[id] then
			return {
				id = id,
				children = {},
				order = order,
				component = self._integrations[id].components.Icon,
				integration = self._integrations[id],
				isDivider = false,
				recentlyUsedItem = recentlyUsedItem or false,
				activated = function()
					self:activate(id)
				end,
			}
		else
			return { id = id, children = {}, order = order }
		end
	end

	local function divider(id): any
		divId += 1
		order += 1
		return {
			id = "DIV" .. divId,
			order = order,
			isDivider = true,
			children = {},
		}
	end

	local function valid(id)
		-- Only display available items
		return self._integrations[id]
			and self._integrations[id].availability:get() ~= ChromeService.AvailabilitySignal.Unavailable
	end

	local function collectMenu(items: any, parent: any, recentlyUsedItem: boolean?)
		local validCount = 0
		for k, v in pairs(items) do
			if v == ChromeService.Key.MostRecentlyUsed then
				-- If MostRecentlyUsed special key, substitute for the MostRecentlyUsed array
				collectMenu(self._mostRecentlyUsed, parent)
			elseif type(v) == "table" then
				-- A list (non-string item) is a group of items that require visual dividers to bookend
				if not #parent.children then
					table.insert(parent.children, divider(divId))
				end
				if collectMenu(v, parent) > 0 then
					table.insert(parent.children, divider(divId))
				end
			elseif self._subMenuConfig[v] then
				-- This item has a sub-menu configured, populate the children
				if valid(v) then
					local child = iconProps(v, recentlyUsedItem)
					validCount += 1
					collectMenu(self._subMenuConfig[v], child)
					if #child.children > 0 then
						table.insert(parent.children, child)
					end
				end
			else
				-- Standard item addition, check for valid and add
				if valid(v) then
					validCount += 1
					table.insert(parent.children, iconProps(v))
				end
			end
		end
		return validCount
	end

	local root = { children = {} }
	-- recursively collectMenu
	collectMenu(self._menuConfig, root)

	-- Remove dangling dividers
	if #root.children and root.children[#root.children].isDivider then
		table.remove(root.children, #root.children)
	end

	-- todo: nice to have optimization, only update if we fail an equality check
	self._menuList:set(root.children)
end

function ChromeService.availabilityChanged(self: ChromeServiceInterface, component: IntegrationProps)
	self:notification(component)
end

function ChromeService.totalNotifications(self: ChromeServiceInterface)
	return self._totalNotifications
end

function ChromeService.notification(self: ChromeServiceInterface, component: IntegrationProps)
	local total = 0
	for i, v in self._integrations do
		if
			v.availability:get() ~= ChromeService.AvailabilitySignal.Unavailable
			and v.availability:get() ~= ChromeService.AvailabilitySignal.Pinned
			and v.notification ~= self._totalNotifications
		then
			local notification = v.notification:get()
			if notification and notification.type == "count" then
				total += notification.value
			end
		end
	end
	self._totalNotifications:fireCount(total)
end

function ChromeService.configureReset(self: ChromeServiceInterface)
	self._menuConfig = {}
	self._subMenuConfig = {}
	self:updateMenuList()
end

function ChromeService.configureMenu(self: ChromeServiceInterface, menuConfig: any?)
	self._menuConfig = menuConfig
	self:updateMenuList()
end

function ChromeService.configureSubMenu(self: ChromeServiceInterface, parent: string, menuConfig: any?)
	self._subMenuConfig[parent] = menuConfig
	self:updateMenuList()
end

function ChromeService.gesture(self: ChromeServiceInterface, componentId: string)
	if self._integrations[componentId] then
		-- show expand tab if there is a window component available
	end
end

function ChromeService.withinCurrentSubmenu(self: ChromeServiceInterface, componentId: string)
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

function ChromeService.isMostRecentlyUsed(self: ChromeServiceInterface, componentId: string)
	return table.find(self._mostRecentlyUsed, componentId) ~= nil
end

function ChromeService.setRecentlyUsed(self: ChromeServiceInterface, componentId: string, force: boolean?)
	if force or (self:withinCurrentSubmenu(componentId) and not self:isMostRecentlyUsed(componentId)) then
		table.insert(self._mostRecentlyUsed, componentId)
		while self._mostRecentlyUsedLimit > 0 and #self._mostRecentlyUsed > self._mostRecentlyUsedLimit do
			table.remove(self._mostRecentlyUsed, 1)
		end
		self:updateMenuList()
	end
end

function ChromeService.activate(self: ChromeServiceInterface, componentId: string)
	local errorMessage
	-- todo: Consider if we need to auto-close the sub-menus when items are selected
	-- todo: Add analytics.
	if self._integrations[componentId] then
		--is part of current sub-menu
		self:setRecentlyUsed(componentId)

		if self._integrations[componentId].activated then
			-- override default

			local success, err = pcall(function()
				self._integrations[componentId].activated(self._integrations[componentId])
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
			-- todo: if Icon clicked, spawn window and hide icon
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

-- todo: find a path to remove this type data; add stronger types
type ChromeServiceInterface = typeof(setmetatable(
	{} :: {
		_status: any,
		_currentSubMenu: any,
		_integrations: any,
		_integrationsConnections: any,
		_integrationsProps: any,
		_integrationsStatus: any,
		_menuConfig: any,
		_subMenuConfig: any,
		_menuList: any,
		_totalNotifications: any,
		_mostRecentlyUsed: any,
		_mostRecentlyUsedLimit: number,
	},
	ChromeService
))

return ChromeService
