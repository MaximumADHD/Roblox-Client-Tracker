local themeKey = newproxy(true)

getmetatable(themeKey).__tostring = function()
	return "Symbol(Theme)"
end

return themeKey