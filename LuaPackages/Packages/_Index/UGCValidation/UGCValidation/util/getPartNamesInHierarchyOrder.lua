--!strict
--[[
	returns the names of the parts in an asset in hierarchy order i.e parents before children
]]

local function getPartNamesInHierarchyOrder(assetTypeEnum: Enum.AssetType): { string }
	if Enum.AssetType.LeftArm == assetTypeEnum then
		return { "LeftUpperArm", "LeftLowerArm", "LeftHand" }
	elseif Enum.AssetType.RightArm == assetTypeEnum then
		return { "RightUpperArm", "RightLowerArm", "RightHand" }
	elseif Enum.AssetType.LeftLeg == assetTypeEnum then
		return { "LeftUpperLeg", "LeftLowerLeg", "LeftFoot" }
	elseif Enum.AssetType.RightLeg == assetTypeEnum then
		return { "RightUpperLeg", "RightLowerLeg", "RightFoot" }
	elseif Enum.AssetType.DynamicHead == assetTypeEnum then
		return { "Head" }
	elseif Enum.AssetType.Torso == assetTypeEnum then
		return { "LowerTorso", "UpperTorso" }
	end
	assert(false, "Invalid asset type")
	return {}
end

return getPartNamesInHierarchyOrder
