local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local inspect = require(Packages.LuauPolyfill).util.inspect
local arrayContains = require(script.Parent.Parent.luaUtils.arrayContains)

local function toHaveSameMembers(arrA, arrB, looseEquals)
	local sameLength = #arrA == #arrB
	if not sameLength then
		return {
			pass = false,
			message = ("Received array length %s / expected length %s"):format(
				tostring(#arrA),
				tostring(#arrB)
			),
		}
	end

	for _, itemB in ipairs(arrB) do
		local foundItem = arrayContains(arrA, itemB, looseEquals)
		if not foundItem then
			return {
				pass = false,
				message = ("Expected item %s to be in Array %s"):format(
					inspect(itemB),
					inspect(arrA)
				),
			}
		end
	end

	return {
		pass = true,
		message = "",
	}
end

return toHaveSameMembers
