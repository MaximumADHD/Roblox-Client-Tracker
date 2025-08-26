local Dash = script.Parent
local Types = require(Dash.Types)
local insert = table.insert

--[=[
	Returns an array of the values in the _input_ table.

	If the input is an array, ordering is preserved.
	If the input is a Map, elements are returned in an arbitrary order.

	@param input The table to extract values from.
	@return An array containing all values from the input table.
]=]
local function values(input: {}): Types.Table
	local result = {}
	for _, value in input do
		insert(result, value)
	end
	return result
end

return values
