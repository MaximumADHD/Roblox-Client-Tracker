-- A marker for context, this can be whatever -- I think using userdata is nice
-- since it'll be unique and won't be mistakenly treated as a value.
local themeKey = newproxy(true)

getmetatable(themeKey).__tostring = function()
	return "Symbol(Theme)"
end

return themeKey