local HttpService = game:GetService("HttpService")

local Foundation = script:FindFirstAncestor("Foundation")
local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
local Types = require(script.Parent.Parent.Types)

type StudioUri = StudioUri.StudioUri
type PanelPosition = Types.PanelPosition
type PanelHandle = Types.PanelHandle

-- Limit comes from StudioFoundation, so is probably an engine limitation.
local MAX_SIZE = 3000

local function bindToClose(panel: PluginGui, onClose: () -> ())
	-- BindToClose is only available on real PluginGui instances, not test mocks
	if panel:IsA("PluginGui") then
		panel:BindToClose(onClose)
	end
end

type Popover = {
	id: string,
	uri: StudioUri,
	panel: PluginGui,
	open: boolean,
	onClose: (() -> ())?,
}

--[[
	Manages QWidget popup panels for popovers in Roblox Studio plugins.

	PopoverManager allows an arbitrary number of panels to be open
	simultaneously. Closed widgets are returned to an internal pool so
	they can be reused without the latency of creating a new QWidget
	each time.
]]
local PopoverManager = {}
PopoverManager.__index = PopoverManager

--[[
	Creates a new PopoverManager.

	@param plugin -- The Studio plugin instance used to create QWidgets.
	@param uriScope -- Optional scope segment appended to widget IDs for namespacing.
]]
function PopoverManager.new(plugin: Plugin, uriScope: string?)
	local self = setmetatable({}, PopoverManager)
	self._uriScope = uriScope

	self._plugin = plugin
	self._panels = plugin:GetPluginComponent("Panels")
	self._pluginUri = StudioUri.wrap(plugin:GetUri())

	self._active = {} :: { [string]: Popover }
	self._pool = {} :: { Popover }

	return self
end

export type PopoverManager = typeof(PopoverManager.new(...))

--[[
	Opens a popover panel attached to the given target widget.

	Acquires a QWidget from the pool (or creates one if the pool is empty),
	positions it relative to the target, and enables it. The returned
	PanelHandle can be used to resize, reposition, or close the panel.

	@param config -- Attachment positioning and target widget URI.
	@param onClose -- Optional callback invoked when the popover is closed.
	@return PanelHandle for the opened popover.
]]
function PopoverManager.openAtAsync(
	self: PopoverManager,
	config: PanelPosition & { targetWidgetUri: StudioUri },
	onClose: (() -> ())?
): PanelHandle
	local popover = self:_acquirePanelAsync(onClose)

	-- Make sure it's hidden before we attach to avoid visual flash.
	popover.panel.Enabled = false

	self._panels:SetAttachmentAsync(popover.uri, {
		TargetWidgetUri = config.targetWidgetUri,
		TargetAnchorPoint = config.targetAnchorPoint,
		SubjectAnchorPoint = config.subjectAnchorPoint,
		Offset = config.offset,
	})
	self._panels:SetSizeAsync(popover.uri, Vector2.new(0, 0))

	popover.panel.Enabled = true
	popover.open = true

	local handle: PanelHandle = {
		container = popover.panel,
		setSizeAsync = function(size: Vector2)
			local width = math.ceil(math.min(MAX_SIZE, size.X))
			local height = math.ceil(math.min(MAX_SIZE, size.Y))
			self._panels:SetSizeAsync(popover.uri, Vector2.new(width, height))
		end,
		updateAsync = function(newConfig: PanelPosition & { targetWidgetUri: StudioUri })
			if not popover.uri then
				return
			end

			self._panels:SetAttachmentAsync(popover.uri, {
				TargetWidgetUri = newConfig.targetWidgetUri,
				TargetAnchorPoint = newConfig.targetAnchorPoint,
				SubjectAnchorPoint = newConfig.subjectAnchorPoint,
				Offset = newConfig.offset,
			})
		end,
		close = function()
			self:_closePopover(popover)
		end,
	}

	return handle
end

--[[
	Creates a new QWidget popup panel. Uses the menu-style Popup configuration
	rather than Tooltip, since visual styling is handled in Luau.
]]
function PopoverManager._createPanelAsync(self: PopoverManager, id: string): (PluginGui, StudioUri)
	local panel = self._plugin:CreateQWidgetPluginGui(id, {
		Id = id,
		InitialEnabled = true,
		-- We make the panels a tooltip because it's the only way QT will allow
		-- more than one to be open simultaneously. This is a bit of a hack, but
		-- we avoid any visual differences because the panels are transparent.
		Tooltip = true,
		Transparent = true,
		Resizable = true,
		Title = id,
		ZIndex = 200,
	})
	panel.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	return panel, StudioUri.join(self._pluginUri, {
		Category = "Panels",
		ItemId = id,
	})
end

--[[
	Acquires a panel for use: pops one from the idle pool if available,
	otherwise creates a fresh QWidget.
]]
function PopoverManager._acquirePanelAsync(self: PopoverManager, onClose: (() -> ())?): Popover
	local popover = table.remove(self._pool)

	if popover then
		popover.onClose = onClose
		popover.open = false
		self._active[popover.id] = popover
		return popover
	end

	local uriScopeSegment = if self._uriScope then `/{self._uriScope}` else ""
	local id = `Popovers{uriScopeSegment}/{HttpService:GenerateGUID(false)}`

	local panel, uri = self:_createPanelAsync(id)

	local newPopover: Popover = {
		id = id,
		uri = uri,
		panel = panel,
		open = false,
		onClose = onClose,
	}

	bindToClose(panel, function()
		self:_closePopover(newPopover)
	end)

	self._active[id] = newPopover
	return newPopover
end

--[[
	Closes a single popover: disables the panel, fires the onClose callback,
	removes it from active tracking, and returns it to the pool for reuse.
]]
function PopoverManager._closePopover(self: PopoverManager, popover: Popover)
	if not popover.open then
		return
	end

	popover.open = false
	popover.panel.Enabled = false

	if popover.onClose then
		popover.onClose()
	end

	self._active[popover.id] = nil
	table.insert(self._pool, popover)
end

--[[
	Closes every active popover and returns all widgets to the pool.
]]
function PopoverManager.closeAll(self: PopoverManager)
	for _, popover in self._active do
		if popover.open then
			popover.open = false
			popover.panel.Enabled = false

			if popover.onClose then
				popover.onClose()
			end

			table.insert(self._pool, popover)
		end
	end
	self._active = {}
end

--[[
	Closes all active popovers, then destroys every QWidget (both active and
	pooled). The manager should not be used after this call.
]]
function PopoverManager.destroy(self: PopoverManager)
	self:closeAll()

	for _, popover in self._pool do
		if popover.panel then
			popover.panel:Destroy()
		end
	end
	self._pool = {}
end

return PopoverManager
