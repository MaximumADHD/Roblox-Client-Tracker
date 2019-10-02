local Root = script.Parent.Parent
local Cryo = require(Root.Parent.Cryo)
local List = require(Root.List.List)
local None = require(Root.None)
local deepJoin = require(Root.deepJoin.deepJoin)

local UnorderedMap = {}

UnorderedMap.__index = UnorderedMap

--[[
	Create a new UnorderedMap from any number of dictionaries of values of the form
	{ [key] = value }
]]
function UnorderedMap.new(...)
	local self = {
		pairs = {},
		length = 0,
		_immutableDataStructureType = UnorderedMap
	}

	setmetatable(self, UnorderedMap)

	UnorderedMap._insertInPlace(self, ...)

	return self
end

--[[
	Internal method that absorbs an existing table and constructs a new UnorderdMap
	from it as the underlying data.
]]
function UnorderedMap._newCannibalizeTable(tab)
	local count = 0
	for _ in pairs(tab) do
		count = count + 1
	end
	local self = {
		pairs = tab,
		length = count,
		_immutableDataStructureType = UnorderedMap
	}

	setmetatable(self, UnorderedMap)

	return self
end

--[[
	Returns if a value is an UnorderedMap.
]]
function UnorderedMap.is(value)
	if type(value) ~= "table" then
		return false
	end
	return value._immutableDataStructureType == UnorderedMap
end

--[[
	Returns the value at key.
]]
function UnorderedMap:get(key)
	return self.pairs[key]
end

--[[
	Returns a new UnorderedMap, setting the value at key to be value.
]]
function UnorderedMap:set(key, value)
	if self:get(key) == nil then
		self.length = self.length + 1
	end
	local new = self:copy()
	new.pairs[key] = value
	return new
end

--[[
	Returns a List of all of the values in the map.
]]
function UnorderedMap:getValues()
	return List._newCannibalizeTable(Cryo.Dictionary.values(self.pairs))
end

--[[
	Returns a List of all of the keys in the map.
]]
function UnorderedMap:getKeys()
	return List._newCannibalizeTable(Cryo.Dictionary.keys(self.pairs))
end

--[[
	Returns the size (number of key-value pairs) of the map.
]]
function UnorderedMap:size()
	return self.length
end

--[[
	Returns a new UnorderedMap with the pairs at all given keys removed.
]]
function UnorderedMap:remove(...)
	local new = self:copy()

	local newPairs = new.pairs

	local len = select("#", ...)
	for i = 1, len do
		local key = select(i, ...)
		if new:get(key) ~= nil then
			new.length = new.length - 1
			newPairs[key] = nil
		end
	end
	return new
end

--[[
	Joins any number of (basic table) dictionaries of values of the form
	{ [key] = value }
	into the OrderedMap, creating a new OrderedMap.
]]
function UnorderedMap:batchSet(...)
	local new = self:copyRemoveNone()
	new:_insertInPlaceRemoveNone(...)
	return new
end

--[[
	Returns a (shallow) copy of the UnorderedMap.
]]
function UnorderedMap:copy()
	return UnorderedMap.new(self.pairs)
end

--[[
	Returns a (shallow) copy of the UnorderedMap, removing all None instances.
]]
function UnorderedMap:copyRemoveNone()
	local new = {}
	for key, value in self:iterator() do
		if value ~= None then
			new[key] = value
		end
	end
	return UnorderedMap._newCannibalizeTable(new)
end

--[[
	Create a new UnorderedMap, applying the given predicate to each element in
	this UnorderedMap.

	Predicate should have the signature
	predicate(value, key) -> newValue, newKey

	Analogous to 'map' on a list.

]]
function UnorderedMap:map(predicate)
	local new = UnorderedMap.new()
	for key, value in self:iterator() do
		local newValue, newKey = predicate(value, key)
		newKey = newKey or key
		newValue = newValue or value
		new:_insertPairInPlace(newKey, newValue)
	end

	return new
end

--[[
	Create a new UnorderedMap, where each key-value pair is included iff callback(value, key) is truthy.

	callback should be a function of signature
		callback(value, key) -> bool
]]
function UnorderedMap:filter(callback)
	local new = UnorderedMap.new()
	for key, value in self:iterator() do
		if callback(value, key) then
			new:_insertPairInPlace(key, value)
		end
	end

	return new
end

--[[
	Join any number of UnorderedMaps.
]]
function UnorderedMap:join(...)
	local new = self:copyRemoveNone()

	for i = 1, select("#", ...) do
		local other = select(i, ...)

		if other:size() > 0 then
			for key, value in other:iterator() do
				new:_insertPairInPlaceRemoveNone(key, value)
			end
		end
	end

	return new
end

--[[
	Internal method for inserting values in place.
]]
function UnorderedMap:_insertInPlace(...)
	local len = select("#", ...)
	for i = 1, len do
		local pair = select(i, ...)
		for key, value in pairs(pair) do
			self:_insertPairInPlace(key, value)
		end
	end
end

--[[
	Internal method for inserting a single pair in place.
]]
function UnorderedMap:_insertPairInPlace(key, value)
	if self:get(key) == nil then
		self.length = self.length + 1
	end
	self.pairs[key] = value
end

--[[
	Internal method for inserting values in place, removing all None instances.
]]
function UnorderedMap:_insertInPlaceRemoveNone(...)
	local len = select("#", ...)
	for i = 1, len do
		local pair = select(i, ...)
		for key, value in pairs(pair) do
			self:_insertPairInPlaceRemoveNone(key, value)
		end
	end
end

--[[
	Internal method for inserting values in place, removing all None instances.
]]
function UnorderedMap:_insertPairInPlaceRemoveNone(key, value)
	if value == None then
		if self:get(key) ~= nil then
			self.pairs[key] = nil
			self.length = self.length - 1
		end
	else
		if self:get(key) == nil then
			self.length = self.length + 1
		end
		self.pairs[key] = value
	end
end

--[[
	Specify the behavior of deepJoin for UnorderedMap.
]]
function UnorderedMap:deepJoin(rhs)
	local newMap = UnorderedMap.new()
	for lhsKey, lhsValue in self:iterator() do
		local rhsValue = rhs:get(lhsKey)
		if rhsValue then
			if type(rhsValue) == "table" and type(lhsValue) == "table" then
				newMap:_insertPairInPlace(lhsKey, deepJoin(lhsValue, rhsValue))
			else
				if rhsValue ~= None then
					newMap:_insertPairInPlace(lhsKey, rhsValue)
				end
			end
		else
			if lhsValue ~= None then
				newMap:_insertPairInPlace(lhsKey, lhsValue)
			end
		end
	end

	-- Copy over rhs keys that aren't in lhs
	for rhsKey, rhsValue in rhs:iterator() do
		local lhsValue = self:get(rhsKey)
		if not lhsValue and rhsValue ~= None then
			newMap:_insertPairInPlace(rhsKey, rhsValue)
		end
	end

	return newMap
end

--[[
	Returns an iterator for the UnorderedMap.
	Key-value pairs are returned in an undefined order.
	Example:
	for key, value in unorderedMap:iterator() do
]]
function UnorderedMap:iterator()
	return next, self.pairs, nil
end

return UnorderedMap