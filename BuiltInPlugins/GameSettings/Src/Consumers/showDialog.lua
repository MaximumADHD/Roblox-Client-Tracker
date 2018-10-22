--Gets the showDialog function passed from context.

local Plugin = script.Parent.Parent.Parent

local dialogKey = require(Plugin.Src.Keys.dialogKey)

return function(component, ...)
	return component._context[dialogKey](...)
end