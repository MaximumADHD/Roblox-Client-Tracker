local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local Util = Plugin.Src.Util
local getNumberFromText = require(Util.getNumberFromText)
local MapMaterials = require(Util.MapMaterials)

return function(category: _Types.Category, prefix: string): number
	--[[
		1. Iterate through all materials and get all numbers after "MaterialVariant"
		2. Sort numbers
		3. Go through sorted numbers and get min non-existing, break
	]]--
	local numbers = {}
	MapMaterials(category, numbers, function(material)
		if material.MaterialVariant then
			local name = material.MaterialVariant.Name
			local foundPrefix = string.sub(name, 1, #prefix) == prefix
			local suffix = string.sub(name, string.len(prefix) + 1)
			local numberFromText = getNumberFromText(suffix)
			local foundSuffix = if numberFromText then true else false
			return if foundPrefix and foundSuffix then numberFromText else nil
		else
			return nil
		end
	end)

	local index = 1
	if #numbers > 0 then
		table.sort(numbers)
		for _, num in ipairs(numbers) do
			if index < num then
				break
			end
			index += 1
		end
	end
	
	return index
end
