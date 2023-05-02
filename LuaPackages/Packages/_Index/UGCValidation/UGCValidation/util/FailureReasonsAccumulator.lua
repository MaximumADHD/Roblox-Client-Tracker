--!strict

local FFlagUGCReturnAllValidations = game:GetFastFlag("UGCReturnAllValidations")

local FailureReasonsAccumulator = {}
FailureReasonsAccumulator.__index = FailureReasonsAccumulator

function FailureReasonsAccumulator.new()
	local self = {}

	self.passed = true
	self.reasons = {}

	return setmetatable(self, FailureReasonsAccumulator)
end

function FailureReasonsAccumulator:updateReasons(newSuccess: boolean, newReasons: { string }?): boolean
	if newSuccess then
		return true
	end

	table.insert(self.reasons, table.concat(newReasons :: { string }, "\n"))
	self.passed = false

	return FFlagUGCReturnAllValidations
end

function FailureReasonsAccumulator:getFinalResults(): (boolean, { string }?)
	if self.passed then
		return true
	end
	return false, self.reasons :: { string }
end

return FailureReasonsAccumulator
