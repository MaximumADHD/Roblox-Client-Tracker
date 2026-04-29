--!strict
--[[
	useWidgets is a hook that registers a widget to be tracked by the WidgetsManager and batches calls to the API
	so many widgets can be created and destroyed at once from separate React renders.
]]
local Framework = script:FindFirstAncestor("UI").Parent

local Types = require(Framework.Types)
type StudioUri = Types.StudioUri

local Dash = require(Framework.Parent.Dash)
local values = Dash.values
local insert = table.insert

local ContextServices = require(Framework.ContextServices)
local Plugin = ContextServices.Plugin

local StudioUri = require(Framework.Util.StudioUri)

local widgets = {
	Widgets = nil :: any,
	pendingRegisters = {},
	pendingDeregisters = {},
	registeredWidgets = {},
	running = false,
}

function widgets:flush()
	local uris = {}
	for uriString, uri in self.pendingDeregisters do
		insert(uris, uri)
		widgets.registeredWidgets[uriString] = nil
	end
	if #uris > 0 then
		pcall(function()
			-- TODO STUDIOPLAT-35337 Work out why widget deregister sometimes throws warnings
			self.Widgets:DeregisterAsync(uris)
		end)
	end
	self.pendingDeregisters = {}
	local list = values(self.pendingRegisters)
	if #list > 0 then
		self.Widgets:RegisterAsync(list)
		self.pendingRegisters = {}
	end
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
	-- ScreenGui in tests
	local pluginGui = gui:FindFirstAncestor("PluginGui") or gui:FindFirstAncestor("ScreenGui")
	if pluginGui then
		local uriString = StudioUri.toString(widgetUri)
		self.registeredWidgets[uriString] = gui
		self.pendingRegisters[uriString] = { Uri = widgetUri, Widget = gui, DEPRECATED_PluginGui = pluginGui }
		self.pendingDeregisters[uriString] = nil
		widgets:run()
	end
end

function widgets:deregister(widgetUri: StudioUri)
	self.pendingDeregisters[StudioUri.toString(widgetUri)] = widgetUri
	widgets:run()
end

local function useWidgets()
	local pluginContext = Plugin.use()
	local plugin = pluginContext:get()
	widgets.Widgets = plugin:GetPluginComponent("Widgets")
	return widgets
end

return useWidgets
