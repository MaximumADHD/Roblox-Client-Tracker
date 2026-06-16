--[[
	BoundingBoxAccurate validates that there are no sparse regions of an asset
	bounding box caused by low visibility geometry which inflates the asset bounds
	artificially. Uses the raster (image-based) method.
	Migrated from src/validation/validateAccurateBoundingBoxRasterMethod.lua.
]]

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local BodyAssetMasksRenderer = require(root.util.bodyAssetMasksRenderer)
local AccurateBoundingBoxRasterUtil = require(root.util.AccurateBoundingBoxRasterUtil)

local getFFlagUGCValidateMigratePoseBlocking = require(root.flags.getFFlagUGCValidateMigratePoseBlocking)

type BodyAssetMasksRenderer = BodyAssetMasksRenderer.BodyAssetMasksRenderer

local BoundingBoxAccurate = {}

BoundingBoxAccurate.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
}

BoundingBoxAccurate.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.renderMeshesData,
}

BoundingBoxAccurate.fflag = getFFlagUGCValidateMigratePoseBlocking

BoundingBoxAccurate.expectedFailures = {}

local function getAssetTypeFromUploadEnum(data: Types.SharedData): Enum.AssetType?
	if data.uploadEnum and data.uploadEnum.assetType then
		return data.uploadEnum.assetType
	end
	return nil
end

local function buildEditableMeshesFromSharedData(data: Types.SharedData): Types.EditableMeshes
	local editableMeshes: Types.EditableMeshes = {}
	for partName, meshData in data.renderMeshesData do
		local inst = data.rootInstance:FindFirstChild(partName, true)
		if not inst then
			-- For DynamicHead, the root IS the MeshPart
			if data.rootInstance.Name == partName then
				inst = data.rootInstance
			end
		end
		if inst and meshData.editable then
			editableMeshes[inst] = { MeshId = { instance = meshData.editable, created = false } }
		end
	end
	return editableMeshes
end

BoundingBoxAccurate.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local assetTypeEnum = getAssetTypeFromUploadEnum(data)
	if not assetTypeEnum then
		return
	end

	local inst = data.rootInstance
	local editableMeshes = buildEditableMeshesFromSharedData(data)

	local validationContext = {
		assetTypeEnum = assetTypeEnum,
		isServer = data.consumerConfig.consumerEnv == ValidationEnums.ConsumerEnv.Backend,
		editableMeshes = editableMeshes,
		shouldYield = false,
	} :: any

	local viewsForAsset = AccurateBoundingBoxRasterUtil.getBoundsViewsForAssetType(assetTypeEnum)
	local success, result = BodyAssetMasksRenderer.new(inst, viewsForAsset, validationContext)
	if not success then
		if result then
			for _, reason in result :: { string } do
				reporter:fail(ErrorSourceStrings.Keys.BoundingBox_ValidationFailed, {
					reason = reason,
				})
			end
		end
		return
	end

	local bodyAssetMasksWrapper = result :: BodyAssetMasksRenderer
	local validateSuccess, validateReasons =
		AccurateBoundingBoxRasterUtil.validate(inst, bodyAssetMasksWrapper, validationContext)

	if not validateSuccess and validateReasons then
		for _, reason in validateReasons :: { string } do
			reporter:fail(ErrorSourceStrings.Keys.BoundingBox_ValidationFailed, {
				reason = reason,
			})
		end
	end
end

return BoundingBoxAccurate :: Types.ValidationModule
