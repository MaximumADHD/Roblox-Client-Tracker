type Array<T> = { [number]: T }
type Comparable = (any, any) -> number
local function defaultSort(a, b)
	return tostring(a) < tostring(b)
end

local function sort(array: Array<any>, compare: Comparable?)
	local wrappedCompare = defaultSort
	if compare ~= nil then
		if typeof(compare) ~= "function" then
			error("invalid argument to Array.sort: compareFunction must be a function")
		end
		wrappedCompare = function(a, b)
			local result = (compare :: Comparable)(a, b)
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

return sort
