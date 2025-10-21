--[=[
	Returns the input parameters unchanged.

	Can be used to make it clear that a handler returns its inputs unchanged.

	@param ... The input parameters to return.
	@return The input parameters unchanged.
]=]
local function identity<T...>(...: T...): T...
	return ...
end

return identity
