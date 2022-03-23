--!strict

type Array = { [number]: any }
-- note: JS version can return anything that's truthy, but that won't work for us since Lua deviates (0 is truthy)
type callbackFn = (element: any, index: number?, array: Array?) -> boolean
type callbackFnWithThisArg = (thisArg: any, element: any, index: number?, array: Array?) -> boolean
type Object = { [string]: any }

-- Implements Javascript's `Array.prototype.map` as defined below
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some
return function(t: Array, callback: callbackFn | callbackFnWithThisArg, thisArg: Object?)
	if typeof(t) ~= "table" then
		error(string.format("Array.some called on %s", typeof(t)))
	end
	if typeof(callback) ~= "function" then
		error("callback is not a function")
	end

	for i, value in ipairs(t) do
		if thisArg ~= nil then
			if value ~= nil and (callback :: callbackFnWithThisArg)(thisArg, value, i, t) then
				return true
			end
		else
			if value ~= nil and (callback :: callbackFn)(value, i, t) then
				return true
			end
		end
	end
	return false
end
