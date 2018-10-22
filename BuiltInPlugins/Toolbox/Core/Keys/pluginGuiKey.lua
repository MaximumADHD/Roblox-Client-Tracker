local pluginGuiKey = newproxy(true)

getmetatable(pluginGuiKey).__tostring = function()
	return "Symbol(PluginGui)"
end

return pluginGuiKey
