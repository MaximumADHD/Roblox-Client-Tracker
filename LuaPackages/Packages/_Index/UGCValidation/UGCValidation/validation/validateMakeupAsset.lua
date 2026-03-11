local root = script.Parent.Parent

local Types = require(root.util.Types)

local validateInstanceTree = require(root.validation.validateInstanceTree)
local validateModeration = require(root.validation.validateModeration)
local validateTags = require(root.validation.validateTags)
local validatePropertyRequirements = require(root.validation.validatePropertyRequirements)
local validateAttributes = require(root.validation.validateAttributes)
local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateMakeupDecal = require(root.validation.validateMakeupDecal)
local validateWrapTextureTransfer = require(root.validation.validateWrapTextureTransfer)
local ValidatePropertiesSensible = require(root.validation.ValidatePropertiesSensible)
local validateDependencies = require(root.validation.validateDependencies)

local createMakeupSchema = require(root.util.createMakeupSchema)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getEngineFeatureEngineUGCValidatePropertiesSensible =
	require(root.flags.getEngineFeatureEngineUGCValidatePropertiesSensible)

local function validateMakeupAsset(validationContext: Types.ValidationContext): (boolean, { string }?)
	local instances = validationContext.instances :: { Instance }

	local success: boolean, reasons: any
	success, reasons = validateSingleInstance(instances, validationContext)
	if not success then
		return false, reasons
	end

	local instance = instances[1]
	local schema = createMakeupSchema()

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
	success, reasons = validateDependencies(instance, validationContext)
	if not success then
		return false, reasons
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	reasonsAccumulator:updateReasons(validatePropertyRequirements(instance, nil, validationContext))

	reasonsAccumulator:updateReasons(validateTags(instance, validationContext))

	reasonsAccumulator:updateReasons(validateAttributes(instance, validationContext))

	reasonsAccumulator:updateReasons(validateModeration(instance, {}, validationContext))

	reasonsAccumulator:updateReasons(validateMakeupDecal(instance :: Decal, validationContext))

	reasonsAccumulator:updateReasons(validateWrapTextureTransfer(instance :: Decal, validationContext))

	return reasonsAccumulator:getFinalResults()
end

return validateMakeupAsset
