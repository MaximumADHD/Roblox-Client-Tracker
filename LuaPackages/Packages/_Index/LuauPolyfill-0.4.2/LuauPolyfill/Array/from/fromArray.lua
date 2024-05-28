--!strict
local Array = script.Parent.Parent
local LuauPolyfill = Array.Parent
local types = require(LuauPolyfill.types)
type Object = types.Object

type Array<T> = types.Array<T>
type mapFn<T, U> = (element: T, index: number) -> U
type mapFnWithThisArg<T, U> = (thisArg: any, element: T, index: number) -> U

return function<T, U>(
	value: Array<T>,
	mapFn: (mapFn<T, U> | mapFnWithThisArg<T, U>)?,
	thisArg: Object?
	-- FIXME Luau: need overloading so the return type on this is more sane and doesn't require manual casts
): Array<U> | Array<T> | Array<string>
	local array = {}

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

	return array
end
