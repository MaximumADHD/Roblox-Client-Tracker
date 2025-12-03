--[[
	declare and retrieve the FIntUGCValidationMaxAnimationRotationSpeedPerSecond fast int (degrees per second)
]]

game:DefineFastInt("UGCValidationMaxAnimationRotationSpeedPerSecond", 1750)

return function()
	return game:GetFastInt("UGCValidationMaxAnimationRotationSpeedPerSecond")
end
