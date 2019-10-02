local Root = script.Parent.Parent
local UnorderedMap = require(Root.UnorderedMap.UnorderedMap)

local UnorderedSet = {}

UnorderedSet.__index = UnorderedSet

--[[
	Create a new UnorderedSet from any number of keys
]]
function UnorderedSet.new(...)
	local keyMap = UnorderedSet._unpackedToTrueMap(...)

	local self = {
		internalMap = UnorderedMap.new(keyMap),
		_immutableDataStructureType = UnorderedSet,
	}

	setmetatable(self, UnorderedSet)

	return self
end

--[[
	Internal method that absorbs an existing Unorderedmap as the underlying data structure for a
	new UnorderedSet.
]]
function UnorderedSet._newCannibalizeMap(unorderedMap)
	local self = {
		internalMap = unorderedMap,
		_immutableDataStructureType = UnorderedSet,
	}

	setmetatable(self, UnorderedSet)

	return self
end

--[[
	Internal method that takes an unpacked list of values (...) and transforms it into a table
	in which each value is a key with value true.
]]
function UnorderedSet._unpackedToTrueMap(...)
	local keyMap = {}
	local len = select("#", ...)
	for i = 1, len do
		keyMap[select(i, ...)] = true
	end
	return keyMap
end

--[[
	Returns if a value is an UnorderedSet.
]]
function UnorderedSet.is(value)
	if type(value) ~= "table" then
		return false
	end
	return value._immutableDataStructureType == UnorderedSet
end

--[[
	Returns true if a key is in the set, false otherwise.
]]
function UnorderedSet:find(id)
	return self.internalMap:get(id) ~= nil
end

--[[
	Returns a new UnorderedSet, inserting a number of values into the set.
]]
function UnorderedSet:insert(...)
	local keyMap = UnorderedSet._unpackedToTrueMap(...)
	local newMap = self.internalMap:batchSet(keyMap)
	return UnorderedSet._newCannibalizeMap(newMap)
end

--[[
	Returns a copy of the table of all of the keys in the map.
]]
function UnorderedSet:getKeys()
	return self.internalMap:getKeys()
end

--[[
	Return the number of keys in the set.
]]
function UnorderedSet:size()
	return self.internalMap:size()
end

--[[
	Returns a new UnorderedSet, removing a number of values into the set.
]]
function UnorderedSet:remove(...)
	local newMap = self.internalMap:remove(...)
	return UnorderedSet._newCannibalizeMap(newMap)
end

--[[
	Returns a (shallow) copy of the UnorderedSet.
]]
function UnorderedSet:copy()
	local newMap = self.internalMap:copy()
	return UnorderedSet._newCannibalizeMap(newMap)
end

--[[
	Create a new UnorderedSet, applying the given predicate to each element in
	this OrderedSet.

	Predicate should have the signature
		predicate(key) -> newKey

	Analogous to 'map' on a list.
]]
function UnorderedSet:map(predicate)
	local alteredPredicate = function(_, key)
		return nil, predicate(key)
	end
	local newMap = self.internalMap:map(alteredPredicate)
	return UnorderedSet._newCannibalizeMap(newMap)
end

--[[
	Create a new OrderedSet, where each key is included iff callback(key) is truthy.

	callback should be a function of signature
		callback(key) -> bool
]]
function UnorderedSet:filter(callback)
	local alteredCallback = function(_, key)
		return callback(key)
	end
	local newMap = self.internalMap:filter(alteredCallback)
	return UnorderedSet._newCannibalizeMap(newMap)
end

--[[
	Union any number of UnorderedSets.
]]
function UnorderedSet:union(...)
	local internalMaps = {}
	local len = select("#", ...)
	for i = 1, len do
		internalMaps[i] = select(i, ...).internalMap
	end
	local newMap = self.internalMap:join(unpack(internalMaps))
	return UnorderedSet._newCannibalizeMap(newMap)
end

--[[
	Find the difference between any number UnorderedSets.
	The behavior of A:difference(B, C, D) is equivalent to the behavior of
	A:difference(B:union(C, D)).
]]
function UnorderedSet:difference(...)
	local newSet = UnorderedSet.new()
	local len = select("#", ...)
	for key in self:iterator() do
		local shouldRemain = true
		for i = 1, len do
			if select(i, ...):find(key) then
				shouldRemain = false
				break
			end
		end
		if shouldRemain then
			newSet.internalMap:_insertPairInPlace(key, true)
		end
	end
	return newSet
end


--[[
	Intersect any number of UnorderedSets.
]]
function UnorderedSet:intersection(...)
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
	Returns an iterator for the UnorderedSet.
	Keys are returned in an undefined order.
	Example:
	for key in orderedSet:iterator() do
]]
function UnorderedSet:iterator()
	local alteredNext = function(table, key)
		return (next(table, key))
	end
	return alteredNext, self.internalMap.pairs
end

--[[
	Specify the behavior of deepJoin for UnorderedSet.
]]
UnorderedSet.deepJoin = UnorderedSet.union

UnorderedSet.join = UnorderedSet.union

return UnorderedSet