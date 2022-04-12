--!strict
type Array<T> = { [number]: T }
-- note: JS version can return anything that's truthy, but that won't work for us since Lua deviates (0 is truthy)
type callbackFn<T> = (element: T, index: number, array: Array<T>) -> boolean
type callbackFnWithThisArg<T, U> = (thisArg: U, element: T, index: number, array: Array<T>) -> boolean
type Object = { [string]: any }

-- Implements Javascript's `Array.prototype.map` as defined below
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some
return function<T, U>(t: Array<T>, callback: callbackFn<T> | callbackFnWithThisArg<T, U>, thisArg: U?)
	if typeof(t) ~= "table" then
		error(string.format("Array.some called on %s", typeof(t)))
	end
	if typeof(callback) ~= "function" then
		error("callback is not a function")
	end

	for i, value in ipairs(t) do
		if thisArg ~= nil then
			if value ~= nil and (callback :: callbackFnWithThisArg<T, U>)(thisArg, value, i, t) then
				return true
			end
		else
			if value ~= nil and (callback :: callbackFn<T>)(value, i, t) then
				return true
			end
		end
	end
	return false
end
