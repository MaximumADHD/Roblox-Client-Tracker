--!strict
local root = script.Parent.Parent

local Constants = require(root.Constants)

local getFFlagUGCValidationLayeredAndRigidLists = require(root.flags.getFFlagUGCValidationLayeredAndRigidLists)
local getFStringUGCLCAllowedAssetTypeIds = require(root.flags.getFStringUGCLCAllowedAssetTypeIds)

local RigidOrLayeredAllowed = {}

function RigidOrLayeredAllowed.isRigidAccessoryAllowed(assetType: Enum.AssetType): boolean
	assert(getFFlagUGCValidationLayeredAndRigidLists(), "FFlagUGCValidationLayeredAndRigidLists is not enabled")

	local assetTypeInfo = Constants.ASSET_TYPE_INFO[assetType]
	if assetTypeInfo == nil then
		return false
	end

	return assetTypeInfo.rigidAllowed == true
end

function RigidOrLayeredAllowed.isLayeredClothingAllowed(assetType: Enum.AssetType): boolean
	return table.find(string.split(getFStringUGCLCAllowedAssetTypeIds(), ","), tostring(assetType.Value)) ~= nil
end

return RigidOrLayeredAllowed
