local LuauPolyfill = script.Parent
local Array = require(LuauPolyfill.Array)

local Set = {}
Set.__index = Set

export type Set<T> = {
	size: number,
	-- method definitions
	add: (T) -> Set<T>,
	clear: () -> (),
	delete: (T) -> boolean,
	has: (T) -> boolean,
	ipairs: () -> any,
}

function Set.new(iterable)
	local array = {}
	local map = {}
	if iterable ~= nil then
		local arrayFromIterable
		local iterableType = typeof(iterable)
		if iterableType == "table" then
			if _G.__DEV__ then
				if not Array.isArray(iterable) then
					error("cannot create array from an object-like table")
				end
			end
			arrayFromIterable = Array.from(iterable)
		elseif iterableType == "string" then
			arrayFromIterable = Array.from(iterable)
		else
			error(("cannot create array from value of type `%s`"):format(iterableType))
		end

		for _, element in ipairs(arrayFromIterable) do
			if not map[element] then
				map[element] = true
				table.insert(array, element)
			end
		end
	end

	return setmetatable({
		size = #array,
		_map = map,
		_array = array,
	}, Set)
end

function Set:add(value)
	if not self._map[value] then
		self.size += 1
		self._map[value] = true
		table.insert(self._array, value)
	end
	return self
end

function Set:clear()
	self.size = 0
	table.clear(self._map)
	table.clear(self._array)
end

function Set:delete(value): boolean
	if not self._map[value] then
		return false
	end
	self.size -= 1
	self._map[value] = nil
	local index = table.find(self._array, value)
	if index then
		table.remove(self._array, index)
	end
	return true
end

function Set:has(value): boolean
	return self._map[value] ~= nil
end

function Set:ipairs()
	return ipairs(self._array)
end

return Set
