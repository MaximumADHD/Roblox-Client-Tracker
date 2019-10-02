local Root = script.Parent.Parent
local None = require(Root.None)
local List = require(Root.List.List)
local UnorderedMap = require(Root.UnorderedMap.UnorderedMap)
local binarySearch = require(Root.binarySearch.binarySearch)
local deepJoin = require(Root.deepJoin.deepJoin)
local sort = require(Root.sort.sort)

local OrderedMap = {}

--[[
	Currently, exactly batchSet and join will remove None values.
]]

OrderedMap.__index = OrderedMap

--[[
	A BST implementation is not necessary for an immutable copy-on-write OrderedMap, since
	we cannot take much advantage of O(log n) insert/deletes anyways.
]]

--[[
	Create a new OrderedMap from a sortPredicate and any number of dictionaries of values of the form
	{ [key] = value }
	sortPredicate should be a function with the following signature:
		sortPredicate(key1, key2) -> bool
	returning true if key1 < key2 in the sorting invariant.
]]
function OrderedMap.new(sortPredicate, ...)
	local self = {
		keys = {},
		values = {},
		sortPredicate = sortPredicate or sort.default,
		_immutableDataStructureType = OrderedMap,
	}

	setmetatable(self, OrderedMap)

	OrderedMap._insertInPlace(self, ...)

	return self
end

--[[
	Returns a new UnorderedMap with the same key-value pairs.
]]
function OrderedMap:toUnorderedMap()
	return UnorderedMap._newCannibalizeTable(self.values)
end

--[[
	Returns if a value is an OrderedMap.
]]
function OrderedMap.is(value)
	if type(value) ~= "table" then
		return false
	end
	return value._immutableDataStructureType == OrderedMap
end

--[[
	Returns the value at key.
]]
function OrderedMap:get(key)
	return self.values[key]
end

--[[
	Returns a new OrderedMap, setting the value at key to be value.
]]
function OrderedMap:set(key, value)
	if self:get(key) == nil then
		local new = self:copy()
		new:_insertPairInPlace(key, value)
		return new
	end
	local new = self:copy()
	new.values[key] = value
	return new
end

--[[
	Gets the index-th key, value in the OrderedMap according to the sorting invariant.
]]
function OrderedMap:getByIndex(index)
	local id = self.keys[index]

	if id == nil then
		return nil
	end

	return id, self.values[id]
end

--[[
	Returns a List of all of the values in the map.
]]
function OrderedMap:getValues()
	local new = {}
	for index, key in ipairs(self.keys) do
		new[index] = self.values[key]
	end
	return List._newCannibalizeTable(new)
end

--[[
	Returns a List of all of the keys in the map.
]]
function OrderedMap:getKeys()
	return List._newCannibalizeTable(self.keys)
end

--[[
	Returns the size (number of key-value pairs) of the map.
]]
function OrderedMap:size()
	return #self.keys
end

--[[
	Returns a new OrderedMap with the pairs at all given keys removed.
]]
function OrderedMap:remove(...)
	local new = OrderedMap.new(self.sortPredicate)

	local len = select("#", ...)

	local newKeys = new.keys
	local newValues = new.values

	for key, value in pairs(self.values) do
		newValues[key] = value
	end

	for i = 1, len do
		local key = select(i, ...)

		newValues[key] = nil
	end

	for _, value in ipairs(self.keys) do
		if new.values[value] ~= nil then
			newKeys[#(newKeys)+1] = value
		end
	end

	return new
end

--[[
	Internal method for removing a value from the map, in place.
]]
function OrderedMap:_removeInPlace(key)
	self.values[key] = nil
	local indexToRemove = binarySearch(self.keys, key, self.sortPredicate)
	if not indexToRemove then
		return
	end
	table.remove(self.keys, indexToRemove)
end

--[[
	Joins any number of (basic table) dictionaries of values of the form
	{ [key] = value }
	into the OrderedMap, creating a new OrderedMap.
]]
function OrderedMap:batchSet(...)
	local new = self:copyRemoveNone()
	new:_insertInPlaceRemoveNone(...)
	return new
end

--[[
	Creates a (shallow) copy of the OrderedMap.
]]
function OrderedMap:copy()
	local new = OrderedMap.new(self.sortPredicate)

	local newKeys = new.keys
	local newValues = new.values

	for key, value in ipairs(self.keys) do
		newKeys[key] = value
	end

	for key, value in pairs(self.values) do
		newValues[key] = value
	end

	return new
end

--[[
	Creates a (shallow) copy of the OrderedMap, with all pairs with value None removed.
]]
function OrderedMap:copyRemoveNone()
	local new = OrderedMap.new(self.sortPredicate)

	local newKeys = new.keys
	local newValues = new.values

	for key, value in ipairs(self.keys) do
		if self.values[value] ~= None then
			newKeys[key] = value
		end
	end

	for key, value in pairs(self.values) do
		if value ~= None then
			newValues[key] = value
		end
	end

	return new
end


--[[
	Returns the first key, value in the OrderedMap.
]]
function OrderedMap:first()
	if self.keys[1] then
		return self.keys[1], self:get(self.keys[1])
	end
end

--[[
	Returns the last key, value in the OrderedMap.
]]
function OrderedMap:last()
	local i = #self.keys
	if self.keys[i] then
		return self.keys[i], self:get(self.keys[i])
	end
end

--[[
	Create a new OrderedMap, applying the given predicate to each element in
	this OrderedMap.

	Predicate should have the signature
	predicate(value, key) -> newValue, newKey

	Analogous to 'map' on a list.
]]
function OrderedMap:map(predicate)
	local new = OrderedMap.new(self.sortPredicate)
	local keyChanged = false
	for key, value in self:iterator() do
		local newValue, newKey = predicate(value, key)
		newKey = newKey or key
		newValue = newValue or value
		if key ~= newKey then
			keyChanged = true
		end
		new:_insertPairInPlaceUnsorted(newKey, newValue)
	end

	if keyChanged then
		new:_sortInPlace()
	end

	return new
end

--[[
	Create a new OrderedMap, where each key-value pair is included iff callback(value, key) is truthy.

	callback should be a function of signature
		callback(value, key) -> bool
]]
function OrderedMap:filter(callback)
	local new = OrderedMap.new(self.sortPredicate)
	for key, value in self:iterator() do
		if callback(value, key) then
			new:_insertPairInPlaceUnsorted(key, value)
		end
	end

	new:_sortInPlace()
	return new
end

--[[
	Join any number of OrderedMaps. The sorting comparator of the leftmost argument/self is
	used for the returned OrderedMap.
]]
function OrderedMap:join(...)
	local new = self:copyRemoveNone()

	for i = 1, select("#", ...) do
		local other = select(i, ...)

		if other:size() > 0 then
			for key, value in other:iterator() do
				new:_insertPairInPlaceUnsortedRemoveNone(key, value)
			end
		end
	end

	new:_sortInPlace()

	return new
end

--[[
	Internal method for inserting values without sorting the map.

	This means that the invariants that the map exposes will be broken until
	the _sortInPlace() method is called.
]]
function OrderedMap:_insertInPlaceUnsorted(...)
	local len = select("#", ...)
	for i = 1, len do
		local pair = select(i, ...)
		for key, value in pairs(pair) do
			self:_insertPairInPlaceUnsorted(key, value)
		end
	end
end

--[[
	Internal method for inserting a single pair without sorting the map.

	This means that the invariants that the map exposes will be broken until
	the _sortInPlace() method is called.
]]
function OrderedMap:_insertPairInPlaceUnsorted(key, value)
	if self.values[key] == nil then
		table.insert(self.keys, key)
	end
	self.values[key] = value
end

--[[
	Internal method for inserting values without sorting the map, removing None instances.

	This means that the invariants that the map exposes will be broken until
	the _sortInPlace() method is called.
]]
function OrderedMap:_insertInPlaceUnsortedRemoveNone(...)
	local len = select("#", ...)
	for i = 1, len do
		local pair = select(i, ...)
		for key, value in pairs(pair) do
			self:_insertPairInPlaceUnsortedRemoveNone(key, value)
		end
	end
end

--[[
	Internal method for inserting a single pair without sorting the map, removing None instances.

	This means that the invariants that the map exposes will be broken until
	the _sortInPlace() method is called.
]]
function OrderedMap:_insertPairInPlaceUnsortedRemoveNone(key, value)
	if value == None then
		self:_removeInPlace(key)
	else
		if self.values[key] == nil then
			table.insert(self.keys, key)
		end
		self.values[key] = value
	end
end

--[[
	Sorts the map; used in cases where the map would become out-of-order when
	using internal recommendations.
]]
function OrderedMap:_sortInPlace()
	table.sort(self.keys, self.sortPredicate)
end

--[[
	Returns an iterator for the OrderedMap.
	Example:
	for key, value in orderedMap:iterator() do
]]
function OrderedMap:iterator()
	local i = 0
	local length = #self.keys

	-- Iterator function
	return function()
		i = i + 1
		if i <= length then
			local key = self.keys[i]
			return key, self.values[key], i
		end
	end
end

--[[
	Returns an iterator for the OrderedMap that traverses in the reverse direction.
	Example:
	for key, value in orderedMap:reverseIterator() do
]]
function OrderedMap:reverseIterator()
	local i = #self.keys + 1

	-- Iterator function
	return function()
		i = i - 1
		if i > 0 then
			local key = self.keys[i]
			return key, self.values[key], i
		end
	end
end

--[[
	Internal function that inserts the given values into the map in-place.
	Expects { [key] = value } dictionaries.

	This operation mutates the map; generally you should use set or batchSet instead.
]]
function OrderedMap:_insertInPlace(...)
	self:_insertInPlaceUnsorted(...)
	self:_sortInPlace()
end

--[[
	Internal function that inserts the given pair into the map in-place.

	This operation mutates the map; generally you should use set or batchSet instead.
]]
function OrderedMap:_insertPairInPlace(key, value)
	self:_insertPairInPlaceUnsorted(key, value)
	self:_sortInPlace()
end

--[[
	Internal function that inserts the given values into the map in-place, removing None instances.
	Expects { [key] = value } dictionaries.

	This operation mutates the map; generally you should use set or batchSet instead.
]]
function OrderedMap:_insertInPlaceRemoveNone(...)
	self:_insertInPlaceUnsortedRemoveNone(...)
	self:_sortInPlace()
end

--[[
	Specify the behavior of deepJoin for OrderedMap.
]]
function OrderedMap:deepJoin(rhs)
	local newMap = OrderedMap.new(self.sortPredicate)
	for lhsKey, lhsValue in self:iterator() do
		local rhsValue = rhs:get(lhsKey)
		if rhsValue then
			if type(rhsValue) == "table" and type(lhsValue) == "table" then
				newMap:_insertPairInPlaceUnsorted(lhsKey, deepJoin(lhsValue, rhsValue))
			else
				if rhsValue ~= None then
					newMap:_insertPairInPlaceUnsorted(lhsKey, rhsValue)
				end
			end
		else
			if lhsValue ~= None then
				newMap:_insertPairInPlaceUnsorted(lhsKey, lhsValue)
			end
		end
	end

	-- Copy over rhs keys that aren't in lhs
	for rhsKey, rhsValue in rhs:iterator() do
		local lhsValue = self:get(rhsKey)
		if not lhsValue and rhsValue ~= None then
			newMap:_insertPairInPlaceUnsorted(rhsKey, rhsValue)
		end
	end

	newMap:_sortInPlace()
	return newMap
end

return OrderedMap