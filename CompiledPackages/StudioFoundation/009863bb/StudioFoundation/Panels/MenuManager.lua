local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local StudioUri = require(Main.Util.StudioUri)
local Types = require(Main.Types)
local Signal = require(Packages.Signal)

type PanelPosition = Types.PanelPosition

type Signal<T> = Signal.Signal<T>
type FireSignal<T> = Signal.FireSignal<T>

local MAX_SIZE = 3000

local MenuManager = {}
MenuManager.__index = MenuManager

type Menu = {
	id: string,
	uri: StudioUri,
	panel: PluginGui,
	open: boolean,
	lastOpenTime: number?,
	onClose: (() -> ())?,
	depth: number,
}

type MenuManagerData = {
	_uriScope: string?,
	_plugin: Plugin,
	_panels: Panels,
	_pluginUri: StudioUri,
	_menus: { Menu },
	_onWillOpen: Signal<number>,
	_fireOnWillOpen: FireSignal<number>,
}
export type MenuManager = typeof(setmetatable({} :: MenuManagerData, MenuManager))

function MenuManager.new(plugin: Plugin, uriScope: string?): MenuManager
	local self = setmetatable({}, MenuManager)
	self._uriScope = uriScope
	self._plugin = plugin
	self._panels = plugin:GetPluginComponent("Panels")
	self._pluginUri = StudioUri.wrap(plugin:GetUri())
	self._menus = {} :: { Menu }
	self._onWillOpen, self._fireOnWillOpen = Signal.createSignal()
	return self
end

function MenuManager:onWillOpen(listener: (depth: number) -> ()): Signal.Subscription
	return self._onWillOpen:subscribe(listener)
end

function MenuManager._createMenuPanelAsync(self: MenuManager, id: string, depth: number): (PluginGui, StudioUri)
	local panel = self._plugin:CreateQWidgetPluginGui(id, {
		Id = id,
		InitialEnabled = false,
		MinSize = Vector2.new(100, 100),
		Modal = false,
		Popup = { PassesThroughMouseEvents = true },
		Resizable = true,
		Size = Vector2.new(100, 100),
		Title = id,
		ZIndex = 200 + depth,
	})
	panel.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	return panel, StudioUri.join(self._pluginUri, {
		Category = "Panels",
		ItemId = id,
	})
end

function MenuManager._bindToClose(self: MenuManager, panel: PluginGui, onClose: () -> ())
	-- Tests do not support BindToClose
	if panel:IsA("PluginGui") then
		panel:BindToClose(onClose)
	end
end

function MenuManager._ensurePanelExistsAsync(self: MenuManager, depth: number, onClose: (() -> ())?)
	local existing = self._menus[depth]
	if existing then
		-- update onClose each time to match the latest caller
		existing.onClose = onClose
		return existing
	end
	local uriScopeSegment = if self._uriScope then `/{self._uriScope}` else ""
	local id = `Menus{uriScopeSegment}/{depth}`
	local panel, uri = self:_createMenuPanelAsync(id, depth)
	local menu = {
		depth = depth,
		id = id,
		uri = uri,
		panel = panel,
		open = false,
		onClose = onClose,
	}
	-- Close callback from the popup itself (e.g., click outside)
	self:_bindToClose(panel, function()
		-- Only close menus when the outermost menu loses focus
		local lastOpenMenu: any
		for i = #self._menus, 1, -1 do
			if self._menus[i].open then
				lastOpenMenu = self._menus[i]
				break
			end
		end
		if menu == lastOpenMenu then
			self:_closeMenu(menu)
		end
	end)
	self._menus[depth] = menu
	return menu
end

function MenuManager.openAtAsync(
	self: MenuManager,
	depth: number,
	config: PanelPosition & { targetWidgetUri: StudioUri },
	onClose: (() -> ())?
): Types.PanelHandler
	self._fireOnWillOpen(depth)

	local menu = self:_ensurePanelExistsAsync(depth, onClose)

	self._panels:SetAttachmentAsync(menu.uri, {
		TargetWidgetUri = config.targetWidgetUri,
		TargetAnchorPoint = config.targetAnchorPoint,
		SubjectAnchorPoint = config.subjectAnchorPoint,
		Offset = config.offset,
	})
	self._panels:SetSizeAsync(menu.uri, Vector2.new(0, 0))
	menu.panel.Enabled = true
	menu.open = true
	menu.lastOpenTime = os.clock()
	local handle = {
		container = menu.panel,
		setSizeAsync = function(size: Vector2)
			local width = math.ceil(math.min(MAX_SIZE, size.X))
			local height = math.ceil(math.min(MAX_SIZE, size.Y))
			self._panels:SetSizeAsync(menu.uri, Vector2.new(width, height))
		end,
		updateAsync = function(newConfig: PanelPosition & { targetWidgetUri: StudioUri })
			if not menu.uri then
				return
			end
			self._panels:SetAttachmentAsync(menu.uri, {
				TargetWidgetUri = newConfig.targetWidgetUri,
				TargetAnchorPoint = newConfig.targetAnchorPoint,
				SubjectAnchorPoint = newConfig.subjectAnchorPoint,
				Offset = newConfig.offset,
			})
		end,
		close = function()
			self:_closeMenu(menu)
		end,
	}

	return handle
end

-- Closes all the menu starting from the given one. If no menu is given will go through all existing ones and close them.
function MenuManager._closeMenu(self: MenuManager, menuToClose: Menu?)
	for i, menu in self._menus do
		if menuToClose and i < menuToClose.depth then
			continue
		end
		if not menu.open then
			-- Could be break, but we don't guarantee that all other menus have been closed already?
			continue
		end
		menu.open = false
		menu.panel.Enabled = false
		if menu.onClose then
			menu.onClose()
		end
	end
end

function MenuManager.destroy(self: MenuManager)
	self:_closeMenu()
	for i, menu in self._menus do
		if menu.panel then
			menu.panel:Destroy()
		end
	end
end

return MenuManager
