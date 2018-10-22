local settingsKey = newproxy(true)

getmetatable(settingsKey).__tostring = function()
	return "Symbol(Settings)"
end

return settingsKey
