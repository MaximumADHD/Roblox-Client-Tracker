local LuauPolyfill = script.Parent
local Array = require(LuauPolyfill.Array)
type Array<T> = Array.Array<T>
local inspect = require(LuauPolyfill.util.inspect)

local Set = {}
Set.__index = Set
Set.__tostring = function(self)
	local result = "Set "
	if #self._array > 0 then
		result ..= "(" .. tostring(#self._array) .. ") "
	end
	result ..= inspect(self._array)
	return result
end

export type Set<T> = {
	size: number,
	-- method definitions
	add: (self: Set<T>, T) -> Set<T>,
	clear: (self: Set<T>) -> (),
	delete: (self: Set<T>, T) -> boolean,
	has: (self: Set<T>, T) -> boolean,
	ipairs: (self: Set<T>) -> any,
}

type Iterable = { ipairs: (any) -> any }

function Set.new(iterable: Array<any> | Set<any> | Iterable | string | nil)
	local array = {}
	local map = {}
	if iterable ~= nil then
		local arrayIterable: Array<any>
		-- ROBLOX TODO: remove type casting from (iterable :: any).ipairs in next release
		if typeof(iterable) == "table" then
			if Array.isArray(iterable) then
				arrayIterable = Array.from(iterable :: Array<any>)
			elseif typeof((iterable :: Iterable).ipairs) == "function" then
				-- handle in loop below
			elseif _G.__DEV__ then
				error("cannot create array from an object-like table")
			end
		elseif typeof(iterable) == "string" then
			arrayIterable = Array.from(iterable :: string)
		else
			error(("cannot create array from value of type `%s`"):format(typeof(iterable)))
		end

		if arrayIterable then
			for _, element in ipairs(arrayIterable) do
				if not map[element] then
					map[element] = true
					table.insert(array, element)
				end
			end
		elseif typeof(iterable) == "table" and typeof((iterable :: Iterable).ipairs) == "function" then
			for _, element in (iterable :: Iterable):ipairs() do
				if not map[element] then
					map[element] = true
					table.insert(array, element)
				end
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
