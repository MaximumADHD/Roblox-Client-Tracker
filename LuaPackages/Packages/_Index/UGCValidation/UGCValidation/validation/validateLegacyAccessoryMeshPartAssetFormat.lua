local root = script.Parent.Parent

local Types = require(root.util.Types)

local createLegacyAccessoryMeshPartAssetFormatSchema = require(root.util.createLegacyAccessoryMeshPartAssetFormatSchema)

local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateInstanceTree = require(root.validation.validateInstanceTree)
local validateLegacyAccessoryMeshPartAssetFormatMatch =
	require(root.validation.validateLegacyAccessoryMeshPartAssetFormatMatch)
local validateAccessoryName = require(root.validation.validateAccessoryName)
local validateSurfaceAppearances = require(root.validation.validateSurfaceAppearances)
local validateSurfaceAppearanceTextureSize = require(root.validation.validateSurfaceAppearanceTextureSize)
local validateSurfaceAppearanceTransparency = require(root.validation.validateSurfaceAppearanceTransparency)
local ValidatePropertiesSensible = require(root.validation.ValidatePropertiesSensible)

local getFFlagUGCValidationNameCheck = require(root.flags.getFFlagUGCValidationNameCheck)
local getEngineFeatureEngineUGCValidatePropertiesSensible =
	require(root.flags.getEngineFeatureEngineUGCValidatePropertiesSensible)

local function validateLegacyAccessoryMeshPartAssetFormat(
	specialMeshAssetFormatAccessory: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	assert(
		validationContext.instances ~= nil,
		"instances required in validationContext for validateLegacyAccessoryMeshPartAssetFormat"
	)
	local instances = validationContext.instances
	local isServer = validationContext.isServer
	local success: boolean, reasons: { string }?

	success, reasons = validateSingleInstance(instances, validationContext)
	if not success then
		return false, reasons
	end

	local meshPartAssetFormatAccessory = instances[1]

	-- we can assume these exist from checks in UGCValidationService.validate()
	local specialMeshAssetFormatHandle = specialMeshAssetFormatAccessory:FindFirstChild("Handle") :: Part
	local specialMeshAssetFormatAttachment =
		specialMeshAssetFormatHandle:FindFirstChildOfClass("Attachment") :: Attachment
	local schema = createLegacyAccessoryMeshPartAssetFormatSchema(specialMeshAssetFormatAttachment.Name)

	success, reasons = validateInstanceTree(schema, meshPartAssetFormatAccessory, validationContext)
	if not success then
		return false, reasons
	end

	if getEngineFeatureEngineUGCValidatePropertiesSensible() then
		success, reasons = ValidatePropertiesSensible.validate(meshPartAssetFormatAccessory, validationContext)
		if not success then
			return false, reasons
		end
	end

	success, reasons = validateSurfaceAppearances(meshPartAssetFormatAccessory, validationContext)
	if not success then
		return false, reasons
	end
	success, reasons = validateSurfaceAppearanceTextureSize(meshPartAssetFormatAccessory, validationContext)
	if not success then
		return false, reasons
	end
	success, reasons = validateSurfaceAppearanceTransparency(meshPartAssetFormatAccessory, validationContext)
	if not success then
		return false, reasons
	end

	if getFFlagUGCValidationNameCheck() and isServer then
		success, reasons = validateAccessoryName(meshPartAssetFormatAccessory, validationContext)
		if not success then
			return false, reasons
		end
	end

	success, reasons = validateLegacyAccessoryMeshPartAssetFormatMatch(
		meshPartAssetFormatAccessory,
		specialMeshAssetFormatAccessory,
		validationContext
	)
	if not success then
		return false, reasons
	end

	return true
end

return validateLegacyAccessoryMeshPartAssetFormat
