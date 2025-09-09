local Dash = script.Parent
local Types = require(Dash.Types)

-- TODO (AleksandrSl 18/08/2025): Try to type again with a solver V2. Solver V1 infers types weirdly,
--  so the functions are barely usable without type casts
export type CollectHandler<Key, Value, NewKey, NewValue> = (key: Key, value: Value) -> (NewKey?, NewValue?)

--[=[
	Returns a new table by iterating over _input_ and calling _handler_ for each `(key, value)`.

	The _handler_ should return a `(newKey, newValue)` pair to insert into the result, or `nil` to skip.

	@return A new table containing only the entries for which _handler_ returned a non-`nil` key.
	@see `Dash.collectArray` to build arrays while optionally skipping values.
]=]
local function collect(input: {}, handler: CollectHandler<any, any, any, any>): Types.Table
	local result = {}
	for key, child in input do
		local outputKey, outputValue = handler(key, child)
		if outputKey ~= nil then
			result[outputKey] = outputValue
		end
	end
	return result
end

return collect
