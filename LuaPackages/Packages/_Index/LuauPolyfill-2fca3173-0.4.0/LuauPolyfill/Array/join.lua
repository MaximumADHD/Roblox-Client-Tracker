--!strict
local LuauPolyfill = script.Parent.Parent
local types = require(LuauPolyfill.types)
type Array<T> = types.Array<T>
local map = require(script.Parent.map)

return function<T>(arr: Array<T>, separator: string?): string
	if #arr == 0 then
		return ""
	end
	-- JS does tostring conversion implicitely but in Lua we need to do that explicitely
	local stringifiedArray = map(arr, function(item)
		return tostring(item)
	end)

	return table.concat(stringifiedArray, separator or ",")
end
