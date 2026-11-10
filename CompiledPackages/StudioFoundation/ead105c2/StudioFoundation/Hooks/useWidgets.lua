local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local Dash = require(Packages.Dash)
local filter = Dash.filter
local values = Dash.values
local insert = table.insert

local Framework = require(Packages.Framework)
local Plugin = Framework.ContextServices.Plugin

local StudioUri = require(Main.Util.StudioUri)

type WidgetSignals = {
	Widget: Instance,
	PositionChanged: RBXScriptConnection,
	SizeChanged: RBXScriptConnection,
	VisibleChanged: RBXScriptConnection,
	AncestryChanged: RBXScriptConnection,
}

local widgets = {
	Widgets = (nil :: any) :: Widgets,
	pendingRegisters = {},
	pendingDeregisters = {},
	registeredWidgets = {},
	running = false,
	signals = {} :: { [string]: WidgetSignals },
}

function widgets:flush()
	local deregisterUris = {}
	for uriString, uri in self.pendingDeregisters do
		insert(deregisterUris, uri)
		widgets.registeredWidgets[uriString] = nil
	end
	if #deregisterUris > 0 then
		pcall(function()
			-- TODO STUDIOPLAT-35337 Work out why widget deregister sometimes throws warnings
			self.Widgets:DeregisterAsync(deregisterUris)
		end)
	end
	self.pendingDeregisters = {}
	local list = filter(values(self.pendingRegisters), function(entry)
		return entry.Widget:FindFirstAncestorWhichIsA("LayerCollector") ~= nil
	end)
	for _, entry in list do
		-- Add the current position, size and visibility of each widget
		entry.Position = entry.Widget.AbsolutePosition
		entry.Size = entry.Widget.AbsoluteSize
		entry.Visible = entry.Widget:GetStyled("Visible")
		local uriString = StudioUri.toString(entry.Uri)
		-- Listen to changes
		local currentSignals = self.signals[uriString]
		if currentSignals then
			if currentSignals.Widget ~= entry.Widget then
				-- If the widget has changed, disconnect the old signals
				currentSignals.PositionChanged:Disconnect()
				currentSignals.SizeChanged:Disconnect()
				currentSignals.VisibleChanged:Disconnect()
				currentSignals.AncestryChanged:Disconnect()
			else
				continue
			end
		end
		self.signals[uriString] = {
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
		self.Widgets:RegisterAsync(list)
	end
	self.pendingRegisters = {}
end

-- Debounce registered/deregistered widgets
-- asynchronously to take advantage of batching across multiple
-- isolated React render calls
function widgets:run()
	if widgets.running then
		return
	end
	widgets.running = true
	task.defer(function()
		widgets.running = false
		widgets:flush()
	end)
end

function widgets:register(widgetUri: StudioUri, gui: GuiBase2d)
	-- TODO When FFlagStudioLuaWidgetObserverRemoveListeners is retired we can delete DEPRECATED_PluginGui
	local pluginGui = gui:FindFirstAncestorWhichIsA("PluginGui")
	-- Tests do not support PluginGui
	if not pluginGui then
		pluginGui = gui:FindFirstAncestorWhichIsA("ScreenGui") :: any
	end
	if pluginGui then
		local uriString = StudioUri.toString(widgetUri)
		self.registeredWidgets[uriString] = gui
		self.pendingRegisters[uriString] = { Uri = widgetUri, Widget = gui, DEPRECATED_PluginGui = pluginGui }
		self.pendingDeregisters[uriString] = nil
		widgets:run()
	end
end

function widgets:deregister(widgetUri: StudioUri, gui: GuiBase2d?)
	local uriString = StudioUri.toString(widgetUri)
	self.pendingDeregisters[uriString] = widgetUri
	local signals = self.signals[uriString]
	if signals and signals.Widget == gui then
		signals.PositionChanged:Disconnect()
		signals.SizeChanged:Disconnect()
		signals.VisibleChanged:Disconnect()
		signals.AncestryChanged:Disconnect()
		self.signals[uriString] = nil
	end
	widgets:run()
end

local function useWidgets()
	local plugin = Plugin:use():get()
	widgets.Widgets = plugin:GetPluginComponent("Widgets") :: Widgets
	return widgets
end

return useWidgets
