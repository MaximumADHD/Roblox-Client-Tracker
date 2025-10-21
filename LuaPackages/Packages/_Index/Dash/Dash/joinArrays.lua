local Dash = script.Parent
local Types = require(Dash.Types)

--[=[
	Returns a new array containing the joined elements of the arrays passed.

	@param ... Any number of arrays to join.
	@return A new array containing the joined elements.
]=]
local function joinArrays(...: {}?): Types.Table
	local arrays = { ... }
	local joinedArray = {}
	for _, array in arrays do
		if array then
			table.move(array, 1, #array, #joinedArray + 1, joinedArray)
		end
	end
	return joinedArray
end

return joinArrays
