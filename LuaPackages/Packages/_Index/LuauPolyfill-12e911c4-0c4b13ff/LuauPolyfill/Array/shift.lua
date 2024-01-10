--!strict
local Array = script.Parent
local isArray = require(Array.isArray)
type Array<T> = { [number]: T }

return function(value: Array<any>): any?
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
