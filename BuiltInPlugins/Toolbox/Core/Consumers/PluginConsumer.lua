local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local getPlugin = require(Plugin.Core.Consumers.getPlugin)

local PluginConsumer = Roact.Component:extend("PluginConsumer")

function PluginConsumer:init()
	self.plugin, self.pluginGui = getPlugin(self)
end

function PluginConsumer:render()
	return self.props.render(self.plugin, self.pluginGui)
end

return PluginConsumer
