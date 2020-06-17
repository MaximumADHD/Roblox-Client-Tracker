local themeKey = newproxy(true)

getmetatable(themeKey).__tostring = function()
	return "Symbol(Localization)"
end

return themeKey