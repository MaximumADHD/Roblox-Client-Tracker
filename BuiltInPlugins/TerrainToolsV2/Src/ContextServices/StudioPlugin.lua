assert(not game:GetFastFlag("TerrainToolsUseDevFramework"),
	"TerrainTools StudioPlugin.lua should not be used when FFlagTerrainToolsUseDevFramework is on")

--[[
	The 'plugin' keyword is only exposed to the main.server.lua script context, so
	the PluginProvider allows the plugin to be accessed at any level.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Symbol = require(Plugin.Src.Util.Symbol)

local pluginKey = Symbol.named("StudioPlugin")

local PluginProvider = Roact.PureComponent:extend("PluginProvider")

function PluginProvider:init()
	local studioPlugin = self.props.plugin
	assert(studioPlugin ~= nil, "PluginProvider expected to be given the plugin")
	self._context[pluginKey] = studioPlugin
end

function PluginProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

local function getPlugin(component)
	assert(component ~= nil, "A component must be provided")
	assert(component._context[pluginKey] ~= nil, "A PluginProvider was not put into the Roact tree")
	return component._context[pluginKey]
end

return {
	Provider = PluginProvider,
	getPlugin = getPlugin,
}
