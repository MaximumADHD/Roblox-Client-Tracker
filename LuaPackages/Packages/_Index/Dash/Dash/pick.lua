local Dash = script.Parent
local Types = require(Dash.Types)
export type PickHandler<Key, Value> = (Value, Key) -> boolean

--[=[
	Returns a new table containing only the entries from _input_ for which the _handler_ returns truthy.

	@param input The table to filter.
	@param handler Function called as `(value, key)` for each entry; return truthy to include the value.
	@return A new table with only the selected entries.
]=]
local function pick(input: {}, handler: PickHandler<any, any>): Types.Table
	local result = {}
	for key, child in input do
		if handler(child, key) then
			result[key] = child
		end
	end
	return result
end

return pick
