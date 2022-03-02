local Array = script.Parent
type Array<T> = { [number]: T }
local isArray = require(Array.isArray)
local LuauPolyfill = Array.Parent
type Object = { [string]: any }
local instanceof = require(LuauPolyfill.instanceof)
local Set
local Map
type Function = (...any) -> any

-- ROBLOX TODO: add function generics so item type is carried through to return value
-- ROBLOX TODO: Object here is a stand-in for Map and Set, use those when we extract type-only files
return function(value: string | Array<any> | Object, mapFn: Function | nil): Array<any>
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
			for i = 1, #(value :: Array<any>) do
				array[i] = mapFn((value :: Array<any>)[i], i)
			end
		else
			for i = 1, #(value :: Array<any>) do
				array[i] = (value :: Array<any>)[i]
			end
		end
	elseif instanceof(value, Set) then
		if mapFn then
			for i, v in (value :: any):ipairs() do
				array[i] = mapFn(v, i)
			end
		else
			for i, v in (value :: any):ipairs() do
				array[i] = v
			end
		end
	elseif instanceof(value, Map) then
		if mapFn then
			for i, v in (value :: any):ipairs() do
				array[i] = mapFn(v, i)
			end
		else
			for i, v in (value :: any):ipairs() do
				array[i] = v
			end
		end
	elseif valueType == "string" then
		if mapFn then
			for i = 1, (value :: string):len() do
				array[i] = mapFn((value :: string):sub(i, i), i)
			end
		else
			for i = 1, (value :: string):len() do
				array[i] = (value :: string):sub(i, i)
			end
		end
	end

	return array
end
