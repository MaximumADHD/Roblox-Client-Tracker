local OrderedMap = {}

OrderedMap.__index = OrderedMap

--[[
	Create a new OrderedMap with the given ID function and sort predicates.

	getId might look like:

		function(object)
			return object.id
		end

	And the sortPredicate might look like:

		function(objectA, objectB)
			return objectA.id < objectB.id
		end

	The rest of the arguments are inserted into the OrderedMap as values.
]]
function OrderedMap.new(getId, sortPredicate, ...)
	local self = {
		keys = {},
		values = {},
		getId = getId,
		sortPredicate = sortPredicate
	}

	setmetatable(self, OrderedMap)

	OrderedMap._InsertInPlace(self, ...)

	return self
end

--[[
	Gets the value in the map associated with the given ID.
]]
function OrderedMap:Get(id)
	return self.values[id]
end

--[[
	Gets the value in the map located at the given index.
]]
function OrderedMap:GetByIndex(index)
	local id = self.keys[index]

	if id == nil then
		return nil
	end

	return self.values[id]
end

--[[
	Gets the list of IDs that are present in the OrderedMap.
]]
function OrderedMap:GetIds()
	return self.keys
end

--[[
	Returns the number of elements in the OrderedMap.
]]
function OrderedMap:Length()
	return #self.keys
end

--[[
	Deletes the given keys from the map.

	This is an immutable operation, so the original map is not modified.

	Example:

		map = map:Delete("my-key", "another-key")
]]
function OrderedMap:Delete(...)
	local new = OrderedMap.new(self.getId, self.sortPredicate)

	local len = select("#", ...)

	for key, value in pairs(self.values) do
		new.values[key] = value
	end

	for i = 1, len do
		local key = select(i, ...)

		new.values[key] = nil
	end

	for _, value in ipairs(self.keys) do
		if new.values[value] ~= nil then
			new.keys[#(new.keys)+1] = value
		end
	end

	return new
end

--[[
	Inserts the given values into the map.

	This is an immutable operation, so the original map is not modified and a
	new map is returned instead.

	Example:

		map = map:Insert("Hello", "World")
]]
function OrderedMap:Insert(...)
	local new = self:_Copy()

	OrderedMap._InsertInPlace(new, ...)

	return new
end

--[[
	Returns the first value in the OrderedMap.
]]
function OrderedMap:First()
	if self.keys[1] then
		return self:Get(self.keys[1])
	end
end

--[[
	Returns the last value in the OrderedMap.
]]
function OrderedMap:Last()
	local i = #self.keys
	if self.keys[i] then
		return self:Get(self.keys[i])
	end
end

--[[
	Create an iterator to traverse the map front-to-back.

	Example:

		for id, item in map:CreateIterator() do
			print(id, item)
		end
]]
function OrderedMap:CreateIterator()
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
	Create an iterator to traverse the map back-to-front.

	Example:

		for id, item in map:CreateReverseIterator() do
			print(id, item)
		end
]]
function OrderedMap:CreateReverseIterator()
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
	Create a new OrderedMap, applying the given predicate to each element in
	this OrderedMap.

	Analogous to 'map' on a list.

	Example:

		local doubled = map:Map(function(value, key)
			return value * 2
		end)
]]
function OrderedMap:Map(predicate)
	local new = OrderedMap.new(self.getId, self.sortPredicate)

	for key, value in self:CreateIterator() do
		new:_InsertInPlaceUnsorted(predicate(value, key))
	end

	new:_Sort()

	return new
end

--[[
	Merges two or more OrderedMap objects by combining their values.

	Values from the right-most arguments will overwrite values from the left.

	Example:

		local merged = OrderedMap.Merge(a, b, c)

		OR

		local merged = a:Merge(b, c)

	NOTE: This function is not guaranteed to create a new OrderedMap.
]]
function OrderedMap:Merge(...)
	local new

	for i = 1, select("#", ...) do
		local other = select(i, ...)

		if other:Length() > 0 then
			if not new then
				new = self:_Copy()
			end

			for _, value in other:CreateIterator() do
				new:_InsertInPlaceUnsorted(value)
			end
		end
	end

	if new then
		new:_Sort()

		return new
	end

	return self
end

--[[
	Internal method for creating a copy of this OrderedMap.
]]
function OrderedMap:_Copy()
	local new = OrderedMap.new(self.getId, self.sortPredicate)

	for key, value in ipairs(self.keys) do
		new.keys[key] = value
	end

	for key, value in pairs(self.values) do
		new.values[key] = value
	end

	return new
end

--[[
	Internal method for inserting a value without sorting the map.

	This means that the invariants that the map exposes will be broken until
	the _Sort() method is called.
]]
function OrderedMap:_InsertInPlaceUnsorted(...)
	local len = select("#", ...)

	for i = 1, len do
		local item = select(i, ...)
		local key = self.getId(item)

		if not self.values[key] then
			table.insert(self.keys, key)
		end

		self.values[key] = item
	end
end

--[[
	Sorts the map; used in cases where the map would become out-of-order when
	using internal recommendations.
]]
function OrderedMap:_Sort()
	table.sort(self.keys, function(keyA, keyB)
		local a = self.values[keyA]
		local b = self.values[keyB]

		return self.sortPredicate(a, b)
	end)
end

--[[
	Inserts the given values into the map in-place.

	This operation mutates the map; generally you should use Insert instead.
]]
function OrderedMap:_InsertInPlace(...)
	self:_InsertInPlaceUnsorted(...)
	self:_Sort()
end

return OrderedMap