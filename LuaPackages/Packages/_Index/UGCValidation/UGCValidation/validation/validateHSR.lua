--!strict

local root = script.Parent.Parent

local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)

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
			if not reasonsAccumulator:updateReasons(false, { `HSR data not ready for {obj:GetFullName()}!` }) then
				return reasonsAccumulator:getFinalResults()
			end
		end
		return reasonsAccumulator:getFinalResults()
	else
		if inst == nil then
			return false, { "Could not find WrapLayer!" }
		end

		if not (inst :: any):IsHSRReady() then
			return false, { "HSR data not ready!" }
		end
		return true
	end
end

return validateHSR
