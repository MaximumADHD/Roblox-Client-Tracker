local function trimString(str)
	return string.match(str, "^%s*(.-)%s*$")
end

return trimString
