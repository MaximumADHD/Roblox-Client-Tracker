-- Composes functions from right to left.
-- Inspiration: https://redux.js.org/api/compose

return function(...)
	local args = {...}
	local len = #args

	if len == 0 then
		return function (x)
			return x
		end
	end

	local result = args[1]
	for index= 2, len do
		local currentFunc = args[index]
		local prev = result
		result = function(...)
			return prev(currentFunc(...))
		end
	end
	return result
end
