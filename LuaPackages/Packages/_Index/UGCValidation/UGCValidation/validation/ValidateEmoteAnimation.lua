--[[
validate:
	check emote animations are set-up correctly
]]

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local util = root.util
local Types = require(util.Types)
local createEmoteSchema = require(util.createEmoteSchema)
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)
local pcallDeferred = require(util.pcallDeferred)

local validation = root.validation
local validateSingleInstance = require(validation.validateSingleInstance)
local validateInstanceTree = require(validation.validateInstanceTree)
local validateTags = require(validation.validateTags)
local validateAttributes = require(validation.validateAttributes)
local validateDependencies = require(validation.validateDependencies)
local validateModeration = require(validation.validateModeration)
local ValidateCurveAnimation = require(validation.ValidateCurveAnimation)
local ValidatePropertiesSensible = require(validation.ValidatePropertiesSensible)

local getEngineFeatureEngineUGCValidatePropertiesSensible =
	require(root.flags.getEngineFeatureEngineUGCValidatePropertiesSensible)
local getFFlagUGCValidateMigrateCurveAnim = require(root.flags.getFFlagUGCValidateMigrateCurveAnim)
local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)
local getFFlagUGCValidationCombineEntrypointResults = require(root.flags.getFFlagUGCValidationCombineEntrypointResults)

local ValidateEmoteAnimation = {}

local function reportError(
	msg: string,
	issueType: string,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if nil ~= validationContext.isServer and validationContext.isServer then
		-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
		-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
		-- which would mean the asset failed validation
		error(msg)
	end
	Analytics.reportFailure(issueType, nil, validationContext)
	return false, { msg }
end

function ValidateEmoteAnimation.validateStructure(
	validationContext: Types.ValidationContext
): (boolean, { string }?, Instance?)
	do
		local success, reasons = validateSingleInstance(validationContext.instances or {}, validationContext)
		if not success then
			return false, reasons
		end
	end

	local allInstances = validationContext.instances :: { Instance } -- validateSingleInstance() has checked this
	local instance = allInstances[1]
	do
		local success, reasons = validateInstanceTree(createEmoteSchema(), instance, validationContext)
		if not success then
			return false, reasons
		end
	end
	return true, nil, instance
end

function ValidateEmoteAnimation.validate(validationContext: Types.ValidationContext): (boolean, { string }?)
	local instance
	do
		local success, reasons, instOpt = ValidateEmoteAnimation.validateStructure(validationContext)
		if not success then
			return false, reasons
		end
		instance = instOpt :: Instance
	end

	if getEngineFeatureEngineUGCValidatePropertiesSensible() then
		local success, reasons = ValidatePropertiesSensible.validate(instance, validationContext)
		if not success then
			return false, reasons
		end
	end

	do
		local skipFlags = {
			skipExistenceCheck = getFFlagUGCValidateMigrateSchemaProperties()
				and getFFlagUGCValidationCombineEntrypointResults(),
			skipOwnershipCheck = getFFlagUGCValidateMigrateSchemaProperties()
				and getFFlagUGCValidationCombineEntrypointResults(),
		}
		local success, reasons = validateDependencies(instance, validationContext, skipFlags)
		if not success then
			return false, reasons
		end
	end

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	reasonsAccumulator:updateReasons(validateTags(instance, validationContext))
	if not (getFFlagUGCValidateMigrateSchemaProperties() and getFFlagUGCValidationCombineEntrypointResults()) then
		reasonsAccumulator:updateReasons(validateAttributes(instance, validationContext))
	end

	if not (getFFlagUGCValidateMigrateCurveAnim() and getFFlagUGCValidationCombineEntrypointResults()) then
		local anim = nil
		do
			local successfullyExecuted, animOpt = pcallDeferred(function()
				local resultTab = game:GetObjectsAllOrNone((instance :: Animation).AnimationId)
				return resultTab
			end, validationContext)

			if not successfullyExecuted or not animOpt then
				return reportError(
					"Could not download Curve animation.",
					Analytics.ErrorType.validateEmoteAnimation_FailedToDownloadCurveAnimation,
					validationContext
				)
			end

			if #animOpt == 1 then
				anim = animOpt[1]
			else
				Analytics.reportFailure(
					Analytics.ErrorType.validateCurveAnimation_AnimationHierarchyIsIncorrect,
					nil,
					validationContext
				)
				return false, { "Downloaded Curve animation did not have exactly one root. Please fix the animation." }
			end
		end

		reasonsAccumulator:updateReasons(ValidateCurveAnimation.validate(anim, validationContext))
	end

	if not (getFFlagUGCValidateMigrateSchemaProperties() and getFFlagUGCValidationCombineEntrypointResults()) then
		reasonsAccumulator:updateReasons(
			validateModeration(instance, validationContext.restrictedUserIds, validationContext)
		)
	end

	return reasonsAccumulator:getFinalResults()
end

return ValidateEmoteAnimation
