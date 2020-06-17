local Plugin = script.Parent.Parent.Parent

local localizationKey = require(Plugin.Src.Keys.localizationKey)

return function(component)
	return component._context[localizationKey].values
end