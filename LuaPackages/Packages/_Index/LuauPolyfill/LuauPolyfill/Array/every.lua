--!strict
type Array<T> = { [number]: T }
type callbackFn = (element: any, index: number?, array: Array<any>?) -> boolean
type callbackFnWithThisArg = (thisArg: any, element: any, index: number?, array: Array<any>?) -> boolean
type Object = { [string]: any }

-- Implements Javascript's `Array.prototype.every` as defined below
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every
return function(t: Array<any>, callback: callbackFn | callbackFnWithThisArg, thisArg: Object?): boolean
	if typeof(t) ~= "table" then
		error(string.format("Array.every called on %s", typeof(t)))
	end
	if typeof(callback) ~= "function" then
		error("callback is not a function")
	end

	local len = #t
	local k = 1

	while k <= len do
		local kValue = t[k]
		local testResult

		if kValue ~= nil then
			if thisArg ~= nil then
				testResult = (callback :: callbackFnWithThisArg)(thisArg, kValue, k, t)
			else
				testResult = (callback :: callbackFn)(kValue, k, t)
			end

			if not testResult then
				return false
			end
		end
		k += 1
	end
	return true
end
