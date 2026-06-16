local root = script.Parent.Parent.Parent

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local BoundsCalculator = require(root.util.BoundsCalculator)

local getFFlagUGCValidateMigrateBodyPartBounds = require(root.flags.getFFlagUGCValidateMigrateBodyPartBounds)

local AssetBoundsValid = {}

AssetBoundsValid.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.FULL_BODY,
}
AssetBoundsValid.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.uploadEnum,
}
AssetBoundsValid.conditionalData = {
	ValidationEnums.SharedDataMember.renderMeshesData,
}
AssetBoundsValid.fflag = getFFlagUGCValidateMigrateBodyPartBounds
AssetBoundsValid.expectedFailures = {}

local function getScaleTypeFromInstance(instance: Instance): string?
	local scaleTypeValue: StringValue? = instance:FindFirstChild("AvatarPartScaleType") :: StringValue
	if scaleTypeValue and Constants.AvatarPartScaleTypes[scaleTypeValue.Value] then
		return scaleTypeValue.Value
	end
	return nil
end

local function getConsistentScaleType(
	instance: Instance,
	assetTypeEnum: Enum.AssetType,
	reporter: Types.ValidationReporter
): string?
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	local prevScaleType: string? = nil

	if Enum.AssetType.DynamicHead == assetTypeEnum then
		return getScaleTypeFromInstance(instance)
	end

	for subPartName in pairs(assetInfo.subParts) do
		local meshHandle = instance:FindFirstChild(subPartName)
		if not meshHandle then
			continue
		end
		local scaleType = getScaleTypeFromInstance(meshHandle)
		if not scaleType then
			continue
		end
		if prevScaleType == nil then
			prevScaleType = scaleType
		elseif prevScaleType ~= scaleType then
			reporter:fail(ErrorSourceStrings.Keys.AssetBounds_InconsistentScaleType, nil, instance)
			return nil
		end
	end
	return prevScaleType
end

local function validateMinBounds(
	minSize: Vector3,
	assetName: string,
	minMaxBounds: Types.BoundsData,
	reporter: Types.ValidationReporter,
	instance: Instance?
)
	local meshSize = (minMaxBounds.maxMeshCorner :: Vector3) - (minMaxBounds.minMeshCorner :: Vector3)
	for _, dimension in { "X", "Y", "Z" } do
		local assetSizeOnAxis = (meshSize :: any)[dimension]
		local minSizeOnAxis = (minSize :: any)[dimension]
		if assetSizeOnAxis < minSizeOnAxis then
			reporter:fail(ErrorSourceStrings.Keys.AssetBounds_TooSmall, {
				assetName = assetName,
				axis = dimension,
				currentSize = string.format("%.2f", assetSizeOnAxis),
				minSize = string.format("%.2f", minSizeOnAxis),
			}, instance)
		end
	end
end

local function validateMaxBounds(
	maxSize: Vector3,
	assetName: string,
	minMaxBounds: Types.BoundsData,
	reporter: Types.ValidationReporter,
	instance: Instance?
)
	local overallSize = (minMaxBounds.maxOverall :: Vector3) - (minMaxBounds.minOverall :: Vector3)
	for _, dimension in { "X", "Y", "Z" } do
		local assetSizeOnAxis = (overallSize :: any)[dimension]
		local maxSizeOnAxis = (maxSize :: any)[dimension]
		if assetSizeOnAxis > maxSizeOnAxis then
			reporter:fail(ErrorSourceStrings.Keys.AssetBounds_TooLarge, {
				assetName = assetName,
				axis = dimension,
				currentSize = string.format("%.2f", assetSizeOnAxis),
				maxSize = string.format("%.2f", maxSizeOnAxis),
			}, instance)
		end
	end
end

local function createAllBodyPartsFromRootInstance(rootInstance: Instance): Types.AllBodyParts
	local results: Types.AllBodyParts = {}
	for _, child in rootInstance:GetChildren() do
		if child:IsA("MeshPart") then
			results[child.Name] = child
		end
	end
	return results
end

local function getFullBodyConsistentScaleType(
	allBodyParts: Types.AllBodyParts,
	reporter: Types.ValidationReporter,
	instance: Instance
): string?
	local prevScaleType: string? = nil
	for _, meshPart in allBodyParts do
		local scaleTypeValue: StringValue? = meshPart:FindFirstChild("AvatarPartScaleType") :: StringValue
		if not scaleTypeValue then
			continue
		end
		if not Constants.AvatarPartScaleTypes[scaleTypeValue.Value] then
			reporter:fail(ErrorSourceStrings.Keys.ScaleTypeInvalid, {
				ParentName = meshPart.Name,
			}, meshPart)
			return nil
		end
		local scaleType = scaleTypeValue.Value
		if prevScaleType == nil then
			prevScaleType = scaleType
		elseif prevScaleType ~= scaleType then
			reporter:fail(ErrorSourceStrings.Keys.AssetBounds_InconsistentScaleType, nil, instance)
			return nil
		end
	end
	return prevScaleType
end

AssetBoundsValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance
	local renderMeshesData = (data :: any).renderMeshesData
	local uploadCategory = data.uploadCategory

	if uploadCategory == ValidationEnums.UploadCategory.FULL_BODY then
		if not renderMeshesData then
			return
		end

		local allBodyParts = createAllBodyPartsFromRootInstance(instance)
		if not next(allBodyParts) then
			return
		end

		local scaleType = getFullBodyConsistentScaleType(allBodyParts, reporter, instance)
		if not scaleType then
			return
		end

		local boundsConfig = Constants.FULL_BODY_BOUNDS[scaleType]
		if not boundsConfig then
			return
		end

		local success, _, boundsResult =
			BoundsCalculator.calculateFullBodyBoundsFromData(allBodyParts, renderMeshesData)
		if not success then
			reporter:fetchError("Failed to calculate full body bounds")
			return
		end
		local minMaxBounds = boundsResult :: Types.BoundsData

		validateMinBounds(boundsConfig.minSize, "Full body", minMaxBounds, reporter, instance)
		validateMaxBounds(boundsConfig.maxSize, "Full body", minMaxBounds, reporter, instance)
		return
	end

	local assetTypeEnum = data.uploadEnum.assetType

	local scaleType = getConsistentScaleType(instance, assetTypeEnum, reporter)
	if not scaleType then
		return
	end

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]
	if not assetInfo or not assetInfo.bounds or not assetInfo.bounds[scaleType] then
		return
	end

	if not renderMeshesData then
		return
	end

	local success, _, boundsResult =
		BoundsCalculator.calculateAssetBoundsFromData(instance, assetTypeEnum, renderMeshesData)
	if not success then
		reporter:fetchError("Failed to calculate asset bounds for " .. (assetTypeEnum :: Enum.AssetType).Name)
		return
	end
	local minMaxBounds = boundsResult :: Types.BoundsData

	local assetName = (assetTypeEnum :: Enum.AssetType).Name
	validateMinBounds(assetInfo.bounds[scaleType].minSize, assetName, minMaxBounds, reporter, instance)
	validateMaxBounds(assetInfo.bounds[scaleType].maxSize, assetName, minMaxBounds, reporter, instance)
end

return AssetBoundsValid :: Types.ValidationModule
