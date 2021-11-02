--!strict

type Array = { [number]: any };
type Function = (any, any?, any?, any?) -> any;

-- Implements Javascript's `Array.prototype.every` as defined below
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every
return function(t: Array, callbackfn: Function, thisArg: any): boolean
	if typeof(t) ~= "table" then
		error(string.format("Array.every called on %s", typeof(t)))
	end
	if typeof(callbackfn) ~= "function" then
		error("callback is not a function")
	end

	local len = #t
	local k = 1

	while k <= len do
		local kValue = t[k]
		local testResult

		if kValue ~= nil then
			if thisArg ~= nil then
				testResult = callbackfn(thisArg, kValue, k, t)
			else
				testResult = callbackfn(kValue, k, t)
			end

			if not testResult then
				return false
			end
		end
		k += 1
	end
	return true
end