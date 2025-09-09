local Dash = script.Parent
local Types = require(Dash.Types)

--[=[
	Returns an iterator for _input_: `ipairs` when it's a non-empty array, otherwise `pairs` for tables; if _input_ is a function, it is returned as-is.

	This function can be used to build behavior that iterates over both arrays and Maps.

	@return A stateful iterator function suitable for use in a generic for; may return `nil` to terminate.
	@see `Dash.iterable` if you want to iterate over a Table with numeric but un-ordered keys.
	@deprecated use generalized iteration instead.
]=]
local function iterator(input: {} | Types.AnyFunction)
	if typeof(input) == "function" then
		return input
	elseif typeof(input) == "table" then
		if #input > 0 then
			return ipairs(input)
		else
			return pairs(input)
		end
	else
		return nil
	end
end

return iterator
