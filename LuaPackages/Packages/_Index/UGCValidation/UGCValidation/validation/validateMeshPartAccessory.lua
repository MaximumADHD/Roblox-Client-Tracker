--!strict
local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local validateInstanceTree = require(root.validation.validateInstanceTree)
local validateMeshTriangles = require(root.validation.validateMeshTriangles)
local validateModeration = require(root.validation.validateModeration)
local validateMaterials = require(root.validation.validateMaterials)
local validateTags = require(root.validation.validateTags)
local validateMeshBounds = require(root.validation.validateMeshBounds)
local validateTextureSize = require(root.validation.validateTextureSize)
local validateProperties = require(root.validation.validateProperties)
local validateAttributes = require(root.validation.validateAttributes)
local validateMeshVertColors = require(root.validation.validateMeshVertColors)
local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateCanLoad = require(root.validation.validateCanLoad)
local validateThumbnailConfiguration = require(root.validation.validateThumbnailConfiguration)
local validateAccessoryName = require(root.validation.validateAccessoryName)
local validateSurfaceAppearances = require(root.validation.validateSurfaceAppearances)

local createMeshPartAccessorySchema = require(root.util.createMeshPartAccessorySchema)
local getAttachment = require(root.util.getAttachment)
local getMeshSize = require(root.util.getMeshSize)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local getFFlagUGCValidateThumbnailConfiguration = require(root.flags.getFFlagUGCValidateThumbnailConfiguration)
local getFFlagUGCValidationNameCheck = require(root.flags.getFFlagUGCValidationNameCheck)

local function validateMeshPartAccessory(
	instances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?,
	allowUnreviewedAssets: boolean?
): (boolean, { string }?)
	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]

	local success: boolean, reasons: any

	success, reasons = validateSingleInstance(instances)
	if not success then
		return false, reasons
	end

	local instance = instances[1]

	local schema = createMeshPartAccessorySchema(assetInfo.attachmentNames)

	success, reasons = validateInstanceTree(schema, instance)
	if not success then
		return false, reasons
	end

	if getFFlagUGCValidationNameCheck() and isServer then
		success, reasons = validateAccessoryName(instance)
		if not success then
			return false, reasons
		end
	end

	local handle = instance:FindFirstChild("Handle") :: MeshPart
	local meshId = handle.MeshId
	local meshSizeSuccess, meshSize = pcall(getMeshSize, meshId)
	if not meshSizeSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_FailedToLoadMesh)
		return false, { "Failed to read mesh" }
	end

	local meshScale = handle.Size / meshSize
	local textureId = handle.TextureID
	local attachment = getAttachment(handle, assetInfo.attachmentNames)
	assert(attachment)

	local boundsInfo = assert(assetInfo.bounds[attachment.Name], "Could not find bounds for " .. attachment.Name)

	if isServer then
		local textureSuccess = true
		local meshSuccess
		local _canLoadFailedReason: any = {}
		if textureId ~= "" then
			textureSuccess, _canLoadFailedReason = validateCanLoad(textureId)
		end
		meshSuccess, _canLoadFailedReason = validateCanLoad(meshId)
		if not textureSuccess or not meshSuccess then
			-- Failure to load assets should be treated as "inconclusive".
			-- Validation didn't succeed or fail, we simply couldn't run validation because the assets couldn't be loaded.
			error("Failed to load asset")
		end
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	reasonsAccumulator:updateReasons(validateMaterials(instance))

	reasonsAccumulator:updateReasons(validateProperties(instance))

	reasonsAccumulator:updateReasons(validateTags(instance))

	reasonsAccumulator:updateReasons(validateAttributes(instance))

	reasonsAccumulator:updateReasons(validateTextureSize(textureId))

	if getFFlagUGCValidateThumbnailConfiguration() then
		reasonsAccumulator:updateReasons(validateThumbnailConfiguration(instance, handle, meshId, meshScale))
	end

	local checkModeration = not isServer
	if allowUnreviewedAssets then
		checkModeration = false
	end
	if checkModeration then
		reasonsAccumulator:updateReasons(validateModeration(instance, {}))
	end

	if meshId == "" then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_NoMeshId)
		reasonsAccumulator:updateReasons(false, { "Mesh must contain valid MeshId" })
	else
		reasonsAccumulator:updateReasons(
			validateMeshBounds(handle, attachment, meshId, meshScale, assetTypeEnum, boundsInfo, assetTypeEnum.Name)
		)

		reasonsAccumulator:updateReasons(validateMeshTriangles(meshId))

		if game:GetFastFlag("UGCValidateMeshVertColors") then
			reasonsAccumulator:updateReasons(validateMeshVertColors(meshId, false))
		end
	end

	reasonsAccumulator:updateReasons(validateSurfaceAppearances(instance))

	return reasonsAccumulator:getFinalResults()
end

return validateMeshPartAccessory
