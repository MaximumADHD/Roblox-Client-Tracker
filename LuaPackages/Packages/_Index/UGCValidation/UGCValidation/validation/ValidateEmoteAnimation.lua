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

local flags = root.flags
local getFFlagUGCValidateEmoteAnimationExtendedTests = require(flags.getFFlagUGCValidateEmoteAnimationExtendedTests)
local getFFlagUGCValidateAccurateCurveFrames = require(flags.getFFlagUGCValidateAccurateCurveFrames)

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
	if getFFlagUGCValidateEmoteAnimationExtendedTests() then
		local instance
		do
			local success, reasons, instOpt = ValidateEmoteAnimation.validateStructure(validationContext)
			if not success then
				return false, reasons
			end
			instance = instOpt :: Instance
		end

		do
			local success, reasons = validateDependencies(instance, validationContext)
			if not success then
				return false, reasons
			end
		end

		-- if we're validating accurate curve frames, then we need to exit early if we don't own the animation else
		-- the call to ValidateCurveAnimation.validate() will hang forever as it's calling ContentProvider:PreloadAsync()
		if getFFlagUGCValidateAccurateCurveFrames() then
			local success, reasons =
				validateModeration(instance, validationContext.restrictedUserIds, validationContext)
			if not success then
				return false, reasons
			end
		end

		local anim = nil
		do
			local successfullyExecuted, animOpt = pcallDeferred(function()
				local resultTab = game:GetObjectsAllOrNone((instance :: Animation).AnimationId)
				return if resultTab and #resultTab > 0 then resultTab[1] else nil
			end, validationContext)

			if not successfullyExecuted or not animOpt then
				return reportError(
					"Could not download Curve animation.",
					Analytics.ErrorType.validateEmoteAnimation_FailedToDownloadCurveAnimation,
					validationContext
				)
			end
			anim = animOpt :: Instance
		end

		local reasonsAccumulator = FailureReasonsAccumulator.new()
		reasonsAccumulator:updateReasons(validateTags(instance, validationContext))
		reasonsAccumulator:updateReasons(validateAttributes(instance, validationContext))
		reasonsAccumulator:updateReasons(
			ValidateCurveAnimation.validate(anim, (instance :: Animation).AnimationId, validationContext)
		)

		if not getFFlagUGCValidateAccurateCurveFrames() then
			reasonsAccumulator:updateReasons(
				validateModeration(instance, validationContext.restrictedUserIds, validationContext)
			)
		end
		return reasonsAccumulator:getFinalResults()
	else
		local reasonsAccumulator = FailureReasonsAccumulator.new()
		reasonsAccumulator:updateReasons(validateSingleInstance(validationContext.instances or {}, validationContext))
		return reasonsAccumulator:getFinalResults()
	end
end

return ValidateEmoteAnimation
