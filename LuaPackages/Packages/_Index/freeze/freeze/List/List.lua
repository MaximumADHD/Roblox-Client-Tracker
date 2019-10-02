local Root = script.Parent.Parent
local Cryo = require(Root.Parent.Cryo)
local binarySearch = require(Root.binarySearch.binarySearch)

local List = {}

List.__index = List

--[[
	Create a new List from a list of values
]]
function List.new(...)
	local self = {
		values = {},
		_immutableDataStructureType = List,
	}

	setmetatable(self, List)

	List._insertInPlace(self, 1, ...)

	return self
end

--[[
	Internal method that absorbs an existing list-style table as the underlying data.
]]
function List._newCannibalizeTable(tab)
	local self = {
		values = tab,
		_immutableDataStructureType = List,
	}

	setmetatable(self, List)

	return self
end

--[[
	Check if a given value is a list.
]]
function List.is(object)
	if type(object) ~= "table" then
		return false
	end
	return object._immutableDataStructureType == List
end

--[[
	Creates a new List from a list-style table.
]]
function List.newFromListTable(table)
	return List.new(unpack(table))
end

--[[
	Returns the size of a List.
]]
function List:size()
	return #self.values
end

--[[
	Creates a (shallow) copy of a list.
]]
function List:copy()
	return List.new(unpack(self.values))
end

--[[
	Returns the (read only) value at the index.
]]
function List:get(index)
	assert(index >= 1 and index <= #self.values, "Index out of bounds!")
	return self.values[index]
end

--[[
	Creates a new List at which the value at index is changed to value.
]]
function List:set(index, value)
	assert(value ~= nil, "Cannot set a value to nil. Use remove() to remove values")
	assert(1 <= index and index <= #self.values, "Index out of bounds!")
	local new = self:copy()
	new.values[index] = value
	return new
end

--[[
	Expects (any number of) dictionaries of the form { [index] = value }.
	Preferred for when multiple sets are needed repeatedly,
	as this version does no intermediate copying.
]]
function List:batchSet(...)
	local new = self:copy()
	local length = select("#", ...)
	local values = new.values
	for i = 1, length do
		local pair = select(i, ...)
		for key, value in pairs(pair) do
			assert(1 <= key and key <= #values)
			values[key] = value
		end
	end
	return new
end

--[[
	Creates a new List where the element at index is deleted.
]]
function List:remove(index)
	assert(index >= 1 and index <= #self.values, "Index out of bounds!")
	local new = self:copy()
	table.remove(new.values, index)
	return new
end

--[[
	Creates a new List where the elements are inserted at index.
]]
function List:insert(index, ...)
	assert(index >= 1 and index <= #self.values + 1, "Index out of bounds!")
	local new = self:copy()
	new:_insertInPlace(index, ...)
	return new
end

--[[
	Push a value onto the end of the list.
]]
function List:pushBack(value)
	return self:insert(#self.values + 1, value)
end

--[[
	Push a value onto the front of the list.
]]
function List:pushFront(value)
	return self:insert(1, value)
end

--[[
	Pop a value from the back of the list.
]]
function List:popBack()
	return self:remove(#self.values)
end

--[[
	Pop a value from the front of the list.
]]
function List:popFront()
	return self:remove(1)
end

--[[
	Returns a (shallow) copy of the underlying table.
]]
function List:toTable()
	local new = self:copy()
	return new.values
end

--[[
	Internal method that inserts a number of values in place.
]]
function List:_insertInPlace(index, ...)
	local length = select("#", ...)
	if length == 0 then
		return
	end
	self:_shift(index, length)
	local values = self.values
	for i = 0, length - 1 do
		values[i + index] = select(i + 1, ...)
	end
end

--[[
	Internal method that shifts over a number of values to make space for insertion.
]]
function List:_shift(index, numPlacesToShift)
	local values = self.values
	for i = #self.values, index, -1 do
		values[i + numPlacesToShift] = values[i]
		values[i] = nil
	end
end

--[[
	Create a copy of the List with only values for which `callback` returns true.
	Calls the callback with (value, index).
]]
function List:filter(callback)
	local new = Cryo.List.filter(self.values, callback)
	return List._newCannibalizeTable(new)
end

--[[
	Create a copy of the List doing a combination filter and map.

	If callback returns nil for any item, it is considered filtered from the
	list. Any other value is considered the result of the 'map' operation.
]]
function List:filterMap(callback)
	local new = Cryo.List.filterMap(self.values, callback)
	return List._newCannibalizeTable(new)
end

--[[
	Returns the index of the first value found or nil if not found.
]]
function List:find(value)
	return Cryo.List.find(self.values, value)
end

--[[
	Returns the index of the first value for which predicate(value, index) is truthy, or nil if not found.
]]
function List:findWhere(predicate)
	return Cryo.List.findWhere(self.values, predicate)
end

--[[
	Performs a left-fold of the List with the given initial value and callback.
]]
function List:foldLeft(callback, initialValue)
	return Cryo.List.foldLeft(self.values, callback, initialValue)
end

--[[
	Performs a right-fold of the List with the given initial value and callback.
]]
function List:foldRight(callback, initialValue)
	return Cryo.List.foldRight(self.values, callback, initialValue)
end

--[[
	Returns a new List containing only the elements within the given range.
]]
function List:getRange(startIndex, endIndex)
	local new = Cryo.List.getRange(self.values, startIndex, endIndex)
	return List._newCannibalizeTable(new)
end

--[[
	Create a copy of the List where each value is transformed by `callback`
]]
function List:map(callback)
	local new = Cryo.List.map(self.values, callback)
	return List._newCannibalizeTable(new)
end

--[[
	Joins any number of Lists together into a new List
]]
function List:join(...)
	local otherLists = {}
	local len = select("#", ...)
	for i = 1, len do
		otherLists[i] = select(i, ...).values
	end
	local new = Cryo.List.join(self.values, unpack(otherLists))
	return List._newCannibalizeTable(new)
end

--[[
	Create a copy of the List with removing the range from the List starting from the index.
]]
function List:removeRange(startIndex, endIndex)
	local new = Cryo.List.removeRange(self.values, startIndex, endIndex)
	return List._newCannibalizeTable(new)
end

--[[
	Creates a new List that has no occurrences of the given value.
]]
function List:removeValue(value)
	local new = Cryo.List.removeValue(self.values, value)
	return List._newCannibalizeTable(new)
end

--[[
	Returns a new List with the reversed order of the given list
]]
function List:reverse()
	local new = Cryo.List.reverse(self.values)
	return List._newCannibalizeTable(new)
end

--[[
	Returns a new List, ordered with the given sort callback.
	If no callback is given, the default table.sort will be used.
]]
function List:sort(callback)
	local new = Cryo.List.sort(self.values, callback)
	return List._newCannibalizeTable(new)
end

--[[
	Returns an iterator that traverses the List in a forward direction.
	e.g.
	for index, value in list:iterator() do
		...
	end
]]
function List:iterator()
	local i = 0
	local length = #self.values

	return function()
		i = i + 1
		if i <= length then
			return i, self.values[i]
		end
	end
end

--[[
	Returns an iterator that traverses the List in a backward direction.
	e.g.
	for index, value in list:reverseIterator() do
		...
	end
]]
function List:reverseIterator()
	local i = #self.values + 1

	return function()
		i = i - 1
		if i > 0 then
			return i, self.values[i]
		end
	end
end

--[[
	Does a binarySearch in the List, assuming that it is sorted.
	Returns the leftmost index of the occurence of value according to the given comaprator, if provided,
	otherwise <. If not found, returns nil.
]]
function List:binarySearch(value, comparator)
	return binarySearch(self.values, value, comparator)
end

--[[
	Potential TODO:
	Add O(n) methods for sorted Lists (e.g. setIntersection, setUnion, etc.)
]]

--[[
	Specify the behavior of deepJoin for OrderedMap.
]]
List.deepJoin = List.join

return List