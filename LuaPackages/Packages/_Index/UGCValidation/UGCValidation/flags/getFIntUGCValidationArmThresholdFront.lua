--!strict
--[[
	We used to have Left/Right thresholds, but they were the same for each side, so we will unify them.
]]

game:DefineFastInt("UGCValidationLeftArmThresholdFront", 35)

return function()
	return game:GetFastInt("UGCValidationLeftArmThresholdFront")
end
