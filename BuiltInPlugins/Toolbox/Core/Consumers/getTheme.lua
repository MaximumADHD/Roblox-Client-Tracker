local Plugin = script.Parent.Parent.Parent

local themeKey = require(Plugin.Core.Keys.themeKey)

return function(component)
	return component._context[themeKey]
end
