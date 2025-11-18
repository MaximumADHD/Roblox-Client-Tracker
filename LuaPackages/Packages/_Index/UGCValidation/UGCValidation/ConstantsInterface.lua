local root = script.Parent

local Constants = require(root.Constants)
local ValidationRulesUtil = require(root.util.ValidationRulesUtil)

local flags = root.flags
local getEngineUGCValidateAssetTextureLimits = require(flags.getEngineUGCValidateAssetTextureLimits)

local ConstantsInterface = {}

function ConstantsInterface.isBodyPart(assetTypeEnum: Enum.AssetType): boolean
	return Constants.ASSET_TYPE_INFO[assetTypeEnum] and Constants.ASSET_TYPE_INFO[assetTypeEnum].isBodyPart
end

function ConstantsInterface.isMakeupAsset(assetTypeEnum: Enum.AssetType)
	return assetTypeEnum == Enum.AssetType.LipMakeup
		or assetTypeEnum == Enum.AssetType.EyeMakeup
		or assetTypeEnum == Enum.AssetType.FaceMakeup
end

function ConstantsInterface.getBodyPartAssets(): { Enum.AssetType }
	local results = {}
	for assetTypeEnum, assetInfo in Constants.ASSET_TYPE_INFO do
		if not assetInfo.isBodyPart then
			continue
		end
		table.insert(results, assetTypeEnum)
	end
	return results
end

function ConstantsInterface.getRigAttachmentToParent(assetTypeEnum: Enum.AssetType?, partName: string): string
	if not assetTypeEnum then
		assetTypeEnum = Constants.UGC_BODY_PART_NAMES_TO_ASSET_TYPE[partName]
	end

	if assetTypeEnum then
		local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum :: Enum.AssetType]
		if not assetInfo.isBodyPart then
			return ""
		end
		return assetInfo.subParts[partName].rigAttachmentToParent.name
	end
	return ""
end

function ConstantsInterface.getAttachments(assetTypeEnum: Enum.AssetType?, partName: string): { string }
	if not assetTypeEnum then
		assetTypeEnum = Constants.UGC_BODY_PART_NAMES_TO_ASSET_TYPE[partName]
	end

	local validationData = nil
	if assetTypeEnum then
		local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum :: Enum.AssetType]
		if not assetInfo.isBodyPart then
			return {}
		end
		validationData = assetInfo.subParts[partName]
	end
	local results = {}
	if validationData then
		table.insert(results, validationData.rigAttachmentToParent.name)

		for attachmentName in validationData.otherAttachments do
			table.insert(results, attachmentName)
		end
	end
	return results
end

function ConstantsInterface.getTextureLimit(
	assetTypeEnum: Enum.AssetType?,
	inst: Instance,
	propertyName: string
): number
	if not getEngineUGCValidateAssetTextureLimits() then
		return Constants.MAX_TEXTURE_SIZE
	end

	if not assetTypeEnum then
		return Constants.MAX_TEXTURE_SIZE
	end

	local assetTextureLimits = ValidationRulesUtil:getRules().TextureRules.AssetTextureLimits[assetTypeEnum]
	if not assetTextureLimits then
		return Constants.MAX_TEXTURE_SIZE
	end

	if inst:IsA("SpecialMesh") then
		if propertyName == "TextureId" then
			return assetTextureLimits.ColorMapSize
		end
	end

	if inst:IsA("MeshPart") then
		if propertyName == "TextureID" then
			return assetTextureLimits.ColorMapSize
		end
	end

	if inst:IsA("SurfaceAppearance") then
		if propertyName == "ColorMap" then
			return assetTextureLimits.ColorMapSize
		elseif propertyName == "MetalnessMap" then
			return assetTextureLimits.MetalnessMapSize
		elseif propertyName == "NormalMap" then
			return assetTextureLimits.NormalMapSize
		elseif propertyName == "RoughnessMap" then
			return assetTextureLimits.RoughnessMapSize
		end
	end

	return Constants.MAX_TEXTURE_SIZE
end

return ConstantsInterface
