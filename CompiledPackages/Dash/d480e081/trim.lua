--[[
	Remove any whitespace at the start and end of the _input_ string.
]]
local function trim(input: string): string
	return input:match("^%s*(.-)%s*$") :: string
end

return trim
