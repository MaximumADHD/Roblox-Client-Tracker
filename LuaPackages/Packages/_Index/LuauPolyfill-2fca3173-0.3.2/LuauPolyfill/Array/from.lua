--!strict
local Array = script.Parent
type Array<T> = { [number]: T }
local isArray = require(Array.isArray)
local LuauPolyfill = Array.Parent
type Object = { [string]: any }
local instanceof = require(LuauPolyfill.instanceof)
local Set
local Map
type mapFn<T, U> = (element: T, index: number) -> U
type mapFnWithThisArg<T, U> = (thisArg: any, element: T, index: number) -> U

-- ROBLOX TODO: Object here is a stand-in for Map and Set, use those when we extract type-only files
return function<T, U>(value: string | Array<T> | Object, mapFn: (mapFn<T, U> | mapFnWithThisArg<T, U>)?, thisArg: Object?): Array<U>
	if not Set then
		Set = (require(LuauPolyfill).Set :: any)
	end

	if not Map then
		Map = (require(LuauPolyfill).Map :: any)
	end

	if value == nil then
		error("cannot create array from a nil value")
	end
	local valueType = typeof(value)

	local array = {}

	if valueType == "table" and isArray(value) then
		if mapFn then
			for i = 1, #(value :: Array<T>) do
				if thisArg ~= nil then
					array[i] = (mapFn :: mapFnWithThisArg<T, U>)(thisArg, (value :: Array<T>)[i], i)
				else
					array[i] = (mapFn :: mapFn<T, U>)((value :: Array<T>)[i], i)
				end
			end
		else
			for i = 1, #(value :: Array<T>) do
				array[i] = (value :: Array<any>)[i]
			end
		end
	elseif instanceof(value, Set) then
		if mapFn then
			for i, v in (value :: any):ipairs() do
				if thisArg ~= nil then
					array[i] = (mapFn :: mapFnWithThisArg<T, U>)(thisArg, v, i)
				else
					array[i] = (mapFn :: mapFn<T, U>)(v, i)
				end
			end
		else
			for i, v in (value :: any):ipairs() do
				array[i] = v
			end
		end
	elseif instanceof(value, Map) then
		if mapFn then
			for i, v in (value :: any):ipairs() do
				if thisArg ~= nil then
					array[i] = (mapFn :: mapFnWithThisArg<T, U>)(thisArg, v, i)
				else
					array[i] = (mapFn :: mapFn<T, U>)(v, i)
				end
			end
		else
			for i, v in (value :: any):ipairs() do
				array[i] = v
			end
		end
	elseif valueType == "string" then
		if mapFn then
			for i = 1, (value :: string):len() do
				if thisArg ~= nil then
					array[i] = (mapFn :: mapFnWithThisArg<T, U>)(thisArg, (value :: any):sub(i, i), i)
				else
					array[i] = (mapFn :: mapFn<T, U>)((value :: any):sub(i, i), i)
				end
			end
		else
			for i = 1, (value :: string):len() do
				array[i] = (value :: any):sub(i, i)
			end
		end
	end

	return array
end
