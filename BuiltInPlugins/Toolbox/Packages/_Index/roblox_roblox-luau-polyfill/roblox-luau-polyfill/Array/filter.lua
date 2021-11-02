--!strict

type Array = { [number]: any };
type Function = (any, any?, any?, any?) -> any;

-- Implements Javascript's `Array.prototype.filter` as defined below
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter
return function(t: Array, callback: Function, thisArg: any): Array
	if typeof(t) ~= "table" then
		error(string.format("Array.filter called on %s", typeof(t)))
	end
	if typeof(callback) ~= "function" then
		error("callback is not a function")
	end

	local len = #t
	local res = {}
	local index = 1

	if thisArg == nil then
		for i = 1, len do
			local kValue = t[i]
			if kValue ~= nil then
				if callback(kValue, i, t) then
					res[index] = kValue
					index += 1
				end
			end
		end
	else
		for i = 1, len do
			local kValue = t[i]
			if kValue ~= nil then
				if callback(thisArg, kValue, i, t) then
					res[index] = kValue
					index += 1
				end
			end
		end
	end

	return res
end