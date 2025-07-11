--[[
	declare and retrieve the FStringUGCValidationMaxAnimationDeltas fast flag
]]

game:DefineFastString("UGCValidationMaxAnimationDeltas", "1.5")

local GetFStringUGCValidationMaxAnimationDeltas = {}

function GetFStringUGCValidationMaxAnimationDeltas.asString(): string
	return game:GetFastString("UGCValidationMaxAnimationDeltas")
end

function GetFStringUGCValidationMaxAnimationDeltas.asNumber(): number
	return tonumber(GetFStringUGCValidationMaxAnimationDeltas.asString()) :: number
end

return GetFStringUGCValidationMaxAnimationDeltas
