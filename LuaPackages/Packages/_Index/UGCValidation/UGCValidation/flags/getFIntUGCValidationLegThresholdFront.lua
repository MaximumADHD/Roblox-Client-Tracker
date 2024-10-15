--!strict
--[[
	We used to have Left/Right thresholds, but they were the same for each side, so we will unify them.
]]

game:DefineFastInt("UGCValidationLeftLegThresholdFront", 50)

return function()
	return game:GetFastInt("UGCValidationLeftLegThresholdFront")
end
