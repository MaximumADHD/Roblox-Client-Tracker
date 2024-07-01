--!strict
local LuauPolyfill = script.Parent.Parent
local None = require(LuauPolyfill.Object.None)
local types = require(LuauPolyfill.types)
type Array<T> = types.Array<T>
type Comparable = (any, any) -> number
local defaultSort = function<T>(a: T, b: T): boolean
	return type(a) .. tostring(a) < type(b) .. tostring(b)
end

return function<T>(array: Array<T>, compare: Comparable?): Array<T>
	-- wrapperCompare interprets compare return value to be compatible with Lua's table.sort
	local wrappedCompare = defaultSort
	if compare ~= nil and compare ~= None then
		if typeof(compare :: any) ~= "function" then
			error("invalid argument to Array.sort: compareFunction must be a function")
		end
		wrappedCompare = function<T>(a: T, b: T)
			local result = compare(a, b)
			if typeof(result) ~= "number" then
				-- deviation: throw an error because
				-- it's not clearly defined what is
				-- the behavior when the compare function
				-- does not return a number
				error(("invalid result from compare function, expected number but got %s"):format(typeof(result)))
			end
			return result < 0
		end
	end
	table.sort(array, wrappedCompare)
	return array
end
