--[[
	Returns a copy of the object that has all occurances of findString replaced with replaceValue.

	This function perform a DFS. If another table is found, it will recursively call itself and continue processing.
]]
local Framework = script.Parent.Parent

local Util = require(Framework.Util)
local deepCopy = Util.deepCopy

function deepOverwrite(obj: { [string]: any }, findString: string, replaceValue: any)
	for key, value in pairs(obj) do
		local valString = tostring(value)

		if valString:find(findString) then
			obj[key] = replaceValue
		elseif type(value) == "table" then -- recursive call to find other elements
			obj[key] = deepOverwrite(value, findString, replaceValue)
		end -- skip all other keys
	end

	return obj
end

return function(initialObject: { [string]: any }, findString: string, replaceValue: any)
	return deepOverwrite(deepCopy(initialObject), findString, replaceValue)
end
