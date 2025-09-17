--[[
	ValidatePropertiesSensible.lua checks all Instance floating point properties are not NaN or Inf, and that all strings are not too long
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local util = root.util
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)
local Types = require(util.Types)

local getFIntUGCValidateMaxSensibleStringLength = require(root.flags.getFIntUGCValidateMaxSensibleStringLength)
local getFIntUGCValidateMaxSensibleBinaryStringLength =
	require(root.flags.getFIntUGCValidateMaxSensibleBinaryStringLength)

local ValidatePropertiesSensible = {}

local function validateIndividual(inst: Instance): (boolean, { string }?)
	local result, problematicProperties = (UGCValidationService :: any):ValidatePropertiesSensible(inst)
	if not result then
		return false,
			{
				string.format(
					"Instance %s has invalid properties: %s. These properties may be numeric values with NaNs or Infs, strings longer than %d characters, or BinaryStrings longer than %d characters.",
					inst:GetFullName(),
					table.concat(problematicProperties, ", "),
					getFIntUGCValidateMaxSensibleStringLength(),
					getFIntUGCValidateMaxSensibleBinaryStringLength()
				),
			}
	end
	return true
end

function ValidatePropertiesSensible.validate(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

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
