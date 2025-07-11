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
	wrapLayer.MaxSize = Vector3.zero
	wrapLayer.Offset = Vector3.zero

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
