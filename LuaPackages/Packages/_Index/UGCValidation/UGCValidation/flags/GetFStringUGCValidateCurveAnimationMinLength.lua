--[[
	declare and retrieve the FStringUGCValidateCurveAnimationMinLength fast flag
]]

game:DefineFastString("UGCValidateCurveAnimationMinLength", "0")

local GetFStringUGCValidateCurveAnimationMinLength = {}

function GetFStringUGCValidateCurveAnimationMinLength.asString(): string
	return game:GetFastString("UGCValidateCurveAnimationMinLength")
end

function GetFStringUGCValidateCurveAnimationMinLength.asNumber(): number
	return tonumber(GetFStringUGCValidateCurveAnimationMinLength.asString()) :: number
end

return GetFStringUGCValidateCurveAnimationMinLength
