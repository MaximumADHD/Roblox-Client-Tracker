--!strict
type Array<T> = { [number]: T }
local map = require(script.Parent.map)

local function join(arr: Array<any>, separator: string?): string
	if #arr == 0 then
		return ""
	end
	-- JS does tostring conversion implicitely but in Lua we need to do that explicitely
	local stringifiedArray = map(arr, function(item)
		return tostring(item)
	end)

	return table.concat(stringifiedArray, separator or ",")
end

return join
