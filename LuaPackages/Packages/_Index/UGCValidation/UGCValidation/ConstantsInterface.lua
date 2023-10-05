--!strict
local root = script.Parent

local Constants = require(root.Constants)

local ConstantsInterface = {}

function ConstantsInterface.isBodyPart(assetTypeEnum: Enum.AssetType): boolean
	return Constants.ASSET_TYPE_INFO[assetTypeEnum] and Constants.ASSET_TYPE_INFO[assetTypeEnum].isBodyPart
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
	if assetTypeEnum then
		local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum :: Enum.AssetType]
		if not assetInfo.isBodyPart then
			return ""
		end
		return assetInfo.subParts[partName].rigAttachmentToParent.name
	end

	for _, assetInfo in Constants.ASSET_TYPE_INFO do
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
		for _, assetInfo in Constants.ASSET_TYPE_INFO do
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

function ConstantsInterface.calculateFullBodyBounds(scaleType: string): (Vector3, Vector3)
	local minX, minY, minZ
	do
		local dynamicHeadMin = Constants.ASSET_TYPE_INFO[Enum.AssetType.DynamicHead].bounds[scaleType].minSize
		local torsoMin = Constants.ASSET_TYPE_INFO[Enum.AssetType.Torso].bounds[scaleType].minSize
		local leftArmMin = Constants.ASSET_TYPE_INFO[Enum.AssetType.LeftArm].bounds[scaleType].minSize
		local rightArmMin = Constants.ASSET_TYPE_INFO[Enum.AssetType.RightArm].bounds[scaleType].minSize
		local leftLegMin = Constants.ASSET_TYPE_INFO[Enum.AssetType.LeftLeg].bounds[scaleType].minSize
		local rightLegMin = Constants.ASSET_TYPE_INFO[Enum.AssetType.RightLeg].bounds[scaleType].minSize

		minX = math.max(torsoMin.x + leftArmMin.x + rightArmMin.x, leftLegMin.x + rightLegMin.x, dynamicHeadMin.x)
		minY = math.max(leftLegMin.y, rightLegMin.y) + torsoMin.y + dynamicHeadMin.y
		minZ = math.max(torsoMin.z, leftArmMin.z, rightArmMin.z, dynamicHeadMin.z, leftLegMin.z, rightLegMin.z)
	end

	local maxX, maxY, maxZ
	do
		local dynamicHeadMax = Constants.ASSET_TYPE_INFO[Enum.AssetType.DynamicHead].bounds[scaleType].maxSize
		local torsoMax = Constants.ASSET_TYPE_INFO[Enum.AssetType.Torso].bounds[scaleType].maxSize
		local leftArmMax = Constants.ASSET_TYPE_INFO[Enum.AssetType.LeftArm].bounds[scaleType].maxSize
		local rightArmMax = Constants.ASSET_TYPE_INFO[Enum.AssetType.RightArm].bounds[scaleType].maxSize
		local leftLegMax = Constants.ASSET_TYPE_INFO[Enum.AssetType.LeftLeg].bounds[scaleType].maxSize
		local rightLegMax = Constants.ASSET_TYPE_INFO[Enum.AssetType.RightLeg].bounds[scaleType].maxSize

		maxX = math.max(torsoMax.x + leftArmMax.x + rightArmMax.x, leftLegMax.x + rightLegMax.x, dynamicHeadMax.x)
		maxY = math.max(leftLegMax.y, rightLegMax.y) + torsoMax.y + dynamicHeadMax.y
		maxZ = math.max(torsoMax.z, leftArmMax.z, rightArmMax.z, dynamicHeadMax.z, leftLegMax.z, rightLegMax.z)
	end
	return Vector3.new(minX, minY, minZ), Vector3.new(maxX, maxY, maxZ)
end

return ConstantsInterface
