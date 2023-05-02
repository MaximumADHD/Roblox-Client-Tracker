--!strict
local root = script:FindFirstAncestor("UGCValidation").Parent

local Constants = require(root.UGCValidation.Constants)

local ConstantsInterface = {}

function ConstantsInterface.isBodyPart(assetTypeEnum: Enum.AssetType): boolean
	return Constants.ASSET_TYPE_INFO[assetTypeEnum] and Constants.ASSET_TYPE_INFO[assetTypeEnum].isBodyPart
end

return ConstantsInterface
