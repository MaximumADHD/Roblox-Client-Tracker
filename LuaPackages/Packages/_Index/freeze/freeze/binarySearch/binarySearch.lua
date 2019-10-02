--[[
	Utility that returns the leftmost index of the occurence of value in a sorted list according to sortPredicate,
	if provided, otherwise <. If not found, returns nil.
]]

local function binarySearch(list, value, sortPredicate)
	sortPredicate = sortPredicate or function(lhs, rhs)
		return lhs < rhs
	end
	local low = 1
	local high = #list
	while low <= high do
		local mid = low + math.floor((high - low) / 2)
		if sortPredicate(value, list[mid]) then
			high = mid - 1
		elseif sortPredicate(list[mid], value) then
			low = mid + 1
		else
			-- Go as left as we can
			while mid >= 1 and not (sortPredicate(list[mid], value) or sortPredicate(value, list[mid])) do
				mid = mid - 1
			end
			return mid + 1
		end
	end
	return nil
end

return binarySearch