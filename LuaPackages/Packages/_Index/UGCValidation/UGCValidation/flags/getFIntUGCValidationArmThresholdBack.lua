--!strict
--[[
	We used to have Left/Right thresholds, but they were the same for each side, so we will unify them.
]]

game:DefineFastInt("UGCValidationLeftArmThresholdBack", 33)

return function()
	return game:GetFastInt("UGCValidationLeftArmThresholdBack")
end
