--!strict
local Array = script.Parent.Parent
local LuauPolyfill = Array.Parent
local types = require(LuauPolyfill.types)
type Object = types.Object
type Array<T> = types.Array<T>
type Map<K, V> = types.Map<K, V>
type mapFn<T, U> = (element: T, index: number) -> U
type mapFnWithThisArg<T, U> = (thisArg: any, element: T, index: number) -> U

return function<T, U>(
	value: Map<any, any>,
	mapFn: (mapFn<T, U> | mapFnWithThisArg<T, U>)?,
	thisArg: Object?
	-- FIXME Luau: need overloading so the return type on this is more sane and doesn't require manual casts
): Array<U> | Array<T> | Array<string>
	local array = {}

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

	return array
end
