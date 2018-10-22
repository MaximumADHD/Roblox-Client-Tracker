-- singleton

local Table = {}

function Table.immutableSetExistingDictionaryEntry(dictionary, keyToSet, valueToSet)
	local new = {}

	for key, value in pairs(dictionary) do
		if key == keyToSet then
			new[key] = valueToSet
		else
			new[key] = value
		end
	end

	return new
end

function Table.countDictionaryKeys(dictionary)
	local result = 0
	for _, __ in pairs(dictionary) do
		result = result + 1
	end
	return result
end

return Table