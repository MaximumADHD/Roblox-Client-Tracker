local pluginKey = newproxy(true)

getmetatable(pluginKey).__tostring = function()
	return "Symbol(Plugin)"
end

return pluginKey
