--[[
	Groups values in the _input_ Table by their _getKey_ value.

	Each value of the result Table is an array of values from the _input_ Table which were assigned
	the corresponding key.

	If _getKey_ is a function, it is called with each `(child, key)` entry and uses the return
	value as the corresponding key to insert at in the result Table. Otherwise, the _getKey_ value
	is used directly as the key itself.
]]

local insert = table.insert

export type GroupByHandler<Key, Value, GroupKey> = (Value, Key) -> GroupKey

local function groupBy<Key, Value, GroupKey>(
	input: { [Key]: Value },
	getKey: GroupByHandler<Key, Value, GroupKey> | GroupKey
): { [GroupKey]: { Value } }
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
