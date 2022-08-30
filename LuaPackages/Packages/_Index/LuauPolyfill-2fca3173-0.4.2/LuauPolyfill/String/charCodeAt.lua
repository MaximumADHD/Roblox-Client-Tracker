--!strict
local String = script.Parent
local LuauPolyfill = String.Parent
local Number = require(LuauPolyfill.Number)

local NaN = Number.NaN

-- js  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/charCodeAt
-- lua http://www.lua.org/manual/5.4/manual.html#pdf-utf8.codepoint
return function(str: string, index: number): number
	if typeof(index) ~= "number" then
		index = 1
	end

	local strLen, invalidBytePosition = utf8.len(str)
	assert(strLen ~= nil, ("string `%s` has an invalid byte at position %s"):format(str, tostring(invalidBytePosition)))
	if index > strLen or index < 1 then
		return NaN
	end

	local offset = utf8.offset(str, index)
	local value = utf8.codepoint(str, offset, offset)

	if value == nil then
		return NaN
	end

	return value
end
