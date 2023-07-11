--!strict
local root = script:FindFirstAncestor("UGCValidation").Parent

local Constants = require(root.UGCValidation.Constants)

local ConstantsInterface = {}

function ConstantsInterface.isBodyPart(assetTypeEnum: Enum.AssetType): boolean
	return Constants.ASSET_TYPE_INFO[assetTypeEnum] and Constants.ASSET_TYPE_INFO[assetTypeEnum].isBodyPart
end

function ConstantsInterface.getRigAttachmentToParent(assetTypeEnum: Enum.AssetType?, partName: string): string
	if assetTypeEnum then
		local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum :: Enum.AssetType]
		if not assetInfo.isBodyPart then
			return ""
		end
		return assetInfo.subParts[partName].rigAttachmentToParent.name
	end

	for assetType, assetInfo in Constants.ASSET_TYPE_INFO do
		if not assetInfo.isBodyPart then
			continue
		end
		local validationData = assetInfo.subParts[partName]
		if validationData then
			return validationData.rigAttachmentToParent.name
		end
	end
	return ""
end

function ConstantsInterface.getAttachments(assetTypeEnum: Enum.AssetType?, partName: string): { string }
	local validationData = nil
	if assetTypeEnum then
		local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum :: Enum.AssetType]
		if not assetInfo.isBodyPart then
			return {}
		end
		validationData = assetInfo.subParts[partName]
	else
		for assetType, assetInfo in Constants.ASSET_TYPE_INFO do
			if not assetInfo.isBodyPart then
				continue
			end
			validationData = assetInfo.subParts[partName]
			if validationData then
				break
			end
		end
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

return ConstantsInterface
