--!strict

--[[
	validateMeshPartBodyPart.lua exposes common tests for MeshPart Dynamic heads and body parts
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local getFFlagDebugUGCDisableSurfaceAppearanceTests = require(root.flags.getFFlagDebugUGCDisableSurfaceAppearanceTests)
local getFFlagUGCValidationResetPhysicsData = require(root.flags.getFFlagUGCValidationResetPhysicsData)
local getFFlagUGCValidateBodyPartsCollisionFidelity = require(root.flags.getFFlagUGCValidateBodyPartsCollisionFidelity)
local getFFlagUGCValidateBodyPartsModeration = require(root.flags.getFFlagUGCValidateBodyPartsModeration)

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
local validateBodyPartCollisionFidelity = require(root.validation.validateBodyPartCollisionFidelity)
local validateModeration = require(root.validation.validateModeration)

local validateWithSchema = require(root.util.validateWithSchema)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local resetPhysicsData = require(root.util.resetPhysicsData)
local Types = require(root.util.Types)

local function validateMeshPartBodyPart(
	inst: Instance,
	schema: any,
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?,
	allowUnreviewedAssets: boolean?,
	restrictedUserIds: Types.RestrictedUserIds?
): (boolean, { string }?)
	-- do this ASAP
	if getFFlagUGCValidationResetPhysicsData() then
		resetPhysicsData({ inst })
	end

	local validationResult = validateWithSchema(schema, inst)
	if not validationResult.success then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshPartBodyPart_ValidateWithSchema)
		return false, { validationResult.message }
	end

	if not getFFlagDebugUGCDisableSurfaceAppearanceTests() then
		local result, failureReasons = validateSurfaceAppearances(inst)
		if not result then
			return result, failureReasons
		end
	end

	do
		local result, failureReasons = validateDependencies(inst, isServer, allowUnreviewedAssets, restrictedUserIds)
		if not result then
			return result, failureReasons
		end
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	reasonsAccumulator:updateReasons(validateBodyPartMeshBounds(inst, assetTypeEnum, isServer))

	reasonsAccumulator:updateReasons(validateBodyPartChildAttachmentBounds(inst, assetTypeEnum, isServer))

	reasonsAccumulator:updateReasons(validateAssetBounds(nil, inst, assetTypeEnum, isServer))

	reasonsAccumulator:updateReasons(validateDescendantMeshMetrics(inst, assetTypeEnum, isServer))

	reasonsAccumulator:updateReasons(validateDescendantTextureMetrics(inst, isServer))

	reasonsAccumulator:updateReasons(validateHSR(inst))

	reasonsAccumulator:updateReasons(validateMaterials(inst))

	reasonsAccumulator:updateReasons(validateProperties(inst))

	if getFFlagUGCValidateBodyPartsCollisionFidelity() then
		reasonsAccumulator:updateReasons(validateBodyPartCollisionFidelity(inst))
	end

	reasonsAccumulator:updateReasons(validateTags(inst))

	reasonsAccumulator:updateReasons(validateAttributes(inst))

	if getFFlagUGCValidateBodyPartsModeration() then
		local checkModeration = not isServer
		if allowUnreviewedAssets then
			checkModeration = false
		end
		if checkModeration then
			reasonsAccumulator:updateReasons(validateModeration(inst, restrictedUserIds))
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validateMeshPartBodyPart
