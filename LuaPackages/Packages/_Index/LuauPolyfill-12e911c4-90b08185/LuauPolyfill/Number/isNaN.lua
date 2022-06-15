--!strict
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/isNaN
return function(value)
	return type(value) == "number" and value ~= value
end
