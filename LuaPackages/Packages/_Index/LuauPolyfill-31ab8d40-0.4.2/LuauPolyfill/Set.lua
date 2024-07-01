--!nonstrict
local LuauPolyfill = script.Parent
--local Array = require(LuauPolyfill.Array)
local isArray = require(LuauPolyfill.Array.isArray)
local arrayFromString = require(LuauPolyfill.Array.from.fromString)
local arrayForEach = require(LuauPolyfill.Array.forEach)
local types = require(LuauPolyfill.types)
type Array<T> = types.Array<T>
type Object = types.Object
type setCallbackFn<T> = types.setCallbackFn<T>
type setCallbackFnWithThisArg<T> = types.setCallbackFnWithThisArg<T>
type Set<T> = types.Set<T>

local inspect = require(LuauPolyfill.util.inspect)

type Set_Statics = {
	new: <T>(iterable: Array<T> | Set<T> | string | nil) -> Set<T>,
}

local Set: Set<any> & Set_Statics = (
	{
		__iter = function(self)
			return next, self._array
		end,
		__tostring = function(self)
			local result = "Set "
			if #self._array > 0 then
				result ..= "(" .. tostring(#self._array) .. ") "
			end
			result ..= inspect(self._array)
			return result
		end,
	} :: any
) :: Set<any> & Set_Statics;
(Set :: any).__index = Set

function Set.new<T>(iterable: Array<T> | Set<T> | string | nil): Set<T>
	local array
	local map = {}
	if iterable ~= nil then
		local arrayIterable

		if typeof(iterable) == "table" then
			if isArray(iterable) then
				arrayIterable = table.clone(iterable)
			else
				local mt = getmetatable(iterable :: any)
				if mt and rawget(mt, "__iter") then
					arrayIterable = iterable :: Set<T>
				elseif _G.__DEV__ then
					error("cannot create array from an object-like table")
				end
			end
		elseif typeof(iterable) == "string" then
			-- TODO Luau: need overloads for `from` to avoid needing the manual cast
			arrayIterable = arrayFromString(iterable :: string) :: Array<string>
		else
			error(("cannot create array from value of type `%s`"):format(typeof(iterable)))
		end

		if arrayIterable then
			array = table.create(#arrayIterable)
			for _, element in arrayIterable do
				if not map[element] then
					map[element] = true
					table.insert(array, element)
				end
			end
		else
			array = {}
		end
	else
		array = {}
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
function Set:forEach(callback: setCallbackFn<any> | setCallbackFnWithThisArg<any>, thisArg: Object?): ()
	if typeof(callback) ~= "function" then
		error("callback is not a function")
	end

	-- note: we can't turn this into a simple for-in loop, because the callbacks can modify the table and React, GQL, and Jest rely on JS behavior in that scenario
	arrayForEach(self._array, function(value)
		if thisArg ~= nil then
			(callback :: setCallbackFnWithThisArg<any>)(thisArg, value, value, self)
		else
			(callback :: setCallbackFn<any>)(value, value, self)
		end
	end)
end

function Set:has(value): boolean
	return self._map[value] ~= nil
end

function Set:ipairs()
	if _G.__DEV__ then
		warn(
			debug.traceback(
				"`for _,_ in mySet:ipairs() do` is deprecated and will be removed in a future release, please use `for _,_ in mySet do` instead\n",
				2
			)
		)
	end
	return ipairs(self._array)
end

return Set
