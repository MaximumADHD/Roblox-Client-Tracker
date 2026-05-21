export type GetValueHandler<Key, Value> = ({ [Key]: Value }, Key) -> Value

--[=[
	Returns the value at _key_ from the _input_ table.

	If the key is missing, calls _getValue_ to compute a value, stores it on _input_, and returns it.

	@param input The table to read from (and potentially write to).
	@param key The key to look up.
	@param getValue A function that computes and returns the value when the key is missing.
	@return The existing value at _key_, or the newly computed value if it was missing.
]=]
local function getOrSet<Key, Value>(input: {}, key: Key, getValue: GetValueHandler<Key, Value>): Value
	if input[key] == nil then
		input[key] = getValue(input, key)
	end
	return input[key]
end

return getOrSet
