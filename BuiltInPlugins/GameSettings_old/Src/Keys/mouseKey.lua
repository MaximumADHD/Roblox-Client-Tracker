local themeKey = newproxy(true)

getmetatable(themeKey).__tostring = function()
	return "Symbol(Mouse)"
end

return themeKey