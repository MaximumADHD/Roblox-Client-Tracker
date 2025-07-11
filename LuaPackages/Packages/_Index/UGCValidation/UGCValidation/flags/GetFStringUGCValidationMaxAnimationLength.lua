--[[
	declare and retrieve the FStringUGCValidationMaxAnimationLength fast flag
]]

game:DefineFastString("UGCValidationMaxAnimationLength", "10")

local GetFStringUGCValidationMaxAnimationLength = {}

function GetFStringUGCValidationMaxAnimationLength.asString(): string
	return game:GetFastString("UGCValidationMaxAnimationLength")
end

function GetFStringUGCValidationMaxAnimationLength.asNumber(): number
	return tonumber(GetFStringUGCValidationMaxAnimationLength.asString()) :: number
end

return GetFStringUGCValidationMaxAnimationLength
