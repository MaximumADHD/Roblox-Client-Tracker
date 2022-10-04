local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local Util = Plugin.Src.Util
local getNumberFromName = require(Util.getNumberFromName)
local getNextFreeIndex = require(Util.getNextFreeIndex)

return function(instance: Instance, material: Enum.Material, prefix: string): number?
	--[[
		1. Iterate through all materials and get all numbers after "MaterialVariant"
		2. Sort numbers
		3. Go through sorted numbers and get min non-existing, break
	]]
	--
	local numbers = {}
	local exists = false

	for _, descendant in instance:GetDescendants() do
		if descendant:IsA("MaterialVariant") and descendant.BaseMaterial == material then
			local number = getNumberFromName(descendant.Name, prefix)
			if number then
				table.insert(numbers, number)
			elseif descendant.Name == prefix then
				exists = true
			end
		end
	end

	if exists then
		return getNextFreeIndex(numbers)
	else
		return nil
	end
end
