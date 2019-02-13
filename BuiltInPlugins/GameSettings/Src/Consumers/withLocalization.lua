local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)

local LocalizationConsumer = require(Plugin.Src.Consumers.LocalizationConsumer)

return function(callback)
	return Roact.createElement(LocalizationConsumer, {
		render = callback,
	})
end