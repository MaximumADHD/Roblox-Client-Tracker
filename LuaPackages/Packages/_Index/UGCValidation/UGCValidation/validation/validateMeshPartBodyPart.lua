--!strict

--[[
	validateMeshPartBodyPart.lua exposes common tests for MeshPart Dynamic heads and body parts
]]

local root = script.Parent.Parent

local validateBodyPartMeshBounds = require(root.validation.validateBodyPartMeshBounds)
local validateAssetBounds = require(root.validation.validateAssetBounds)
local validateBodyPartChildAttachmentBounds = require(root.validation.validateBodyPartChildAttachmentBounds)
local validateDependencies = require(root.validation.validateDependencies)
local validateDescendantMeshMetrics = require(root.validation.validateDescendantMeshMetrics)
local validateDescendantTextureMetrics = require(root.validation.validateDescendantTextureMetrics)
local validateSurfaceAppearances = require(root.validation.validateSurfaceAppearances)
local validateMaterials = require(root.validation.validateMaterials)
local validateTags = require(root.validation.validateTags)
local validateProperties = require(root.validation.validateProperties)
local validateAttributes = require(root.validation.validateAttributes)
local validateHSR = require(root.validation.validateHSR)

local validateWithSchema = require(root.util.validateWithSchema)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local Types = require(root.util.Types)

local function validateMeshPartBodyPart(
	inst: Instance,
	schema: any,
	assetTypeEnum: Enum.AssetType,
	isServer: boolean,
	allowUnreviewedAssets: boolean,
	restrictedUserIds: Types.RestrictedUserIds
): (boolean, { string }?)
	local validationResult = validateWithSchema(schema, inst)
	if not validationResult.success then
		return false, { validationResult.message }
	end

	local result, failureReasons = validateSurfaceAppearances(inst)
	if not result then
		return result, failureReasons
	end

	result, failureReasons = validateDependencies(inst, isServer, allowUnreviewedAssets, restrictedUserIds)
	if not result then
		return result, failureReasons
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if not reasonsAccumulator:updateReasons(validateBodyPartMeshBounds(inst, assetTypeEnum, isServer)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateBodyPartChildAttachmentBounds(inst, assetTypeEnum, isServer)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateAssetBounds(inst, assetTypeEnum, isServer)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateDescendantMeshMetrics(inst, assetTypeEnum, isServer)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateDescendantTextureMetrics(inst, isServer)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateHSR(inst)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateMaterials(inst)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateProperties(inst)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateTags(inst)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateAttributes(inst)) then
		return reasonsAccumulator:getFinalResults()
	end

	return reasonsAccumulator:getFinalResults()
end

return validateMeshPartBodyPart
