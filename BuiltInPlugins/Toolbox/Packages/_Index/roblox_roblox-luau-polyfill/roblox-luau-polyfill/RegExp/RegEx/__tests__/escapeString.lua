local ESCAPES = {
	["\n"] = "n",
	["\r"] = "r",
	["\t"] = "t",
	["\f"] = "f",
	["\a"] = "a",
	["\v"] = "v",
	["\\"] = "\\",
}
local ESCAPE_CHARS = {}
for char in pairs(ESCAPES) do
	table.insert(ESCAPE_CHARS, char)
end
local ESCAPE_CLASS = ("[%s%%c]"):format(table.concat(ESCAPE_CHARS, ""))

local function escapeString(str)
	return str:gsub(ESCAPE_CLASS, function(match)
		return "\\" .. (ESCAPES[match] or ("%03d"):format(match:byte()))
	end)
end

return escapeString
