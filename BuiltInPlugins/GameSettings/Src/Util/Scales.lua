--[[
	functionality to compare two sets of scales
]]

local Scales = {}

local countDictionaryKeys = nil

function Scales.isEqual(current, changed)
	if nil == current or nil == changed then
		return nil == current and nil == changed
	end

	for key, val in pairs(current) do
		if val ~= changed[key] then
			return false
		end
	end

	return countDictionaryKeys(current) == countDictionaryKeys(changed)
end

countDictionaryKeys = function(dictionary)
	local result = 0
	for _, __ in pairs(dictionary) do
		result = result + 1
	end
	return result
end

return Scales
