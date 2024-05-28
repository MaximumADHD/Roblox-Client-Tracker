--!strict
local Array = script.Parent
local isArray = require(Array.isArray)
local LuauPolyfill = Array.Parent
local types = require(LuauPolyfill.types)
type Array<T> = types.Array<T>

return function<T>(value: Array<T>): T?
	if _G.__DEV__ then
		if not isArray(value) then
			error(string.format("Array.shift called on non-array %s", typeof(value)))
		end
	end

	if #value > 0 then
		return table.remove(value, 1)
	else
		return nil
	end
end
