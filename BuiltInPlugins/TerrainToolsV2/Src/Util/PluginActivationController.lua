--[[
	Manages calling plugin:Activate() and plugin:Deactivate() when we change tools,
	and listening to external plugin.Deactivation signals
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local ContextItem = FFlagTerrainToolsUseDevFramework and Framework.ContextServices.ContextItem or nil
local Provider = FFlagTerrainToolsUseDevFramework and Framework.ContextServices.Provider or nil

local FrameworkUtil = FFlagTerrainToolsUseDevFramework and Framework.Util or nil
local Signal = FFlagTerrainToolsUseDevFramework and FrameworkUtil.Signal or UILibrary.Util.Signal

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local PluginActivationController
if FFlagTerrainToolsUseDevFramework then
	PluginActivationController = ContextItem:extend("PluginActivationController")
else
	PluginActivationController = {}
	PluginActivationController.__index = PluginActivationController
end

function PluginActivationController.new(plugin)
	local self = setmetatable({
		_plugin = plugin,

		_active = false,
		_activeTool = ToolId.None,

		_selectedTool = ToolId.None,

		_pluginDeactivationConnection = nil,

		_onToolActivated = Signal.new(),
		_onToolDeactivated = Signal.new(),
	}, PluginActivationController)

	assert(self._plugin, "PluginActivationController.new() requires a plugin")

	self.onPluginDeactivation = function()
		self:pauseActivatedTool()
	end

	return self
end

if FFlagTerrainToolsUseDevFramework then
	function PluginActivationController:createProvider(root)
		return Roact.createElement(Provider, {
			ContextItem = self,
		}, {root})
	end
end

-- Temporarily deactivates the current tool, and saves it as our selected tool
-- If we're not active, does nothing
-- This is what saves the tool session when e.g. plugin window closes, another ribbon tool/plugin in Studio is activated
function PluginActivationController:pauseActivatedTool()
	if self._activeTool == ToolId.None or not self._active then
		return
	end
	self._selectedTool = self._activeTool
	self:deactivateTool()
end

-- If we're not active and we have a selected tool, activate it
-- Used to bring back the session saved in pauseActivatedTool()
function PluginActivationController:restoreSelectedTool()
	if self._activeTool ~= ToolId.None or self._active or self._selectedTool == ToolId.None then
		return
	end
	self:activateTool(self._selectedTool)
end

function PluginActivationController:subscribeToToolActivated(...)
	return self._onToolActivated:Connect(...)
end

function PluginActivationController:subscribeToToolDeactivated(...)
	return self._onToolDeactivated:Connect(...)
end

function PluginActivationController:getActiveTool()
	return self._activeTool
end

function PluginActivationController:destroy()
	self:deselectTool()

	if self._plugin:IsActivated() then
		self._plugin:Deactivate()
	end
end

-- Marks the given toolId as the current active tool, and activates the plugin
-- Also fires ToolActivated signal
function PluginActivationController:activateTool(toolId)
	assert(toolId ~= ToolId.None, "activateTool requires toolId to not be ToolId.None")

	self._active = true
	self._activeTool = toolId
	self._selectedTool = self._activeTool

	if Constants.ToolActivatesPlugin[toolId] then
		self._plugin:Activate(true)
	end

	if self._pluginDeactivationConnection then
		self._pluginDeactivationConnection:Disconnect()
	end
	self._pluginDeactivationConnection = self._plugin.Deactivation:Connect(self.onPluginDeactivation)

	self._onToolActivated:Fire(toolId)
end

-- Deactivates the current tool and plugin
-- Does not modify selectedTool because you can have a tool selected but not active
-- (e.g. when saving a session)
function PluginActivationController:deactivateTool()
	if self._pluginDeactivationConnection then
		self._pluginDeactivationConnection:Disconnect()
		self._pluginDeactivationConnection = nil
	end

	local oldTool = self._activeTool

	self._active = false
	self._activeTool = ToolId.None

	if self._plugin:IsActivated() then
		self._plugin:Deactivate()
	end

	self._onToolDeactivated:Fire(oldTool)
end

-- Deactivates the current tool, and deselects it
function PluginActivationController:deselectTool()
	self:deactivateTool()
	self._selectedTool = ToolId.None
end

return PluginActivationController
