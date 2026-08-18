local HttpService = game:GetService("HttpService")

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local filter = Dash.filter
local values = Dash.values

local Flags = require(Foundation.Utility.Flags)
local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
type StudioUri = StudioUri.StudioUri
local Logger = require(Foundation.Utility.Logger)

-- We have to declare this inline because Foundation and lua-apps don't
-- include Studio types in analysis.
type WidgetInfo = {
	Exists: boolean,
	Position: Vector2,
	Size: Vector2,
	Uri: StudioUri,
	Visible: boolean,
}

type WidgetRegistration = {
	DEPRECATED_PluginGui: Instance,
	Position: Vector2?,
	Size: Vector2?,
	Uri: StudioUri,
	Visible: boolean?,
	Widget: Instance,
}

type Widgets = {
	DeregisterAsync: (self: Widgets, widgetUris: { [number]: StudioUri }) -> nil,
	FocusAsync: (self: Widgets, widgetUri: StudioUri) -> nil,
	GetMatchedWidgetsAsync: (self: Widgets, wildWidgetUri: StudioUri) -> { [number]: WidgetInfo },
	GetWidgetAsync: (self: Widgets, widgetUri: StudioUri) -> WidgetInfo,
	RegisterAsync: (self: Widgets, widgets: { [number]: WidgetRegistration }) -> nil,
}

type WidgetSignals = {
	Widget: Instance,
	Host: Instance?,
	PositionChanged: RBXScriptConnection,
	SizeChanged: RBXScriptConnection,
	VisibleChanged: RBXScriptConnection,
	AncestryChanged: RBXScriptConnection,
}

local WidgetManager = {}
WidgetManager.__index = WidgetManager

function WidgetManager.new(widgetsApi: Widgets)
	local self = setmetatable({}, WidgetManager)

	self._widgetsApi = widgetsApi
	self._pendingRegisters = {} :: { [string]: any }
	self._pendingDeregisters = {} :: { [string]: StudioUri }
	self._registeredWidgets = {} :: { [string]: GuiBase2d }
	self._signals = {} :: { [string]: WidgetSignals }
	self._deferredAncestrySignals = {} :: { [string]: RBXScriptConnection }
	self._running = false

	return self
end

export type WidgetManager = typeof(WidgetManager.new(...))

local function getWidgetHost(gui: GuiBase2d): Instance?
	local pluginGui = gui:FindFirstAncestorWhichIsA("PluginGui")
	if pluginGui then
		return pluginGui
	end
	return gui:FindFirstAncestorWhichIsA("ScreenGui")
end

local function makeRegistration(widgetUri: StudioUri, gui: GuiBase2d, host: Instance): WidgetRegistration
	return {
		Uri = widgetUri,
		Widget = gui,
		DEPRECATED_PluginGui = host,
		Position = gui.AbsolutePosition,
		Size = gui.AbsoluteSize,
		Visible = gui:GetStyled("Visible"),
	}
end

function WidgetManager.nextId(_self: WidgetManager): string
	return HttpService:GenerateGUID(false)
end

function WidgetManager.flush(self: WidgetManager)
	if Flags.FoundationWidgetManagerSnapshotFlush then
		local pendingDeregisters = self._pendingDeregisters
		local pendingRegisters = self._pendingRegisters
		self._pendingDeregisters = {}
		self._pendingRegisters = {}

		self:_flushWith(pendingDeregisters, pendingRegisters)
	else
		self:_flushWith(self._pendingDeregisters, self._pendingRegisters)
		self._pendingDeregisters = {}
		self._pendingRegisters = {}
	end
end

function WidgetManager._flushWith(
	self: WidgetManager,
	pendingDeregisters: { [string]: StudioUri },
	pendingRegisters: { [string]: any }
)
	local deregisterUris = {}
	for uriString, uri in pendingDeregisters do
		table.insert(deregisterUris, uri)
		self._registeredWidgets[uriString] = nil
	end
	if #deregisterUris > 0 then
		pcall(function()
			self._widgetsApi:DeregisterAsync(deregisterUris)
		end)
	end

	local deferred = if Flags.FoundationWidgetManagerSnapshotFlush then {} else nil :: never
	local list = filter(values(pendingRegisters), function(entry)
		local hasLayerCollector = entry.Widget:FindFirstAncestorWhichIsA("LayerCollector") ~= nil
		if Flags.FoundationWidgetManagerSnapshotFlush and not hasLayerCollector then
			table.insert(deferred, entry)
		end
		return hasLayerCollector
	end)

	if Flags.FoundationWidgetManagerSnapshotFlush then
		for _, entry in deferred do
			local uriString = StudioUri.toString(entry.Uri)
			if not self._deferredAncestrySignals[uriString] then
				self._deferredAncestrySignals[uriString] = entry.Widget.AncestryChanged:Connect(function(_, parent)
					if parent == nil then
						local conn = self._deferredAncestrySignals[uriString]
						if conn then
							conn:Disconnect()
							self._deferredAncestrySignals[uriString] = nil
						end
						return
					end
					if entry.Widget:FindFirstAncestorWhichIsA("LayerCollector") then
						local conn = self._deferredAncestrySignals[uriString]
						if conn then
							conn:Disconnect()
							self._deferredAncestrySignals[uriString] = nil
						end
						self:register(entry.Uri, entry.Widget)
					end
				end)
			end
		end
	end

	local rebindUris = {}
	for _, entry in list do
		entry.Position = entry.Widget.AbsolutePosition
		entry.Size = entry.Widget.AbsoluteSize
		entry.Visible = entry.Widget:GetStyled("Visible")
		local uriString = StudioUri.toString(entry.Uri)
		local host = entry.DEPRECATED_PluginGui :: Instance

		local currentSignals = self._signals[uriString]
		if currentSignals then
			if currentSignals.Widget ~= entry.Widget then
				currentSignals.PositionChanged:Disconnect()
				currentSignals.SizeChanged:Disconnect()
				currentSignals.VisibleChanged:Disconnect()
				currentSignals.AncestryChanged:Disconnect()
			elseif Flags.FoundationPopoverPluginOverlayMeasurement and currentSignals.Host ~= host then
				currentSignals.Host = host
				table.insert(rebindUris, entry.Uri)
				continue
			else
				continue
			end
		end

		self._signals[uriString] = {
			Widget = entry.Widget,
			Host = if Flags.FoundationPopoverPluginOverlayMeasurement then host else nil,
			PositionChanged = entry.Widget:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
				self:register(entry.Uri, entry.Widget)
			end),
			SizeChanged = entry.Widget:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				self:register(entry.Uri, entry.Widget)
			end),
			VisibleChanged = entry.Widget:GetStyledPropertyChangedSignal("Visible"):Connect(function()
				self:register(entry.Uri, entry.Widget)
			end),
			AncestryChanged = entry.Widget.AncestryChanged:Connect(function(_, parent)
				if not parent then
					self:deregister(entry.Uri)
				end
			end),
		}
	end

	if Flags.FoundationPopoverPluginOverlayMeasurement and #rebindUris > 0 then
		pcall(function()
			self._widgetsApi:DeregisterAsync(rebindUris)
		end)
	end

	if #list > 0 then
		self._widgetsApi:RegisterAsync(list)
	end
end

function WidgetManager._run(self: WidgetManager)
	if self._running then
		return
	end
	self._running = true
	task.defer(function()
		-- Note: The order here is very important. If flush is called before
		-- the running flag is set to false, there will be subtle timing bugs
		-- where widgets won't be placed in the correct position relative to
		-- their anchors.
		self._running = false
		self:flush()
	end)
end

function WidgetManager.register(self: WidgetManager, widgetUri: StudioUri, gui: GuiBase2d)
	local host = getWidgetHost(gui)
	if host then
		local uriString = StudioUri.toString(widgetUri)
		if Flags.FoundationWidgetManagerSnapshotFlush then
			local deferredConn = self._deferredAncestrySignals[uriString]
			if deferredConn then
				deferredConn:Disconnect()
				self._deferredAncestrySignals[uriString] = nil
			end
		end
		self._registeredWidgets[uriString] = gui
		self._pendingRegisters[uriString] = { Uri = widgetUri, Widget = gui, DEPRECATED_PluginGui = host }
		self._pendingDeregisters[uriString] = nil
		self:_run()
	end
end

-- A PluginGui's native QWidget host can change without changing the Lua
-- instance or a descendant's local geometry. Consumers resolving a widget URI
-- can use this to ensure the engine has the widget's current host and bounds.
function WidgetManager.refreshAsync(self: WidgetManager, widgetUri: StudioUri): boolean
	local uriString = StudioUri.toString(widgetUri)
	local gui = self._registeredWidgets[uriString]
	if not gui then
		return false
	end

	local host = getWidgetHost(gui)
	if not host then
		return false
	end

	self._widgetsApi:RegisterAsync({ makeRegistration(widgetUri, gui, host) })
	return true
end

function WidgetManager.deregister(self: WidgetManager, widgetUri: StudioUri, gui: GuiBase2d?)
	local uriString = StudioUri.toString(widgetUri)
	self._pendingDeregisters[uriString] = widgetUri
	if Flags.FoundationWidgetManagerSnapshotFlush then
		self._pendingRegisters[uriString] = nil
		local deferredConn = self._deferredAncestrySignals[uriString]
		if deferredConn then
			deferredConn:Disconnect()
			self._deferredAncestrySignals[uriString] = nil
		end
	end
	local signals = self._signals[uriString]
	if signals then
		if gui == nil or signals.Widget == gui then
			signals.PositionChanged:Disconnect()
			signals.SizeChanged:Disconnect()
			signals.VisibleChanged:Disconnect()
			signals.AncestryChanged:Disconnect()
			self._signals[uriString] = nil
		else
			Logger:warning(`WidgetManager:deregister called with mismatched widget for uri {uriString}`)
		end
	end
	self:_run()
end

function WidgetManager.destroy(self: WidgetManager)
	for _, signals in self._signals do
		signals.PositionChanged:Disconnect()
		signals.SizeChanged:Disconnect()
		signals.VisibleChanged:Disconnect()
		signals.AncestryChanged:Disconnect()
	end
	if Flags.FoundationWidgetManagerSnapshotFlush then
		for _, conn in self._deferredAncestrySignals do
			conn:Disconnect()
		end
		self._deferredAncestrySignals = {}
	end
	self._signals = {}
	self._pendingRegisters = {}
	self._pendingDeregisters = {}
	self._registeredWidgets = {}
end

return WidgetManager
