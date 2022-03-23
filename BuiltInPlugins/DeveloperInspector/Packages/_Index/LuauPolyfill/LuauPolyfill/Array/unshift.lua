--!strict
local Array = script.Parent
local isArray = require(Array.isArray)
type Array<T> = { [number]: T }

return function(array: Array<any>, ...): number
	if _G.__DEV__ then
		if not isArray(array) then
			error(string.format("Array.unshift called on non-array %s", typeof(array)))
		end
	end

	local numberOfItems = select("#", ...)
	if numberOfItems > 0 then
		for i = numberOfItems, 1, -1 do
			local toInsert = select(i, ...)
			table.insert(array, 1, toInsert)
		end
	end

	return #array
end
