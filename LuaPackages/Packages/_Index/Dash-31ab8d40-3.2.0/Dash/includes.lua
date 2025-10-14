--[=[
	Returns `true` if the _item_ exists as a value in the _input_ table.

	A nil _item_ will always return `false`.

	@param input The table to search in.
	@param item The value to search for.
	@return `true` if the item is found, `false` otherwise.
]=]
local function includes(input: {}, item: any?): boolean
	if item == nil then
		return false
	end
	for _, child in input do
		if child == item then
			return true
		end
	end
	return false
end

return includes
