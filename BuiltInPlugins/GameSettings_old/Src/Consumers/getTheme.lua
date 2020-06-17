local Plugin = script.Parent.Parent.Parent

local themeKey = require(Plugin.Src.Keys.themeKey)

return function(component)
	return component._context[themeKey].values
end