--[[
	validateLayeredClothingInRenderBounds.lua validates that a layered clothing accessory is within the render bounds once deformed.
]]

local root = script.Parent.Parent

local UGCValidationService = game:GetService("UGCValidationService")

local Analytics = require(root.Analytics)
local util = root.util
local Types = require(util.Types)
local pcallDeferred = require(util.pcallDeferred)

local getEngineFeatureEngineUGCValidationLCOOB = require(root.flags.getEngineFeatureEngineUGCValidationLCOOB)
local getFFlagEnforceMaxSizeOffsetForLC = require(root.flags.getFFlagEnforceMaxSizeOffsetForLC)

return function(accessory: Accessory, validationContext: Types.ValidationContext): (boolean, { string }?)
	if validationContext.allowEditableInstances then
		return true -- skip validation for in-exp
	end

	if not getEngineFeatureEngineUGCValidationLCOOB() then
		return false,
			{
				"Engine feature 'EngineUGCValidationLCOOB' is not enabled. Skipping validation for layered clothing out of bounds.",
			}
	end

	local handle = accessory:FindFirstChild("Handle")
	if not handle then
		return false, { "Accessory does not have a Handle. Cannot validate layered clothing out of bounds." }
	end
	local wrapLayer = handle:FindFirstChildWhichIsA("WrapLayer")
	if not wrapLayer then
		return false, { "Accessory does not have a WrapLayer. Cannot validate layered clothing out of bounds." }
	end

	if getFFlagEnforceMaxSizeOffsetForLC() then
		if wrapLayer.MaxSize ~= Vector3.new(0, 0, 0) then
			return false, { "Accessory has a non-zero MaxSize." }
		end
		if wrapLayer.Offset ~= Vector3.new(0, 0, 0) then
			return false, { "Accessory has a non-zero Offset." }
		end
	else
		wrapLayer.MaxSize = Vector3.new(0, 0, 0)
		wrapLayer.Offset = Vector3.new(0, 0, 0)
	end

	local startTime = tick()
	local success, isOOB = pcallDeferred(function()
		return (UGCValidationService :: any):IsDeformedLayeredClothingOutOfRenderBounds(accessory)
	end, validationContext)

	if not success then
		Analytics.reportFailure(
			Analytics.ErrorType.validateDeformedLayeredClothingInRenderBounds_FailedToExecute,
			nil,
			validationContext
		)
		local errorMsg =
			string.format("Unable to validate if deformed layered clothing %s is out of render bounds.", accessory.Name)
		return false, { errorMsg }
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)

	if isOOB then
		Analytics.reportFailure(
			Analytics.ErrorType.validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds,
			nil,
			validationContext
		)
		local errorMsg = string.format(
			"Layered clothing validation failed for '%s'. When deformed, layered clothing becomes too large.",
			accessory.Name
		)
		return false, { errorMsg }
	end

	return true
end
