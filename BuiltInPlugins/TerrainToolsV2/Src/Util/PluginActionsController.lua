local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local ContextItem = ContextServices.ContextItem
local PluginActions = ContextServices.PluginActions
local Provider = ContextServices.Provider

local PluginActionsController = ContextItem:extend("PluginActionsController")

function PluginActionsController.new(plugin, pluginActions)
	assert(plugin, "PluginActionsController.new() requires a plugin")

	local self = setmetatable({
		_pluginActions = PluginActions.new(plugin, pluginActions)
	}, PluginActionsController)

	return self
end

function PluginActionsController:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function PluginActionsController:Enable(id)
	self:SetEnabled(id, true)
end

function PluginActionsController:Disable(id)
	self:SetEnabled(id, false)
end

function PluginActionsController:SetEnabled(id, enabled)
	self._pluginActions:get(id).Enabled = enabled
end

function PluginActionsController:Connect(id, callback)
	return self._pluginActions:get(id).Triggered:Connect(callback)
end

return PluginActionsController
