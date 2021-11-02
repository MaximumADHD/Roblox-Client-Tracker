--!strict

type Array = { [number]: any };
type Function = (any, any?, any?, any?) -> any;

-- Implements Javascript's `Array.prototype.map` as defined below
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some
return function(t: Array, fun: Function, thisArg: any?)
	if typeof(t) ~= "table" then
		error(string.format("Array.some called on %s", typeof(t)))
	end
	if typeof(fun) ~= "function" then
		error("callback is not a function")
	end

	for i, value in ipairs(t) do
		if thisArg ~= nil then
			if value ~= nil and fun(thisArg, value, i, t) then
				return true
			end
		else
			if value ~= nil and fun(value, i, t) then
				return true
			end
		end
	end
	return false
end