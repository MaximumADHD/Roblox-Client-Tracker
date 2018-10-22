local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local pluginGuiKey = require(Plugin.Core.Keys.pluginGuiKey)
local pluginKey = require(Plugin.Core.Keys.pluginKey)

local PluginProvider = Roact.PureComponent:extend("PluginProvider")

function PluginProvider:init(props)
	self._context[pluginKey] = props.plugin
	self._context[pluginGuiKey] = props.pluginGui
end

function PluginProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return PluginProvider
