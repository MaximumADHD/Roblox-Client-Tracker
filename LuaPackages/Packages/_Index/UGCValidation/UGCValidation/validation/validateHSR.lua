--!strict

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)

local function validateHSR(inst: Instance): (boolean, { string }?)
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
end

return validateHSR
