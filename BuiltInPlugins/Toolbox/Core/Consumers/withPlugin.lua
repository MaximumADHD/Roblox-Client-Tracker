local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local PluginConsumer = require(Plugin.Core.Consumers.PluginConsumer)

return function(callback)
	return Roact.createElement(PluginConsumer, {
		render = callback,
	})
end
