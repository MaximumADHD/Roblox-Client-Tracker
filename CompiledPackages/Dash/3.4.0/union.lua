local Dash = script.Parent
local None = require(Dash.None)
local Types = require(Dash.Types)

--[=[
	Returns a new Map by merging all keys in the two Maps in left-to-right order.

	The `None` symbol can be used to remove existing elements.

	@param map1 The first Map to union
	@param map2 The second Map to union
	@return A new Map containing the merged keys and values.
]=]
local function union(map1: {}, map2: {}): Types.Table
	local unioned = table.clone(map1)

	for key, value in map2 do
		if value == None then
			unioned[key] = nil
		else
			unioned[key] = value
		end
	end

	return unioned
end

return union
