--!nonstrict
local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
local Constants = require(root.Constants)
local ConstantsInterface = require(root.ConstantsInterface)

local validateCoplanarIntersection = require(root.validation.validateCoplanarIntersection)
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
local validateThumbnailConfiguration = require(root.validation.validateThumbnailConfiguration)
local validateScaleType = require(root.validation.validateScaleType)
local validateTotalSurfaceArea = require(root.validation.validateTotalSurfaceArea)
local validateRigidMeshNotSkinned = require(root.validation.validateRigidMeshNotSkinned)
local validateDependencies = require(root.validation.validateDependencies)
local ValidatePropertiesSensible = require(root.validation.ValidatePropertiesSensible)

local RigidOrLayeredAllowed = require(root.util.RigidOrLayeredAllowed)
local createAccessorySchema = require(root.util.createAccessorySchema)
local getAttachment = require(root.util.getAttachment)
local getAccessoryScale = require(root.util.getAccessoryScale)

local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)

local getFFlagUGCValidateMeshVertColors = require(root.flags.getFFlagUGCValidateMeshVertColors)
local getEngineFeatureEngineUGCValidateRigidNonSkinned =
	require(root.flags.getEngineFeatureEngineUGCValidateRigidNonSkinned)
local getFFlagUGCValidateAccessoriesRCCOwnership = require(root.flags.getFFlagUGCValidateAccessoriesRCCOwnership)
local getEngineFeatureEngineUGCValidatePropertiesSensible =
	require(root.flags.getEngineFeatureEngineUGCValidatePropertiesSensible)
local getFFlagUGCValidateAccessoryAssetTextureLimit = require(root.flags.getFFlagUGCValidateAccessoryAssetTextureLimit)

local FFlagLegacyAccessoryCheckAvatarPartScaleType =
	game:DefineFastFlag("LegacyAccessoryCheckAvatarPartScaleType", false)

local function validateLegacyAccessory(validationContext: Types.ValidationContext): (boolean, { string }?)
	local instances = validationContext.instances
	local assetTypeEnum = validationContext.assetTypeEnum
	local isServer = validationContext.isServer
	local allowUnreviewedAssets = validationContext.allowUnreviewedAssets

	if not RigidOrLayeredAllowed.isRigidAccessoryAllowed(assetTypeEnum) then
		Analytics.reportFailure(
			Analytics.ErrorType.validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory,
			nil,
			validationContext
		)
		return false,
			{
				string.format(
					"Asset type '%s' is not a rigid accessory category. It can only be used with layered clothing.",
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

	local schema = createAccessorySchema(assetInfo.attachmentNames)

	success, reasons = validateInstanceTree(schema, instance, validationContext)
	if not success then
		return false, reasons
	end

	if getEngineFeatureEngineUGCValidatePropertiesSensible() then
		success, reasons = ValidatePropertiesSensible.validate(instance, validationContext)
		if not success then
			return false, reasons
		end
	end

	if getFFlagUGCValidateAccessoriesRCCOwnership() then
		success, reasons = validateDependencies(instance, validationContext)
		if not success then
			return false, reasons
		end
	end

	local handle = instance:FindFirstChild("Handle") :: Part
	local mesh = handle:FindFirstChildOfClass("SpecialMesh") :: SpecialMesh
	local meshInfo = {
		fullName = mesh:GetFullName(),
		fieldName = "MeshId",
		contentId = mesh.MeshId,
		context = instance.Name,
	} :: Types.MeshInfo

	local meshScale = mesh.Scale
	local attachment = getAttachment(handle, assetInfo.attachmentNames)

	local boundsInfo = assert(assetInfo.bounds[attachment.Name], "Could not find bounds for " .. attachment.Name)

	local validationResult = true
	reasons = {}

	local hasMeshContent = meshInfo.contentId ~= nil and meshInfo.contentId ~= ""
	local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(mesh, "MeshId", validationContext)
	if not getEditableMeshSuccess then
		if not meshInfo.contentId then
			hasMeshContent = false
			validationResult = false
			table.insert(reasons, {
				string.format(
					"Missing meshId on legacy accessory '%s'. Make sure you are using a valid meshId and try again.\n",
					instance.Name
				),
			})
		else
			return false,
				{
					string.format(
						"Failed to load mesh for legacy accessory '%s'. Make sure mesh exists and try again.",
						instance.Name
					),
				}
		end
	end

	meshInfo.editableMesh = editableMesh
	hasMeshContent = true

	local textureInfo = {
		fullName = mesh:GetFullName(),
		fieldName = "TextureId",
		contentId = mesh.TextureId,
	} :: Types.TextureInfo

	local getEditableImageSuccess, editableImage = getEditableImageFromContext(mesh, "TextureId", validationContext)
	if not getEditableImageSuccess then
		return false,
			{
				string.format(
					"Failed to load texture for legacy accessory '%s'. Make sure texture exists and try again.",
					instance.Name
				),
			}
	end

	textureInfo.editableImage = editableImage

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

	local textureSizeLimit = nil
	if getFFlagUGCValidateAccessoryAssetTextureLimit() then
		textureSizeLimit = ConstantsInterface.getTextureLimit(assetTypeEnum, mesh, textureInfo.fieldName)
	end
	success, failedReason = validateTextureSize(textureInfo, nil, validationContext, textureSizeLimit)
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

	success, failedReason = validateThumbnailConfiguration(instance, handle, meshInfo, meshScale, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
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

		if FFlagLegacyAccessoryCheckAvatarPartScaleType and handle:FindFirstChild("AvatarPartScaleType") then
			local accessoryScale = getAccessoryScale(handle, attachment)
			boundsInfo = {
				size = boundsInfo.size / accessoryScale,
				offset = if boundsInfo.offset then boundsInfo.offset / accessoryScale else nil,
			}
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

		if getEngineFeatureEngineUGCValidateRigidNonSkinned() then
			success, failedReason = validateRigidMeshNotSkinned(meshInfo.contentId, validationContext)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end
	end

	return validationResult, reasons
end

return validateLegacyAccessory
