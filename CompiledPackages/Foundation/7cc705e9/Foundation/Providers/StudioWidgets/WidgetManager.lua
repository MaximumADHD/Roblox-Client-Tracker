local HttpService = game:GetService("HttpService")

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local filter = Dash.filter
local values = Dash.values

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
	DEPRECATED_PluginGui: any,
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
	self._running = false

	return self
end

export type WidgetManager = typeof(WidgetManager.new(...))

function WidgetManager.nextId(_self: WidgetManager): string
	return HttpService:GenerateGUID(false)
end

function WidgetManager.flush(self: WidgetManager)
	local deregisterUris = {}
	for uriString, uri in self._pendingDeregisters do
		table.insert(deregisterUris, uri)
		self._registeredWidgets[uriString] = nil
	end
	if #deregisterUris > 0 then
		pcall(function()
			self._widgetsApi:DeregisterAsync(deregisterUris)
		end)
	end
	self._pendingDeregisters = {}

	local list = filter(values(self._pendingRegisters), function(entry)
		return entry.Widget:FindFirstAncestorWhichIsA("LayerCollector") ~= nil
	end)
	for _, entry in list do
		entry.Position = entry.Widget.AbsolutePosition
		entry.Size = entry.Widget.AbsoluteSize
		entry.Visible = entry.Widget:GetStyled("Visible")
		local uriString = StudioUri.toString(entry.Uri)

		local currentSignals = self._signals[uriString]
		if currentSignals then
			if currentSignals.Widget ~= entry.Widget then
				currentSignals.PositionChanged:Disconnect()
				currentSignals.SizeChanged:Disconnect()
				currentSignals.VisibleChanged:Disconnect()
				currentSignals.AncestryChanged:Disconnect()
			else
				continue
			end
		end

		self._signals[uriString] = {
			Widget = entry.Widget,
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

	if #list > 0 then
		self._widgetsApi:RegisterAsync(list)
	end
	self._pendingRegisters = {}
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
	local pluginGui = gui:FindFirstAncestorWhichIsA("PluginGui")
	if not pluginGui then
		pluginGui = gui:FindFirstAncestorWhichIsA("ScreenGui") :: any
	end
	if pluginGui then
		local uriString = StudioUri.toString(widgetUri)
		self._registeredWidgets[uriString] = gui
		self._pendingRegisters[uriString] = { Uri = widgetUri, Widget = gui, DEPRECATED_PluginGui = pluginGui }
		self._pendingDeregisters[uriString] = nil
		self:_run()
	end
end

function WidgetManager.deregister(self: WidgetManager, widgetUri: StudioUri, gui: GuiBase2d?)
	local uriString = StudioUri.toString(widgetUri)
	self._pendingDeregisters[uriString] = widgetUri
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
	self._signals = {}
	self._pendingRegisters = {}
	self._pendingDeregisters = {}
	self._registeredWidgets = {}
end

return WidgetManager
