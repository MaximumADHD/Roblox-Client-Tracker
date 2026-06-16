local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent.Parent

local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidateMigrateCageGeometry = require(root.flags.getFFlagUGCValidateMigrateCageGeometry)
local getEngineFeatureEngineUGCValidationLCOOB = require(root.flags.getEngineFeatureEngineUGCValidationLCOOB)
local getFFlagEnforceMaxSizeOffsetForLC = require(root.flags.getFFlagEnforceMaxSizeOffsetForLC)

local LCWithinRenderBounds = {}

LCWithinRenderBounds.fflag = getFFlagUGCValidateMigrateCageGeometry
LCWithinRenderBounds.categories = { ValidationEnums.UploadCategory.LAYERED_CLOTHING }
LCWithinRenderBounds.requiredData = {}
LCWithinRenderBounds.expectedFailures = {}

LCWithinRenderBounds.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	if data.consumerConfig.consumerEnv == "IEC" then
		return
	end

	local accessory = data.rootInstance

	-- Engine-feature gate. Legacy returned FAIL when the engine feature was
	-- disabled (validateLayeredClothingInRenderBounds.lua:22-26). The engine
	-- feature is default-off in production today (per the FFlagUGCValidationLCOOB
	-- driver flag in the Common bucket), so this gate fires for live uploads;
	-- preserve the legacy FAIL verdict rather than silently passing.
	if not getEngineFeatureEngineUGCValidationLCOOB() then
		reporter:fail(ErrorSourceStrings.Keys.LCWithinRenderBounds_EngineFeatureDisabled, {
			accessoryName = accessory.Name,
		})
		return
	end
	local handle = accessory:FindFirstChild("Handle")
	if not handle then
		reporter:fail(ErrorSourceStrings.Keys.LCWithinRenderBounds_NoHandle, {
			accessoryName = accessory.Name,
		})
		return
	end

	local wrapLayer = handle:FindFirstChildWhichIsA("WrapLayer")
	if not wrapLayer then
		reporter:fail(ErrorSourceStrings.Keys.LCWithinRenderBounds_NoWrapLayer, {
			accessoryName = accessory.Name,
		})
		return
	end

	local typedWrapLayer = wrapLayer :: WrapLayer
	if getFFlagEnforceMaxSizeOffsetForLC() then
		if typedWrapLayer.MaxSize ~= Vector3.new(0, 0, 0) then
			reporter:fail(ErrorSourceStrings.Keys.LCWithinRenderBounds_NonZeroMaxSize, {})
			return
		end
		if typedWrapLayer.Offset ~= Vector3.new(0, 0, 0) then
			reporter:fail(ErrorSourceStrings.Keys.LCWithinRenderBounds_NonZeroOffset, {})
			return
		end
	else
		typedWrapLayer.MaxSize = Vector3.new(0, 0, 0)
		typedWrapLayer.Offset = Vector3.new(0, 0, 0)
	end

	local isOOB = (UGCValidationService :: any):IsDeformedLayeredClothingOutOfRenderBounds(accessory)

	if isOOB then
		reporter:fail(ErrorSourceStrings.Keys.LCWithinRenderBounds_OutOfBounds, {
			accessoryName = accessory.Name,
		})
	end
end

return LCWithinRenderBounds :: Types.ValidationModule
