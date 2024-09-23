--!strict
local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local validateCoplanarIntersection = require(root.validation.validateCoplanarIntersection)
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
local validateScaleType = require(root.validation.validateScaleType)
local validateTotalSurfaceArea = require(root.validation.validateTotalSurfaceArea)

local createMeshPartAccessorySchema = require(root.util.createMeshPartAccessorySchema)
local getAttachment = require(root.util.getAttachment)
local getMeshSize = require(root.util.getMeshSize)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local pcallDeferred = require(root.util.pcallDeferred)

local getFFlagUGCValidateCoplanarTriTestAccessory = require(root.flags.getFFlagUGCValidateCoplanarTriTestAccessory)
local getFFlagUGCValidateMeshVertColors = require(root.flags.getFFlagUGCValidateMeshVertColors)
local getFFlagUGCValidateThumbnailConfiguration = require(root.flags.getFFlagUGCValidateThumbnailConfiguration)
local getFFlagUGCValidationNameCheck = require(root.flags.getFFlagUGCValidationNameCheck)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)
local getFFlagUGCValidateTotalSurfaceAreaTestAccessory =
	require(root.flags.getFFlagUGCValidateTotalSurfaceAreaTestAccessory)

local function validateMeshPartAccessory(validationContext: Types.ValidationContext): (boolean, { string }?)
	assert(
		validationContext.assetTypeEnum ~= nil,
		"assetTypeEnum required in validationContext for validateMeshPartAccessory"
	)
	local instances = validationContext.instances :: { Instance }
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
	local isServer = validationContext.isServer
	local allowUnreviewedAssets = validationContext.allowUnreviewedAssets

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]

	local success: boolean, reasons: any

	success, reasons = validateSingleInstance(instances, validationContext)
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
	local meshInfo = {
		fullName = handle:GetFullName(),
		fieldName = "MeshId",
		contentId = handle.MeshId,
		context = instance.Name,
	} :: Types.MeshInfo

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local hasMeshContent = meshInfo.contentId ~= nil and meshInfo.contentId ~= ""
	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(handle, "MeshId", validationContext)
		if not getEditableMeshSuccess then
			if not meshInfo.contentId then
				hasMeshContent = false
				Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_NoMeshId)
				reasonsAccumulator:updateReasons(false, {
					string.format(
						"Accessory MeshPart '%s' must contain a valid meshId. Make sure the mesh referred to by the meshId exists and try again.",
						handle:GetFullName()
					),
				})
			else
				Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_FailedToLoadMesh)
				return false,
					{
						string.format(
							"Failed to load mesh for accessory '%s'. Make sure mesh exists and try again.",
							instance.Name
						),
					}
			end
		end

		meshInfo.editableMesh = editableMesh
		hasMeshContent = true
	end

	local textureId = handle.TextureID
	local textureInfo = {
		fullName = handle:GetFullName(),
		fieldName = "TextureID",
		contentId = textureId,
	} :: Types.TextureInfo

	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		local getEditableImageSuccess, editableImage
		if textureId ~= "" then
			getEditableImageSuccess, editableImage = getEditableImageFromContext(handle, "TextureID", validationContext)
			if not getEditableImageSuccess then
				return false,
					{
						string.format(
							"Failed to load texture for accessory '%s'. Make sure texture exists and try again.",
							instance.Name
						),
					}
			end

			textureInfo.editableImage = editableImage
		end
	else
		if isServer then
			local textureSuccess = true
			local meshSuccess
			local _canLoadFailedReason: any = {}
			if textureId ~= "" then
				textureSuccess, _canLoadFailedReason = validateCanLoad(textureId)
			end
			meshSuccess, _canLoadFailedReason = validateCanLoad(handle.MeshId)
			if not textureSuccess or not meshSuccess then
				-- Failure to load assets should be treated as "inconclusive".
				-- Validation didn't succeed or fail, we simply couldn't run validation because the assets couldn't be loaded.
				error(
					string.format(
						"Failed to load children assets (Meshes, Textures, etc.) for '%s'. Make sure the assets exist and try again.",
						instance.Name
					)
				)
			end
		end
	end

	local meshSizeSuccess, meshSize
	if getFFlagUGCValidationShouldYield() then
		meshSizeSuccess, meshSize = pcallDeferred(function()
			return getMeshSize(meshInfo)
		end, validationContext)
	else
		meshSizeSuccess, meshSize = pcall(getMeshSize, meshInfo)
	end

	if not meshSizeSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_FailedToLoadMesh)
		return false,
			{
				string.format(
					"Failed to load mesh for accessory '%s'. Make sure mesh exists and try again.",
					instance.Name
				),
			}
	end

	local meshScale
	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		meshScale = getExpectedPartSize(handle, validationContext) / meshSize
	else
		meshScale = handle.Size / meshSize
	end

	local attachment = getAttachment(handle, assetInfo.attachmentNames)
	assert(attachment)

	local boundsInfo = assert(assetInfo.bounds[attachment.Name], "Could not find bounds for " .. attachment.Name)

	reasonsAccumulator:updateReasons(validateMaterials(instance))

	reasonsAccumulator:updateReasons(validateProperties(instance))

	reasonsAccumulator:updateReasons(validateTags(instance))

	reasonsAccumulator:updateReasons(validateAttributes(instance))

	reasonsAccumulator:updateReasons(validateTextureSize(textureInfo, true, validationContext))

	if getFFlagUGCValidateThumbnailConfiguration() then
		reasonsAccumulator:updateReasons(validateThumbnailConfiguration(instance, handle, meshInfo, meshScale))
	end

	local checkModeration = not isServer
	if allowUnreviewedAssets then
		checkModeration = false
	end
	if checkModeration then
		reasonsAccumulator:updateReasons(validateModeration(instance, {}))
	end

	if hasMeshContent then
		if getFFlagUGCValidateTotalSurfaceAreaTestAccessory() then
			reasonsAccumulator:updateReasons(validateTotalSurfaceArea(meshInfo, meshScale, validationContext))
		end

		reasonsAccumulator:updateReasons(
			validateMeshBounds(
				handle,
				attachment,
				meshInfo,
				meshScale,
				boundsInfo,
				assetTypeEnum.Name,
				validationContext
			)
		)

		reasonsAccumulator:updateReasons(validateMeshTriangles(meshInfo, nil, validationContext))

		if getFFlagUGCValidateMeshVertColors() then
			reasonsAccumulator:updateReasons(validateMeshVertColors(meshInfo, false, validationContext))
		end

		if getFFlagUGCValidateCoplanarTriTestAccessory() then
			reasonsAccumulator:updateReasons(validateCoplanarIntersection(meshInfo, meshScale, validationContext))
		end
	end

	reasonsAccumulator:updateReasons(validateSurfaceAppearances(instance))

	local partScaleType = handle:FindFirstChild("AvatarPartScaleType")
	if partScaleType and partScaleType:IsA("StringValue") then
		reasonsAccumulator:updateReasons(validateScaleType(partScaleType))
	end

	return reasonsAccumulator:getFinalResults()
end

return validateMeshPartAccessory
