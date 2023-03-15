local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>

local function mergeArrays(_self, existingItems, incomingItems)
	existingItems = existingItems or {}
	incomingItems = incomingItems or {}
	if #incomingItems == 0 then
		return existingItems
	end
	if #existingItems == 0 then
		return incomingItems
	end

	return Array.concat(table.clone(existingItems), incomingItems)
end

return mergeArrays
