local Plugin = script.Parent.Parent.Parent

local pluginGuiKey = require(Plugin.Core.Keys.pluginGuiKey)
local pluginKey = require(Plugin.Core.Keys.pluginKey)

return function(component)
	return component._context[pluginKey], component._context[pluginGuiKey]
end
