--!strict
local Array = script.Parent
local LuauPolyfill = Array.Parent
local isArray = require(Array.isArray)
local instanceof = require(LuauPolyfill.instanceof)
local Set = require(LuauPolyfill.Set)
local Map = require(LuauPolyfill.Map)

local fromString = require(script.fromString)
local fromSet = require(script.fromSet)
local fromMap = require(script.fromMap)
local fromArray = require(script.fromArray)

local types = require(LuauPolyfill.types)

type Array<T> = types.Array<T>
type Object = types.Object
type Set<T> = types.Set<T>
type Map<K, V> = types.Map<K, V>
type mapFn<T, U> = (element: T, index: number) -> U
type mapFnWithThisArg<T, U> = (thisArg: any, element: T, index: number) -> U

return function<T, U>(
	value: string | Array<T> | Set<T> | Map<any, any>,
	mapFn: (mapFn<T, U> | mapFnWithThisArg<T, U>)?,
	thisArg: Object?
	-- FIXME Luau: need overloading so the return type on this is more sane and doesn't require manual casts
): Array<U> | Array<T> | Array<string>
	if value == nil then
		error("cannot create array from a nil value")
	end
	local valueType = typeof(value)

	local array: Array<U> | Array<T> | Array<string>

	if valueType == "table" and isArray(value) then
		array = fromArray(value :: Array<T>, mapFn, thisArg)
	elseif instanceof(value, Set) then
		array = fromSet(value :: Set<T>, mapFn, thisArg)
	elseif instanceof(value, Map) then
		array = fromMap(value :: Map<any, any>, mapFn, thisArg)
	elseif valueType == "string" then
		array = fromString(value :: string, mapFn, thisArg)
	else
		array = {}
	end

	return array
end
