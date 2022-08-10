--!strict
local Array = script.Parent
local LuauPolyfill = Array.Parent
local types = require(LuauPolyfill.types)
type Array<T> = types.Array<T>
type Object = types.Object
type Set<T> = types.Set<T>
type Map<K, V> = types.Map<K, V>

local isArray = require(Array.isArray)
local instanceof = require(LuauPolyfill.instanceof)
local Set
local Map
type mapFn<T, U> = (element: T, index: number) -> U
type mapFnWithThisArg<T, U> = (thisArg: any, element: T, index: number) -> U

return function<T, U>(
	value: string | Array<T> | Set<T> | Map<any, any>,
	mapFn: (mapFn<T, U> | mapFnWithThisArg<T, U>)?,
	thisArg: Object?
	-- FIXME Luau: need overloading so the return type on this is more sane and doesn't require manual casts
): Array<U> | Array<T> | Array<string>
	if not Set then
		Set = require(LuauPolyfill).Set :: any
	end

	if not Map then
		Map = require(LuauPolyfill).Map :: any
	end

	if value == nil then
		error("cannot create array from a nil value")
	end
	local valueType = typeof(value)

	local array: Array<U> | Array<T> | Array<string>

	if valueType == "table" and isArray(value) then
		if mapFn then
			local arrayLength = #(value :: Array<T>)
			array = table.create(arrayLength)
			for i = 1, arrayLength do
				if thisArg ~= nil then
					(array :: Array<U>)[i] = (mapFn :: mapFnWithThisArg<T, U>)(thisArg, (value :: Array<T>)[i], i)
				else
					(array :: Array<U>)[i] = (mapFn :: mapFn<T, U>)((value :: Array<T>)[i], i)
				end
			end
		else
			array = table.clone(value :: Array<T>)
		end
	elseif instanceof(value, Set) then
		if mapFn then
			array = {}
			for i, v in value :: any do
				if thisArg ~= nil then
					(array :: Array<U>)[i] = (mapFn :: mapFnWithThisArg<T, U>)(thisArg, v, i)
				else
					(array :: Array<U>)[i] = (mapFn :: mapFn<T, U>)(v, i)
				end
			end
		else
			array = table.clone((value :: any)._array)
		end
	elseif instanceof(value, Map) then
		if mapFn then
			array = {}
			for i, v in value :: any do
				if thisArg ~= nil then
					(array :: Array<U>)[i] = (mapFn :: mapFnWithThisArg<T, U>)(thisArg, v, i)
				else
					(array :: Array<U>)[i] = (mapFn :: mapFn<T, U>)(v, i)
				end
			end
		else
			array = {}
			for i, v in value :: any do
				(array :: Array<T>)[i] = v
			end
		end
	elseif valueType == "string" then
		local valueStringLength = (value :: string):len()
		array = table.create(valueStringLength)
		if mapFn then
			for i = 1, valueStringLength do
				if thisArg ~= nil then
					(array :: Array<U>)[i] = (mapFn :: mapFnWithThisArg<T, U>)(thisArg, (value :: any):sub(i, i), i)
				else
					(array :: Array<U>)[i] = (mapFn :: mapFn<T, U>)((value :: any):sub(i, i), i)
				end
			end
		else
			for i = 1, valueStringLength do
				(array :: Array<string>)[i] = (value :: any):sub(i, i)
			end
		end
	else
		array = {}
	end

	return array
end
