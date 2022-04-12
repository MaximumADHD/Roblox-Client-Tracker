--!nonstrict
local LuauPolyfill = script.Parent
local Array = require(LuauPolyfill.Array)
type Array<T> = Array.Array<T>
type Object = { [string]: any }

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

type callbackFn<T> = (value: T, key: T, set: Set<T>) -> ()
type callbackFnWithThisArg<T> = (thisArg: Object, value: T, key: T, set: Set<T>) -> ()

export type Set<T> = {
	size: number,
	-- method definitions
	add: (self: Set<T>, T) -> Set<T>,
	clear: (self: Set<T>) -> (),
	delete: (self: Set<T>, T) -> boolean,
	forEach: (self: Set<T>, callback: callbackFn<T> | callbackFnWithThisArg<T>, thisArg: Object?) -> (),
	has: (self: Set<T>, T) -> boolean,
	ipairs: (self: Set<T>) -> any,
}

type Iterable = { ipairs: (any) -> any }

function Set.new<T>(iterable: Array<T> | Set<T> | Iterable | string | nil): Set<T>
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

	return (setmetatable({
		size = #array,
		_map = map,
		_array = array,
	}, Set) :: any) :: Set<T>
end

function Set:add(value)
	if not self._map[value] then
		-- Luau FIXME: analyze should know self is Set<T> which includes size as a number
		self.size = self.size :: number + 1
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
	-- Luau FIXME: analyze should know self is Map<K, V> which includes size as a number
	self.size = self.size :: number - 1
	self._map[value] = nil
	local index = table.find(self._array, value)
	if index then
		table.remove(self._array, index)
	end
	return true
end

-- Implements Javascript's `Map.prototype.forEach` as defined below
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set/forEach
function Set:forEach<T>(callback: callbackFn<T> | callbackFnWithThisArg<T>, thisArg: Object?): ()
	if typeof(callback) ~= "function" then
		error("callback is not a function")
	end

	return Array.forEach(self._array, function(value: T)
		if thisArg ~= nil then
			(callback :: callbackFnWithThisArg<T>)(thisArg, value, value, self)
		else
			(callback :: callbackFn<T>)(value, value, self)
		end
	end)
end

function Set:has(value): boolean
	return self._map[value] ~= nil
end

function Set:ipairs()
	return ipairs(self._array)
end

return Set
