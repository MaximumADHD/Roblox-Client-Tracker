--[[
	Iterates through the elements of the _input_ Table in no particular order.

	Calls the _handler_ for each entry and returns the first non-nil value returned by the _handler_.
	If all returned from the _handler_ values are `nil`, `nil` is returned.

	If _handler_ is `nil`, the first value visited is returned.
]]

export type MapHandler<Key, Value, NewValue> = (Value, Key) -> NewValue?

local function mapOne<Key, Value, NewValue>(input: { [Key]: Value }, handler: MapHandler<Key, Value, NewValue>?): NewValue?
	for key, child in pairs(input) do
		local output
		if handler then
			output = handler(child, key)
		else
			output = child
		end
		if output ~= nil then
			return output
		end
	end
	return nil
end
return mapOne
