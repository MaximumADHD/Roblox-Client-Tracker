--!strict
local Array = script.Parent
local isArray = require(Array.isArray)
type Array<T> = { [number]: T }

local RECEIVED_OBJECT_ERROR = "Array.concat(...) only works with array-like tables but "
	.. "it received an object-like table.\nYou can avoid this error by wrapping the "
	.. "object-like table into an array. Example: `concat({1, 2}, {a = true})` should "
	.. "be `concat({1, 2}, { {a = true} }`"

-- capture two separate generic arguments so that the type error in abuse cases is actionable, but needs CLI-49876 to avoid a false negative
local function concat<T, S>(source: Array<T> | T, ...: Array<S> | S): Array<T> & Array<S>
	local array = {}
	local elementCount = 0

	if isArray(source) then
		for _, value in ipairs(source :: Array<T>) do
			elementCount += 1
			array[elementCount] = value
		end
	else
		elementCount += 1
		array[elementCount] = source :: T
	end

	for i = 1, select("#", ...) do
		local value = select(i, ...)
		local valueType = typeof(value)
		if value == nil then
			-- do not insert nil
		elseif valueType == "table" then
			-- deviation: assume that table is an array, to avoid the expensive
			-- `isArray` check. In DEV mode, we throw if it is given an object-like
			-- table.
			if _G.__DEV__ then
				if not isArray(value) then
					error(RECEIVED_OBJECT_ERROR)
				end
			end
			for k = 1, #value do
				elementCount += 1
				array[elementCount] = value[k]
			end
		else
			elementCount += 1
			array[elementCount] = value
		end
	end

	return (array :: any) :: Array<T> & Array<S>
end

return concat
