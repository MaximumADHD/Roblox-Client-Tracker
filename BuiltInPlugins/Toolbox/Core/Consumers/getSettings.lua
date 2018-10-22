local Plugin = script.Parent.Parent.Parent

local settingsKey = require(Plugin.Core.Keys.settingsKey)

return function(component)
	return component._context[settingsKey]
end
