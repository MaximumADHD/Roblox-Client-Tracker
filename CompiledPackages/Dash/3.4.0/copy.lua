local Dash = script.Parent
local Types = require(Dash.Types)

--[=[
	Returns a shallow copy of the _input_ table.

	Only the top level is copied; nested tables are copied by reference.

	@param input The table to copy.
	@return A new table with the same keys and values as _input_.
	@see `Dash.assign` to copy properties into an existing table.

	@deprecated -- Use `table.clone` instead
]=]
local function copy(input: Types.Table): Types.Table
	return table.clone(input)
end

return copy
