type AllHandler = (any, any) -> boolean

local defaultHandler: AllHandler = function(value)
	return value
end

--[=[
	Returns `true` if all entries in the _input_ table satisfy the predicate _handler_.

	If no _handler_ is provided, the default predicate returns the truthiness of each value.
	For array inputs, elements are visited in order 1..n;

	@param input The table to test.
	@param handler Optional predicate called as `(value, key)`
	@return boolean -- `true` only if every call to _handler_ returns truthy; otherwise `false`
]=]
local function all(input: {}, handler: AllHandler?): boolean
	local allHandler = handler or defaultHandler
	for key, value in input do
		if not allHandler(value, key) then
			return false
		end
	end
	return true
end

return all
