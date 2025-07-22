--!nonstrict
local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local validateLCCageQuality = require(root.validation.validateLCCageQuality)
local validateInstanceTree = require(root.validation.validateInstanceTree)
local validateMeshTriangles = require(root.validation.validateMeshTriangles)
local validateModeration = require(root.validation.validateModeration)
local validateMaterials = require(root.validation.validateMaterials)
local validateTags = require(root.validation.validateTags)
local validateMeshBounds = require(root.validation.validateMeshBounds)
local validateTextureSize = require(root.validation.validateTextureSize)
local validatePropertyRequirements = require(root.validation.validatePropertyRequirements)
local validateAttributes = require(root.validation.validateAttributes)
local validateMeshVertColors = require(root.validation.validateMeshVertColors)
local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateHSR = require(root.validation.validateHSR)
local validateThumbnailConfiguration = require(root.validation.validateThumbnailConfiguration)
local validateAccessoryName = require(root.validation.validateAccessoryName)
local validateScaleType = require(root.validation.validateScaleType)
local validateLCInRenderBounds = require(root.validation.validateLayeredClothingInRenderBounds)
local ValidateMeshSizeProperty = require(root.validation.ValidateMeshSizeProperty)

local validateTotalSurfaceArea = require(root.validation.validateTotalSurfaceArea)
local validateCoplanarIntersection = require(root.validation.validateCoplanarIntersection)
local validateMaxCubeDensity = require(root.validation.validateMaxCubeDensity)

local RigidOrLayeredAllowed = require(root.util.RigidOrLayeredAllowed)
local createLayeredClothingSchema = require(root.util.createLayeredClothingSchema)
local getAttachment = require(root.util.getAttachment)
local getMeshSize = require(root.util.getMeshSize)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local pcallDeferred = require(root.util.pcallDeferred)

local getFFlagUGCValidateMeshVertColors = require(root.flags.getFFlagUGCValidateMeshVertColors)
local getFFlagUGCValidateThumbnailConfiguration = require(root.flags.getFFlagUGCValidateThumbnailConfiguration)
local getFFlagUGCValidateLCCagesQuality = require(root.flags.getFFlagUGCValidateLCCagesQuality)
local getFFlagUGCValidationNameCheck = require(root.flags.getFFlagUGCValidationNameCheck)
local getEngineFeatureEngineUGCValidationMaxVerticesCollision =
	require(root.flags.getEngineFeatureEngineUGCValidationMaxVerticesCollision)

local getFFlagUGCValidateLCHandleScale = require(root.flags.getFFlagUGCValidateLCHandleScale)
local getFFlagUGCValidationRefactorMeshScale = require(root.flags.getFFlagUGCValidationRefactorMeshScale)

local getFIntUGCValidationLCHandleScaleOffsetMaximum =
	require(root.flags.getFIntUGCValidationLCHandleScaleOffsetMaximum) -- / 1000
local getFFlagValidateDeformedLayeredClothingIsInBounds =
	require(root.flags.getFFlagValidateDeformedLayeredClothingIsInBounds)
local getFFlagCheckLayeredClothingMeshSize = require(root.flags.getFFlagCheckLayeredClothingMeshSize)

local function validateLayeredClothingAccessory(validationContext: Types.ValidationContext): (boolean, { string }?)
	local instances = validationContext.instances
	local assetTypeEnum = validationContext.assetTypeEnum
	local isServer = validationContext.isServer
	local allowUnreviewedAssets = validationContext.allowUnreviewedAssets

	if not RigidOrLayeredAllowed.isLayeredClothingAllowed(assetTypeEnum) then
		Analytics.reportFailure(
			Analytics.ErrorType.validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing,
			nil,
			validationContext
		)
		return false,
			{
				string.format(
					"Asset type '%s' is not a layered clothing category. It can only be used with rigid accessories.",
					assetTypeEnum.Name
				),
			}
	end

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]

	local success: boolean, reasons: any

	success, reasons = validateSingleInstance(instances, validationContext)
	if not success then
		return false, reasons
	end

	local instance = instances[1]

	local schema = createLayeredClothingSchema(assetInfo.attachmentNames)

	success, reasons = validateInstanceTree(schema, instance, validationContext)
	if not success then
		return false, reasons
	end

	if getFFlagUGCValidationNameCheck() and isServer then
		success, reasons = validateAccessoryName(instance, validationContext)
		if not success then
			return false, reasons
		end
	end

	local validationResult = true
	reasons = {}

	local handle = instance:FindFirstChild("Handle") :: MeshPart
	local meshInfo = {
		fullName = handle:GetFullName(),
		fieldName = "MeshId",
		contentId = handle.MeshId,
		context = instance.Name,
	} :: Types.MeshInfo

	local hasMeshContent = meshInfo.contentId ~= nil and meshInfo.contentId ~= ""
	local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(handle, "MeshId", validationContext)
	if not getEditableMeshSuccess then
		if not meshInfo.contentId then
			hasMeshContent = false
			Analytics.reportFailure(
				Analytics.ErrorType.validateLayeredClothingAccessory_NoMeshId,
				nil,
				validationContext
			)
			validationResult = false
			table.insert(reasons, {
				string.format(
					"Missing meshId on layered clothing accessory '%s'. Make sure you are using a valid meshId and try again.\n",
					instance.Name
				),
			})
		else
			Analytics.reportFailure(
				Analytics.ErrorType.validateLayeredClothingAccessory_FailedToLoadMesh,
				nil,
				validationContext
			)
			return false,
				{
					string.format(
						"Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again.",
						instance.Name
					),
				}
		end
	end

	meshInfo.editableMesh = editableMesh
	hasMeshContent = true

	local textureId = handle.TextureID
	local textureInfo = {
		fullName = handle:GetFullName(),
		fieldName = "TextureID",
		contentId = textureId,
	} :: Types.TextureInfo

	local getEditableImageSuccess, editableImage
	if textureId ~= "" then
		getEditableImageSuccess, editableImage = getEditableImageFromContext(handle, "TextureID", validationContext)
		if not getEditableImageSuccess then
			return false,
				{
					string.format(
						"Failed to load texture for layered clothing accessory '%s'. Make sure texture exists and try again.",
						instance.Name
					),
				}
		end

		textureInfo.editableImage = editableImage
	end

	local meshSizeSuccess, meshSize
	if getFFlagUGCValidationRefactorMeshScale() then
		-- when getFFlagUGCValidationRefactorMeshScale is cleaned up, meshSizeSuccess and getMeshSize should be removed
		meshSize = handle.meshSize
	else
		meshSizeSuccess, meshSize = pcallDeferred(function()
			return getMeshSize(meshInfo)
		end, validationContext)

		if not meshSizeSuccess then
			Analytics.reportFailure(
				Analytics.ErrorType.validateLayeredClothingAccessory_FailedToLoadMesh,
				nil,
				validationContext
			)
			return false,
				{
					string.format(
						"Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again.",
						instance.Name
					),
				}
		end
	end

	local meshScale = getExpectedPartSize(handle, validationContext) / meshSize

	if getFFlagUGCValidateLCHandleScale() then
		if not meshScale:FuzzyEq(Vector3.one, getFIntUGCValidationLCHandleScaleOffsetMaximum() / 1000) then
			Analytics.reportFailure(
				Analytics.ErrorType.validateLayeredClothingAccessory_HandleIsScaled,
				nil,
				validationContext
			)

			table.insert(
				reasons,
				string.format(
					"%s has been scaled, but mesh parts with wrap layers do not support scaling. You need to change the Size property to match the MeshSize property.",
					handle.Name
				)
			)
			validationResult = false
		end
	end

	local attachment = getAttachment(handle, assetInfo.attachmentNames)

	local boundsInfo = assetInfo.bounds[attachment.Name]

	local failedReason: any = {}
	success, failedReason = validateMaterials(instance, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validatePropertyRequirements(instance, nil, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateTags(instance, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateAttributes(instance, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateTextureSize(textureInfo, true, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	local partScaleType = handle:FindFirstChild("AvatarPartScaleType")
	if partScaleType and partScaleType:IsA("StringValue") then
		success, failedReason = validateScaleType(partScaleType, validationContext)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	if getFFlagUGCValidateThumbnailConfiguration() then
		success, failedReason = validateThumbnailConfiguration(instance, handle, meshInfo, meshScale, validationContext)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	do
		local wrapLayer = handle:FindFirstChildOfClass("WrapLayer")

		if wrapLayer == nil then
			Analytics.reportFailure(
				Analytics.ErrorType.validateLayeredClothingAccessory_NoWrapLayer,
				nil,
				validationContext
			)
			table.insert(
				reasons,
				string.format(
					"Missing WrapLayer on layered clothing accessory %s. You need to create a child WrapLayer and try again.",
					instance.Name
				)
			)
			validationResult = false
		else
			success, failedReason = validateHSR(wrapLayer, validationContext)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end
	end

	local checkModeration = not isServer
	if allowUnreviewedAssets then
		checkModeration = false
	end
	if checkModeration then
		success, failedReason = validateModeration(instance, {}, validationContext)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	if hasMeshContent then
		success, failedReason = validateTotalSurfaceArea(meshInfo, meshScale, validationContext)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end

		if getFFlagCheckLayeredClothingMeshSize() then
			success, failedReason = ValidateMeshSizeProperty.validateSingleMeshPart(handle, validationContext)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end

		success, failedReason = validateMeshBounds(
			handle,
			attachment,
			meshInfo,
			meshScale,
			boundsInfo,
			assetTypeEnum.Name,
			validationContext
		)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end

		success, failedReason = validateMeshTriangles(meshInfo, nil, validationContext)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end

		if getFFlagUGCValidateMeshVertColors() then
			success, failedReason = validateMeshVertColors(meshInfo, false, validationContext)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end

		success, failedReason = validateCoplanarIntersection(meshInfo, meshScale, validationContext)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	if getEngineFeatureEngineUGCValidationMaxVerticesCollision() then
		success, failedReason = validateMaxCubeDensity(meshInfo, validationContext, meshScale)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	if getFFlagUGCValidateLCCagesQuality() then
		success, failedReason = validateLCCageQuality(instance, meshInfo, validationContext)
		if not success then
			for _, issue in failedReason do
				table.insert(reasons, issue)
			end
			validationResult = false
		end
	end

	if getFFlagValidateDeformedLayeredClothingIsInBounds() then
		success, failedReason = validateLCInRenderBounds(instance, validationContext)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	return validationResult, reasons
end

return validateLayeredClothingAccessory
