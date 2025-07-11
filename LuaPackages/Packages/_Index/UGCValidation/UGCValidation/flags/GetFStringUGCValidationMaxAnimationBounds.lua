--[[
	declare and retrieve the FStringUGCValidationMaxAnimationBounds fast flag
]]

game:DefineFastString("UGCValidationMaxAnimationBounds", "25")

local GetFStringUGCValidationMaxAnimationBounds = {}

function GetFStringUGCValidationMaxAnimationBounds.asString(): string
	return game:GetFastString("UGCValidationMaxAnimationBounds")
end

function GetFStringUGCValidationMaxAnimationBounds.asNumber(): number
	return tonumber(GetFStringUGCValidationMaxAnimationBounds.asString()) :: number
end

return GetFStringUGCValidationMaxAnimationBounds
