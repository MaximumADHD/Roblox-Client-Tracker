--[[
	This function takes in an array, and converts it to a table, so {VAL1, Val2} becomes {VAL1="VAL1", Val2="Val2"}
	(this can allow you to specify constant values once in an array in code, but they can then still be used like MyTable.Val1)
]]

local function convertArrayToTable(sourceArray)
	local result = {}
	for _, key in ipairs(sourceArray) do
		if nil ~= result[key] then
			error("convertArrayToTable: sourceArray should not contain duplicate values")
		else
			result[key] = key
		end
	end
	return result
end

return convertArrayToTable
