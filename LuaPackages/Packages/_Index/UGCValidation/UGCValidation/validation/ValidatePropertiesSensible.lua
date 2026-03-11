--[[
	ValidatePropertiesSensible.lua checks all Instance floating point properties are not NaN or Inf, and that all strings are not too long
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local util = root.util
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)
local Types = require(util.Types)

local getFIntUGCValidateMaxHSRDataLen = require(root.flags.getFIntUGCValidateMaxHSRDataLen)
local getEngineFeatureEngineUGCValidatePropertiesSensible =
	require(root.flags.getEngineFeatureEngineUGCValidatePropertiesSensible)

local ValidatePropertiesSensible = {}

local PropertyLengthRestrictions: any = nil

local function createPropertyLengthRestrictions()
	if PropertyLengthRestrictions then
		return
	end

	PropertyLengthRestrictions = {
		HiddenSurfaceRemovalAsset = { HSRData = getFIntUGCValidateMaxHSRDataLen() },
	}
end

function ValidatePropertiesSensible.resetPropertyLengthRestrictions()
	PropertyLengthRestrictions = nil
end

local function validateIndividual(inst: Instance): (boolean, { string }?)
	local result, problematicProperties = (UGCValidationService :: any):ValidatePropertiesSensible(
		inst,
		PropertyLengthRestrictions[inst.ClassName]
	)

	if not result then
		return false,
			{
				string.format(
					"%s %s has invalid properties: %s. These properties may be numeric values with NaNs or Infs, or strings/BinaryStrings longer than the max number of characters.",
					inst.ClassName,
					inst:GetFullName(),
					table.concat(problematicProperties, ", ")
				),
			}
	end

	return true
end

function ValidatePropertiesSensible.validate(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if not getEngineFeatureEngineUGCValidatePropertiesSensible() then
		return true
	end

	local startTime = tick()
	createPropertyLengthRestrictions()

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	local objects: { Instance } = inst:GetDescendants()
	table.insert(objects, inst)

	for _, obj in objects do
		reasonsAccumulator:updateReasons(validateIndividual(obj))
	end

	if not reasonsAccumulator:getFinalResults() then
		Analytics.reportFailure(
			Analytics.ErrorType.validatePropertiesSensible_IncorrectPropertiesFound,
			nil,
			validationContext
		)
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return ValidatePropertiesSensible
