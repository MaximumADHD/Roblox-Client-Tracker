local HttpService = game:GetService("HttpService")

local Foundation = script:FindFirstAncestor("Foundation")
local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
local Types = require(script.Parent.Parent.Types)

type StudioUri = StudioUri.StudioUri
type PanelPosition = Types.PanelPosition
type PanelHandle = Types.PanelHandle

-- Limit comes from StudioFoundation, so is probably an engine limitation.
local MAX_SIZE = 3000

--- This QWidget ZIndex comes from StudioFoundation and is separate from
--- Foundation's own Elevation layer bands.
local BASE_ZINDEX = 200

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
	depth: number,
	parentPopoverId: string?, -- nil for root popovers
	onClose: (() -> ())?,
}

local function isStrictDescendantOf(active: { [string]: Popover }, ancestor: Popover, descendant: Popover): boolean
	local pid = descendant.parentPopoverId
	while pid do
		if pid == ancestor.id then
			return true
		end
		local parent = active[pid]
		if not parent then
			break
		end
		pid = parent.parentPopoverId
	end
	return false
end

--[[
	Manages QWidget popup panels for popovers in Roblox Studio plugins.

	PopoverManager allows an arbitrary number of panels to be open
	simultaneously. Closed widgets are returned to an internal pool so
	they can be reused without the latency of creating a new QWidget
	each time. The pool is keyed by depth so that QWidgets created at a
	given ZIndex level are only reused by popovers at that same level.
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
	self._pool = {} :: { [number]: { Popover } }
	self._didPrewarm = false

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
	@param depth -- Nesting depth for QWidget ZIndex ordering. Defaults to 0.
	@param parentPopoverId -- Immediate parent panel id for tree-scoped child dismissal.
	@return PanelHandle for the opened popover.
]]
function PopoverManager.openAtAsync(
	self: PopoverManager,
	config: PanelPosition & { targetWidgetUri: StudioUri },
	onClose: (() -> ())?,
	depth: number?,
	parentPopoverId: string?
): PanelHandle
	local resolvedDepth = if depth == nil then 0 else depth
	local popover = self:_acquirePanelAsync(onClose, resolvedDepth, parentPopoverId)

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
		popoverId = popover.id,
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
			self:_closePopover(popover, true)
		end,
	}

	return handle
end

--[[
	Creates a new QWidget popup panel. Uses the menu-style Popup configuration
	rather than Tooltip, since visual styling is handled in Luau.
	QWidget ZIndex is BASE_ZINDEX + depth so nested popovers stack correctly.
]]
function PopoverManager._createPanelAsync(self: PopoverManager, id: string, depth: number): (PluginGui, StudioUri)
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
		ZIndex = BASE_ZINDEX + depth,
	})
	panel.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	return panel, StudioUri.join(self._pluginUri, {
		Category = "Panels",
		ItemId = id,
	})
end

function PopoverManager._makePopoverId(self: PopoverManager): string
	local uriScopeSegment = if self._uriScope then `/{self._uriScope}` else ""
	return `Popovers{uriScopeSegment}/{HttpService:GenerateGUID(false)}`
end

function PopoverManager._createPopoverAsync(self: PopoverManager, id: string, depth: number): Popover
	local panel, uri = self:_createPanelAsync(id, depth)
	local newPopover: Popover = {
		id = id,
		uri = uri,
		panel = panel,
		open = false,
		depth = depth,
		parentPopoverId = nil,
		onClose = nil,
	}

	bindToClose(panel, function()
		self:_closePopover(newPopover)
	end)

	-- WindowFocused does not fire for QWidgets created with Tooltip = true
	-- because Qt tooltip windows never gain OS-level window focus. We use
	-- InputBegan instead to detect when the user clicks on a parent panel,
	-- which dismisses any child popovers that Qt may have obscured without
	-- firing BindToClose.
	panel.InputBegan:Connect(function(input: InputObject)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and newPopover.open then
			self:_closeChildPopovers(newPopover)
		end
	end)

	return newPopover
end

function PopoverManager._activatePopover(
	self: PopoverManager,
	popover: Popover,
	onClose: (() -> ())?,
	parentPopoverId: string?
)
	popover.onClose = onClose
	popover.parentPopoverId = parentPopoverId
	popover.open = false
	self._active[popover.id] = popover
end

--[[
	Attempts to pop a panel from the idle pool at the given depth.
	Returns nil if no panel is available.
]]
function PopoverManager._tryAcquireFromPool(
	self: PopoverManager,
	onClose: (() -> ())?,
	depth: number,
	parentPopoverId: string?
): Popover?
	local depthPool = self._pool[depth]
	local popover = if depthPool then table.remove(depthPool) else nil
	if not popover then
		return nil
	end

	self:_activatePopover(popover, onClose, parentPopoverId)
	return popover
end

--[[
	Acquires a panel for use: pops one from the idle pool at the given depth
	if available, otherwise creates a fresh QWidget at that depth.
]]
function PopoverManager._acquirePanelAsync(
	self: PopoverManager,
	onClose: (() -> ())?,
	depth: number,
	parentPopoverId: string?
): Popover
	local pooled = self:_tryAcquireFromPool(onClose, depth, parentPopoverId)
	if pooled then
		return pooled
	end

	local id = self:_makePopoverId()
	local newPopover = self:_createPopoverAsync(id, depth)
	self:_activatePopover(newPopover, onClose, parentPopoverId)
	return newPopover
end

--[[
	Prewarms the pool by creating one QWidget per depth up to maxDepth.
	Uses a guard to avoid creating extra widgets if called multiple times.
]]
function PopoverManager.prewarmPoolAsync(self: PopoverManager, maxDepth: number)
	if self._didPrewarm then
		return
	end

	local resolvedMaxDepth = math.max(0, maxDepth)
	for depth = 0, resolvedMaxDepth do
		if self._pool[depth] == nil then
			self._pool[depth] = {}
		end

		local depthPool = self._pool[depth] -- Guarnateed to exist
		if #depthPool == 0 then
			local popover = self:_createPopoverAsync(self:_makePopoverId(), depth)
			popover.panel.Enabled = false
			table.insert(depthPool, popover)
		end
	end

	self._didPrewarm = true
end

--[[
	Dismisses descendant popovers of the clicked panel. Uses strict ancestry
	so sibling trees stay open.
]]
function PopoverManager._closeChildPopovers(self: PopoverManager, parentPopover: Popover)
	local toClose = {}
	for _, popover in self._active do
		if popover.open and popover.id ~= parentPopover.id then
			local shouldClose = isStrictDescendantOf(self._active, parentPopover, popover)
			if shouldClose then
				table.insert(toClose, popover)
			end
		end
	end
	for _, popover in toClose do
		-- User-driven dismissals should notify consumers to update open state.
		self:_closePopover(popover)
	end
end

--[[
	Closes a single popover: disables the panel, removes it from active
	tracking, and returns it to the pool at its depth.

	When silent is false (the default), the onClose callback fires to
	notify the consumer of an external close (e.g. Qt BindToClose).
	Consumer-initiated closes (handle.close) pass silent=true because
	the consumer already knows it is closing and firing onClose would
	re-enter the menu state machine, cancelling sibling opens.
]]
function PopoverManager._closePopover(self: PopoverManager, popover: Popover, silent: boolean?)
	if not popover.open then
		return
	end

	popover.open = false
	popover.panel.Enabled = false

	if not silent and popover.onClose then
		popover.onClose()
	end

	self._active[popover.id] = nil

	local depth = popover.depth
	if not self._pool[depth] then
		self._pool[depth] = {}
	end
	table.insert(self._pool[depth], popover)
end

--[[
	Closes every active popover and returns all widgets to the pool.
]]
function PopoverManager.closeAll(self: PopoverManager)
	local toClose = {}
	for _, popover in self._active do
		table.insert(toClose, popover)
	end
	for _, popover in toClose do
		self:_closePopover(popover)
	end
end

--[[
	Closes all active popovers, then destroys every QWidget (both active and
	pooled). The manager should not be used after this call.
]]
function PopoverManager.destroy(self: PopoverManager)
	self:closeAll()

	for _, depthPool in self._pool do
		for _, popover in depthPool do
			if popover.panel then
				popover.panel:Destroy()
			end
		end
	end
	self._pool = {}
end

return PopoverManager
