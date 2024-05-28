--!strict

local LuauPolyfill = script.Parent.Parent
local types = require(LuauPolyfill.types)
type Array<T> = types.Array<T>
type Object = types.Object
type callbackFn<T, U> = (element: T, index: number, array: Array<T>) -> U
type callbackFnWithThisArg<T, U, V> = (thisArg: V, element: T, index: number, array: Array<T>) -> U

-- Implements Javascript's `Array.prototype.map` as defined below
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map
return function<T, U, V>(t: Array<T>, callback: callbackFn<T, U> | callbackFnWithThisArg<T, U, V>, thisArg: V?): Array<U>
	if _G.__DEV__ then
		if typeof(t) ~= "table" then
			error(string.format("Array.map called on %s", typeof(t)))
		end
		if typeof(callback) ~= "function" then
			error("callback is not a function")
		end
	end

	local len = #t
	local A = {}
	local k = 1

	while k <= len do
		local kValue = t[k]

		if kValue ~= nil then
			local mappedValue

			if thisArg ~= nil then
				mappedValue = (callback :: callbackFnWithThisArg<T, U, V>)(thisArg, kValue, k, t)
			else
				mappedValue = (callback :: callbackFn<T, U>)(kValue, k, t)
			end

			A[k] = mappedValue
		end
		k += 1
	end

	return A
end
