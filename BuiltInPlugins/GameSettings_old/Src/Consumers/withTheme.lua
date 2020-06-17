local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Roact)

local ThemeConsumer = require(Plugin.Src.Consumers.ThemeConsumer)

return function(callback)
	return Roact.createElement(ThemeConsumer, {
		render = callback,
	})
end