local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local Util = Plugin.Src.Util
local getNumberFromName = require(Util.getNumberFromName)
local getNextFreeIndex = require(Util.getNextFreeIndex)

return function(materialVariant: MaterialVariant, prefix: string): number
	--[[
		1. Iterate through all terrain details and get all numbers after "TerrainDetail"
		2. Sort numbers
		3. Go through sorted numbers and get min non-existing, break
	]]--
	local numbers = {}
	for _, child in ipairs(materialVariant:GetChildren()) do
		if child:IsA("TerrainDetail") then
			table.insert(numbers, getNumberFromName(child.Name, prefix))
		end
	end

	return getNextFreeIndex(numbers)
end
