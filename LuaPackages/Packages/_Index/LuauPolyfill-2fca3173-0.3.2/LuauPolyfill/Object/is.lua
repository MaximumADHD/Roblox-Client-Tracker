-- Implements Javascript's `Object.is` as defined below
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/is
return function(value1: any, value2: any): boolean
	if value1 == value2 then
		return value1 ~= 0 or 1 / value1 == 1 / value2
	else
		return value1 ~= value1 and value2 ~= value2
	end
end
