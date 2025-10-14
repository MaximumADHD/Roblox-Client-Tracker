local Dash = script.Parent
local Types = require(Dash.Types)

local insert = table.insert

-- TODO (AleksandrSl 18/08/2025): Try to type again with a solver V2. Solver V1 infers types weirdly,
--  so the functions are barely usable without type casts
type CollectHandler<Key, Value, NewValue> = (key: Key, value: Value) -> NewValue?

--[=[
	Returns a new array by iterating over _input_ and calling _handler_ for each `(key, value)`.

	The _handler_ should return a new value to be pushed onto the end of the result array, or `nil` to skip.

	@return A new array containing only the values returned by _handler_ that were not `nil`.
	@see `Dash.map` to transform values without filtering out `nil`.
]=]
local function collectArray<Key, Value, NewValue>(input: {}, handler: CollectHandler<Key, Value, NewValue>): { NewValue }
	local result = {}
	for key, child in input :: Types.Table do
		local outputValue = handler(key, child)
		if outputValue ~= nil then
			insert(result, outputValue)
		end
	end
	return result
end

return collectArray
