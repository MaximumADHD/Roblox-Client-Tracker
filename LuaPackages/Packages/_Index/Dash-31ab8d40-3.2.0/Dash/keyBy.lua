local Dash = script.Parent
local collect = require(Dash.collect)

export type KeyByHandler<Key, Value, NewKey> = (Value, Key) -> NewKey

--[=[
	Assigns values in the _input_ table by their _getKey_ value.

	If _getKey_ is a function, it is called with each `(value, key)` entry and uses the return value as the corresponding key to assign to in the result table. Otherwise, the _getKey_ value is used directly as the key itself.

	@param input The table to transform.
	@param getKey Function called as `(value, key)` to determine the new key, or property name to use as key.
	@return A new table with keys determined by _getKey_ and values from _input_.
]=]
local function keyBy<Key, Value, NewKey>(input: { [Key]: Value }, getKey: KeyByHandler<Key, Value, NewKey> | NewKey): { [NewKey]: Value }
	return collect(input, function(key, child)
		local newKey
		if typeof(getKey) == "function" then
			newKey = getKey(child, key)
		else
			newKey = child[getKey]
		end
		return newKey, child
	end)
end
return keyBy
