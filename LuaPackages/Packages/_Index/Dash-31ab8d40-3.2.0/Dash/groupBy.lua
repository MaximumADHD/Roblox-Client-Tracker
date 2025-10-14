local Dash = script.Parent
local Types = require(Dash.Types)

local insert = table.insert

export type GroupByHandler<Key, Value, GroupKey> = (Value, Key) -> GroupKey

--[=[
	Groups values in the _input_ table by their _getKey_ value.

	Each value of the result table is an array of values from the _input_ table which were assigned the corresponding key.

	@param input The table to group.
	@param getKey Function called as `(value, key)` to determine grouping key, or property name to group by.
	@return A table with keys as group identifiers and values as arrays of grouped items.
]=]
local function groupBy<Key>(input: {}, getKey: GroupByHandler<any, any, any> | Key): Types.Table
	local result = {}
	for key, child in input do
		local groupKey
		if typeof(getKey) == "function" then
			groupKey = getKey(child, key)
		else
			groupKey = child[getKey]
		end
		if groupKey ~= nil then
			if result[groupKey] ~= nil then
				insert(result[groupKey], child)
			else
				result[groupKey] = { child }
			end
		end
	end
	return result
end

return groupBy
