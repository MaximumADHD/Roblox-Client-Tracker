local Root = script.Parent.Parent
local OrderedMap = require(Root.OrderedMap.OrderedMap)
local UnorderedSet = require(Root.UnorderedSet.UnorderedSet)
local sort = require(Root.sort.sort)

local OrderedSet = {}

OrderedSet.__index = OrderedSet

--[[
	Create a new OrderedSet from a sortPredicate and any number of keys
	sortPredicate should be a function with the following signature:
		sortPredicate(key1, key2) -> bool
	returning true if key1 < key2 in the sorting invariant.
]]
function OrderedSet.new(sortPredicate, ...)
	sortPredicate = sortPredicate or sort.default
	local keyMap = OrderedSet._unpackedToTrueMap(...)

	local self = {
		internalMap = OrderedMap.new(sortPredicate, keyMap),
		_immutableDataStructureType = OrderedSet,
	}

	setmetatable(self, OrderedSet)

	return self
end

--[[
	Returns a new UnorderedSet with the same entries.
]]
function OrderedSet:toUnorderedSet()
	local newInternalMap = self.internalMap:toUnorderedMap()
	return UnorderedSet._newCannibalizeMap(newInternalMap)
end

--[[
	Internal method that absorbs an existing OrderedMap as the underlying data structure for a
	new OrderedSet.
]]
function OrderedSet._newCannibalizeMap(orderedMap)
	local self = {
		internalMap = orderedMap,
		_immutableDataStructureType = OrderedSet,
	}

	setmetatable(self, OrderedSet)

	return self
end

--[[
	Internal method that takes an unpacked list of values (...) and transforms it into a table
	in which each value is a key with value true.
]]
function OrderedSet._unpackedToTrueMap(...)
	local keyMap = {}
	local len = select("#", ...)
	for i = 1, len do
		keyMap[select(i, ...)] = true
	end
	return keyMap
end

--[[
	Returns if a value is an OrderedSet.
]]
function OrderedSet.is(value)
	if type(value) ~= "table" then
		return false
	end
	return value._immutableDataStructureType == OrderedSet
end

--[[
	Returns true if a key is in the set, false otherwise.
]]
function OrderedSet:find(key)
	return self.internalMap:get(key) ~= nil
end

--[[
	Returns a new OrderedSet, inserting a number of values into the set.
]]
function OrderedSet:insert(...)
	local keyMap = OrderedSet._unpackedToTrueMap(...)
	local newMap = self.internalMap:batchSet(keyMap)
	return OrderedSet._newCannibalizeMap(newMap)
end

--[[
	Gets the index-th key in the OrderedSet according to the sorting invariant.
]]
function OrderedSet:getByIndex(index)
	return (self.internalMap:getByIndex(index))
end

--[[
	Returns a copy of the table of all of the keys in the map.
]]
function OrderedSet:getKeys()
	return self.internalMap:getKeys()
end

--[[
	Return the number of keys in the set.
]]
function OrderedSet:size()
	return self.internalMap:size()
end

--[[
	Returns a new OrderedSet, removing a number of values into the set.
]]
function OrderedSet:remove(...)
	local newMap = self.internalMap:remove(...)
	return OrderedSet._newCannibalizeMap(newMap)
end

--[[
	Returns a (shallow) copy of the OrderedSet.
]]
function OrderedSet:copy()
	local newMap = self.internalMap:copy()
	return OrderedSet._newCannibalizeMap(newMap)
end

--[[
	Returns the first key in the OrderedSet.
]]
function OrderedSet:first()
	return (self.internalMap:first())
end

--[[
	Returns the last key in the OrderedSet.
]]
function OrderedSet:last()
	return (self.internalMap:last())
end

--[[
	Create a new OrderedSet, applying the given predicate to each element in
	this OrderedSet.

	Predicate should have the signature
		predicate(key) -> newKey

	Analogous to 'map' on a list.
]]
function OrderedSet:map(predicate)
	local alteredPredicate = function(_, key)
		return nil, predicate(key)
	end
	local newMap = self.internalMap:map(alteredPredicate)
	return OrderedSet._newCannibalizeMap(newMap)
end

--[[
	Create a new OrderedSet, where each key is included iff callback(key) is truthy.

	callback should be a function of signature
		callback(key) -> bool
]]
function OrderedSet:filter(callback)
	local alteredCallback = function(_, key)
		return callback(key)
	end
	local newMap = self.internalMap:filter(alteredCallback)
	return OrderedSet._newCannibalizeMap(newMap)
end

--[[
	Union any number of OrderedSets. The sorting comparator of the leftmost argument/self is
	used for the returned OrderedSet.
]]
function OrderedSet:union(...)
	local internalMaps = {}
	local len = select("#", ...)
	for i = 1, len do
		internalMaps[i] = select(i, ...).internalMap
	end
	local newMap = self.internalMap:join(unpack(internalMaps))
	return OrderedSet._newCannibalizeMap(newMap)
end

--[[
	Intersect any number of OrderedSets. The sorting comparator of the leftmost argument/self is
	used for the returned OrderedSet.
]]
function OrderedSet:intersection(...)
	local len = select("#", ...)
	local args = { ... }

	local filterer = function(key)
		for i = 1, len do
			local set = args[i]
			if not set:find(key) then
				return false
			end
		end
		return true
	end

	return self:filter(filterer)
end

--[[
	Find the difference between any number OrderedSets. The sorting comparator of the leftmost argument/self is
	used for the returned OrderedSet.
	The behavior of A:difference(B, C, D) is equivalent to the behavior of
	A:difference(B:union(C, D)).
]]
function OrderedSet:difference(...)
	local newSet = OrderedSet.new(self.sortPredicate)
	local len = select("#", ...)
	for _, key in self:iterator() do
		local shouldRemain = true
		for i = 1, len do
			if select(i, ...):find(key) then
				shouldRemain = false
				break
			end
		end
		if shouldRemain then
			newSet.internalMap:_insertPairInPlaceUnsorted(key, true)
		end
	end
	newSet.internalMap:_sortInPlace()
	return newSet
end

--[[
	Returns an iterator for the OrderedSet.
	Example:
	for index, key in orderedSet:iterator() do
]]
function OrderedSet:iterator()
	local i = 0
	local length = self.internalMap:size()

	-- Iterator function
	return function()
		i = i + 1
		if i <= length then
			local key = self:getByIndex(i)
			return i, key
		end
	end
end

--[[
	Returns an iterator for the OrderedSet that traverses in the reverse direction.
	Example:
	for index, key in orderedSet:reverseIterator() do
]]
function OrderedSet:reverseIterator()
	local i = self.internalMap:size() + 1

	-- Iterator function
	return function()
		i = i - 1
		if i > 0 then
			local key = self:getByIndex(i)
			return i, key
		end
	end
end

OrderedSet.join = OrderedSet.union

--[[
	Specify the behavior of deepJoin for OrderedSet.
]]
OrderedSet.deepJoin = OrderedSet.union

return OrderedSet