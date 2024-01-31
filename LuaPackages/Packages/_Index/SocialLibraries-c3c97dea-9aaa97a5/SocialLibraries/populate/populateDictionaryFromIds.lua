--[[
	This module allows you to replace ids within your normalized state with other data.
]]

local function populateDictionaryFromIds(dictionary, normalizedData)
	local newDictionary = {}

	for key, value in pairs(dictionary) do
		if type(value) == "table" then
			newDictionary[key] = populateDictionaryFromIds(value, normalizedData)
		else
			newDictionary[key] = normalizedData[value]
		end
	end

	return newDictionary
end

return populateDictionaryFromIds
