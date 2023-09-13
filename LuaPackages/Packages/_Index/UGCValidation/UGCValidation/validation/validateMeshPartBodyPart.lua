--!strict

--[[
	validateMeshPartBodyPart.lua exposes common tests for MeshPart Dynamic heads and body parts
]]

local root = script.Parent.Parent

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
	isServer: boolean,
	allowUnreviewedAssets: boolean,
	restrictedUserIds: Types.RestrictedUserIds
): (boolean, { string }?)
	-- do this ASAP
	if getFFlagUGCValidationResetPhysicsData() then
		resetPhysicsData({ inst })
	end

	local validationResult = validateWithSchema(schema, inst)
	if not validationResult.success then
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

	if
		getFFlagUGCValidateBodyPartsCollisionFidelity()
		and not reasonsAccumulator:updateReasons(validateBodyPartCollisionFidelity(inst))
	then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateTags(inst)) then
		return reasonsAccumulator:getFinalResults()
	end

	if not reasonsAccumulator:updateReasons(validateAttributes(inst)) then
		return reasonsAccumulator:getFinalResults()
	end

	if getFFlagUGCValidateBodyPartsModeration() then
		local checkModeration = not isServer
		if allowUnreviewedAssets then
			checkModeration = false
		end
		if checkModeration then
			if not reasonsAccumulator:updateReasons(validateModeration(inst, restrictedUserIds)) then
				return reasonsAccumulator:getFinalResults()
			end
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validateMeshPartBodyPart
