local settingsImplKey = newproxy(true)

getmetatable(settingsImplKey).__tostring = function()
	return "Symbol(SettingsImpl)"
end

return settingsImplKey