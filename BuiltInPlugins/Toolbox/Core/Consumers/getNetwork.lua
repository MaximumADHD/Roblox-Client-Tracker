local Plugin = script.Parent.Parent.Parent

local networkInterfaceKey = require(Plugin.Core.Keys.networkInterfaceKey)

return function(component)
	return component._context[networkInterfaceKey]
end
