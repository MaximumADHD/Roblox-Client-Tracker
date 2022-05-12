--[[
	This module allows you to replace ids within your normalized state with other data.
]]

local function populateListFromIds(list, normalizedData)
	local newList = {}

	for _, value in ipairs(list) do
		if type(value) == "table" then
			table.insert(newList, populateListFromIds(value, normalizedData))
		else
			table.insert(newList, normalizedData[value])
		end
	end

	return newList
end

return populateListFromIds
