--!strict
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/isSafeInteger
local isInteger = require(script.Parent.isInteger)
local MAX_SAFE_INTEGER = require(script.Parent.MAX_SAFE_INTEGER)

return function(value)
	return isInteger(value) and math.abs(value) <= MAX_SAFE_INTEGER
end
