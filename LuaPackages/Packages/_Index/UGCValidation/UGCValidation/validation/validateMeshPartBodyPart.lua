--!strict

--[[
	validateMeshPartBodyPart.lua exposes common tests for MeshPart Dynamic heads and body parts
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local getFFlagDebugUGCDisableSurfaceAppearanceTests = require(root.flags.getFFlagDebugUGCDisableSurfaceAppearanceTests)
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
local validateAssetTransparency = require(root.validation.validateAssetTransparency)

local validateWithSchema = require(root.util.validateWithSchema)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local resetPhysicsData = require(root.util.resetPhysicsData)
local Types = require(root.util.Types)

local function validateMeshPartBodyPart(
	inst: Instance,
	schema: any,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local isServer = validationContext.isServer
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
	local allowUnreviewedAssets = validationContext.allowUnreviewedAssets
	local skipSnapshot = if validationContext.bypassFlags then validationContext.bypassFlags.skipSnapshot else false
	local restrictedUserIds = validationContext.restrictedUserIds

	local validationResult = validateWithSchema(schema, inst)
	if not validationResult.success then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshPartBodyPart_ValidateWithSchema)
		return false,
			{
				string.format("Body part '%s' does not follow R15 schema. The specific issues are: ", inst.Name),
				validationResult.message,
			}
	end

	if not getFFlagDebugUGCDisableSurfaceAppearanceTests() then
		local result, failureReasons = validateSurfaceAppearances(inst)
		if not result then
			return result, failureReasons
		end
	end

	do
		local result, failureReasons = validateDependencies(inst, validationContext)
		if not result then
			return result, failureReasons
		end
	end

	--[[
		call resetPhysicsData() after checks above which are making sure mesh ids exist (as resetPhysicsData() uses meshIds) but before any checks
		for mesh size happen, as this removes physics data to ensure those size checks return accurate results
	]]
	local success, errorMessage = resetPhysicsData({ inst }, validationContext)
	if not success then
		return false, { errorMessage }
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	reasonsAccumulator:updateReasons(validateBodyPartMeshBounds(inst, validationContext))

	reasonsAccumulator:updateReasons(validateBodyPartChildAttachmentBounds(inst, validationContext))

	reasonsAccumulator:updateReasons(validateAssetBounds(nil, inst, validationContext))

	reasonsAccumulator:updateReasons(validateDescendantMeshMetrics(inst, validationContext))

	reasonsAccumulator:updateReasons(validateDescendantTextureMetrics(inst, validationContext))

	reasonsAccumulator:updateReasons(validateHSR(inst, validationContext))

	-- TODO: refactor to take in a context table after FFlagUseThumbnailerUtil is cleaned up
	if not skipSnapshot then
		local startTime = tick()
		reasonsAccumulator:updateReasons(validateAssetTransparency(inst, assetTypeEnum, isServer))
		Analytics.recordScriptTime("validateAssetTransparency", startTime, validationContext)
	end

	reasonsAccumulator:updateReasons(validateMaterials(inst))

	reasonsAccumulator:updateReasons(validateProperties(inst, assetTypeEnum))

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
