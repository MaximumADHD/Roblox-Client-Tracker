--!strict

local root = script.Parent.Parent

local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)

local Analytics = require(root.Analytics)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

--NOTE: after the removal of FFlagUGCValidateBodyParts, this function can be updated to take in an `Instance` rather than an `Instance?`
local function validateHSR(inst: Instance?): (boolean, { string }?)
	if getFFlagUGCValidateBodyParts() then
		local objects = (inst :: Instance):GetDescendants()
		table.insert(objects, inst)

		local reasonsAccumulator = FailureReasonsAccumulator.new()
		for _, obj in objects do
			if (not obj:IsA("BaseWrap")) or (obj :: BaseWrap):IsHSRReady() then
				continue
			end
			Analytics.reportFailure(Analytics.ErrorType.validateHSR_HSRDataNotReady)
			reasonsAccumulator:updateReasons(false, { `HSR data not ready for {obj:GetFullName()}!` })
		end
		return reasonsAccumulator:getFinalResults()
	else
		if inst == nil then
			Analytics.reportFailure(Analytics.ErrorType.validateHSR_NoWrapLayer)
			return false, { "Could not find WrapLayer!" }
		end

		if not (inst :: any):IsHSRReady() then
			Analytics.reportFailure(Analytics.ErrorType.validateHSR_HSRDataNotReady)
			return false, { "HSR data not ready!" }
		end
		return true
	end
end

return validateHSR
