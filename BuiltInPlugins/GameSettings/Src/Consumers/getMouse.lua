local Plugin = script.Parent.Parent.Parent

local mouseKey = require(Plugin.Src.Keys.mouseKey)

return function(component)
	return component._context[mouseKey]
end