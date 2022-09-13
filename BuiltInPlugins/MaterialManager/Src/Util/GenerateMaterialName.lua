local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local Util = Plugin.Src.Util
local getNumberFromName = require(Util.getNumberFromName)
local getNextFreeIndex = require(Util.getNextFreeIndex)
local MapMaterials = require(Util.MapMaterials)

return function(category: _Types.Category, prefix: string): number
	--[[
		1. Iterate through all materials and get all numbers after "MaterialVariant"
		2. Sort numbers
		3. Go through sorted numbers and get min non-existing, break
	]]--
	local numbers = {}
	MapMaterials(category, numbers, function(material)
		return if material.MaterialVariant then getNumberFromName(material.MaterialVariant.Name, prefix) else nil
	end)

	return getNextFreeIndex(numbers)
end
