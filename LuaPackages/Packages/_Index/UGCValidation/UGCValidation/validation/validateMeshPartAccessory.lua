local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local validateInstanceTree = require(root.validation.validateInstanceTree)
local validateTags = require(root.validation.validateTags)
local validateSingleInstance = require(root.validation.validateSingleInstance)
local ValidateMeshSizeProperty = require(root.validation.ValidateMeshSizeProperty)
local ValidatePropertiesSensible = require(root.validation.ValidatePropertiesSensible)
local validateDependencies = require(root.validation.validateDependencies)

local createMeshPartAccessorySchema = require(root.util.createMeshPartAccessorySchema)
local getAttachment = require(root.util.getAttachment)
local getMeshSize = require(root.util.getMeshSize)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)
local pcallDeferred = require(root.util.pcallDeferred)
local RigidOrLayeredAllowed = require(root.util.RigidOrLayeredAllowed)

local getEngineFeatureEngineUGCValidatePropertiesSensible =
	require(root.flags.getEngineFeatureEngineUGCValidatePropertiesSensible)

local function validateMeshPartAccessory(validationContext: Types.ValidationContext): (boolean, { string }?)
	assert(
		validationContext.assetTypeEnum ~= nil,
		"assetTypeEnum required in validationContext for validateMeshPartAccessory"
	)
	local instances = validationContext.instances :: { Instance }
	local assetTypeEnum = validationContext.assetTypeEnum :: Enum.AssetType
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

	local schema = createMeshPartAccessorySchema(assetInfo.attachmentNames)

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

	local handle = instance:FindFirstChild("Handle") :: MeshPart
	local meshInfo = {
		fullName = handle:GetFullName(),
		fieldName = "MeshId",
		contentId = handle.MeshId,
		context = instance.Name,
	} :: Types.MeshInfo

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	if handle.DoubleSided then
		reasonsAccumulator:updateReasons(false, {
			string.format(
				"MeshPart '%s' is double-sided. Double-sided meshes are not allowed in rigid accessories.",
				handle:GetFullName()
			),
		})
		Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_DoubleSided, nil, validationContext)
	end

	local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(handle, "MeshId", validationContext)
	if not getEditableMeshSuccess then
		if not meshInfo.contentId then
			Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_NoMeshId, nil, validationContext)
			reasonsAccumulator:updateReasons(false, {
				string.format(
					"Accessory MeshPart '%s' must contain a valid meshId. Make sure the mesh referred to by the meshId exists and try again.",
					handle:GetFullName()
				),
			})
		else
			Analytics.reportFailure(
				Analytics.ErrorType.validateMeshPartAccessory_FailedToLoadMesh,
				nil,
				validationContext
			)
			return false,
				{
					string.format(
						"Failed to load mesh for accessory '%s'. Make sure mesh exists and try again.",
						instance.Name
					),
				}
		end
	end

	meshInfo.editableMesh = editableMesh :: EditableMesh

	local textureId = handle.TextureID
	local textureInfo = {
		fullName = handle:GetFullName(),
		fieldName = "TextureID",
		contentId = textureId,
	} :: Types.TextureInfo

	-- TextureId is optional, if a SurfaceAppearance is present instead.
	local _getEditableImageSuccess, editableImage = getEditableImageFromContext(handle, "TextureID", validationContext)
	textureInfo.editableImage = editableImage :: EditableImage

	local meshSizeSuccess, _meshSize = pcallDeferred(function()
		return getMeshSize(meshInfo)
	end, validationContext)

	if not meshSizeSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validateMeshPartAccessory_FailedToLoadMesh, nil, validationContext)
		return false,
			{
				string.format(
					"Failed to load mesh for accessory '%s'. Make sure mesh exists and try again.",
					instance.Name
				),
			}
	end

	local attachment = getAttachment(handle, assetInfo.attachmentNames)
	assert(attachment)

	assert(assetInfo.bounds[attachment.Name], "Could not find bounds for " .. attachment.Name)

	reasonsAccumulator:updateReasons(validateTags(instance, validationContext))
	reasonsAccumulator:updateReasons(ValidateMeshSizeProperty.validateSingleMeshPart(handle, validationContext))

	return reasonsAccumulator:getFinalResults()
end

return validateMeshPartAccessory
