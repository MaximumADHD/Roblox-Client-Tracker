local Plugin = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local ThemeConsumer = require(Plugin.Core.Consumers.ThemeConsumer)

return function(callback)
	return Roact.createElement(ThemeConsumer, {
		render = callback,
	})
end
