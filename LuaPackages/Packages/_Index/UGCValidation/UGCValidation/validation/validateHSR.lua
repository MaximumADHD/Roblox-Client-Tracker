--!strict

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local Types = require(root.util.Types)

local function validateHSR(inst: Instance, validationContext: Types.ValidationContext): (boolean, { string }?)
	local startTime = tick()
	if validationContext.bypassFlags and validationContext.bypassFlags.skipValidateHSR then
		return true
	end

	local objects = (inst :: Instance):GetDescendants()
	table.insert(objects, inst)

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	for _, obj in objects do
		if (not obj:IsA("BaseWrap")) or (obj :: BaseWrap):IsHSRReady() then
			continue
		end
		Analytics.reportFailure(Analytics.ErrorType.validateHSR_HSRDataNotReady)
		reasonsAccumulator:updateReasons(false, { `Missing HSR data for {obj:GetFullName()}. Please, try again.` })
	end

	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

return validateHSR
