--[[
	Returns `true` if the _item_ exists as a value in the _input_ table.

	A nil _item_ will always return `false`.
]]
local function includes<Item>(input: { [unknown]: Item }, item: Item?): boolean
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
