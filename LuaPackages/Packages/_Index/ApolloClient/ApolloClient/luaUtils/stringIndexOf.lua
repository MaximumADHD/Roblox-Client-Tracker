-- ROBLOX comment: no upstream
-- ROBLOX TODO: replace when added to LuauPolyfill
local exports = {}

local function stringIndexOf(s: string, substring: string)
	local start, _end = string.find(s, substring)

	if start == nil then
		return -1
	else
		return start
	end
end

exports.stringIndexOf = stringIndexOf

return exports
