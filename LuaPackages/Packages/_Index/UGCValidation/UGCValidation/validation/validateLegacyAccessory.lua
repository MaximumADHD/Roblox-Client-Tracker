--!nonstrict
local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local validateInstanceTree = require(root.validation.validateInstanceTree)
local validateTags = require(root.validation.validateTags)
local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateThumbnailConfiguration = require(root.validation.validateThumbnailConfiguration)
local validateScaleType = require(root.validation.validateScaleType)
local validateDependencies = require(root.validation.validateDependencies)
local ValidatePropertiesSensible = require(root.validation.ValidatePropertiesSensible)

local RigidOrLayeredAllowed = require(root.util.RigidOrLayeredAllowed)
local createAccessorySchema = require(root.util.createAccessorySchema)
local getAttachment = require(root.util.getAttachment)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)
local getEngineFeatureEngineUGCValidatePropertiesSensible =
	require(root.flags.getEngineFeatureEngineUGCValidatePropertiesSensible)

local function validateLegacyAccessory(validationContext: Types.ValidationContext): (boolean, { string }?)
	local instances = validationContext.instances
	local assetTypeEnum = validationContext.assetTypeEnum
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
	do
		local skipFlags = {
			skipExistenceCheck = true,
			skipOwnershipCheck = true,
		}
		success, reasons = validateDependencies(instance, validationContext, skipFlags)
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

	assert(assetInfo.bounds[attachment.Name], "Could not find bounds for " .. attachment.Name)

	local validationResult = true
	reasons = {}

	local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(mesh, "MeshId", validationContext)
	if not getEditableMeshSuccess then
		if not meshInfo.contentId then
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

	success, failedReason = validateTags(instance, validationContext)
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

	return validationResult, reasons
end

return validateLegacyAccessory
