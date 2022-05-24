--!strict
type Array = { [number]: any }
type Function = (any, any, number, any) -> any

-- Implements Javascript's `Array.prototype.reduce` as defined below
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce
local function reduce(array: Array, callback: Function, initialValue: any?): any
	if typeof(array) ~= "table" then
		error(string.format("Array.reduce called on %s", typeof(array)))
	end
	if typeof(callback) ~= "function" then
		error("callback is not a function")
	end

	local length = #array

	local value
	local initial = 1

	if initialValue ~= nil then
		value = initialValue
	else
		initial = 2
		if length == 0 then
			error("reduce of empty array with no initial value")
		end
		value = array[1]
	end

	for i = initial, length do
		value = callback(value, array[i], i, array)
	end

	return value
end

return reduce
