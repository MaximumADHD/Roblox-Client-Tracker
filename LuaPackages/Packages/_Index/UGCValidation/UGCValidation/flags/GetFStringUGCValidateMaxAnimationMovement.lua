--[[
	declare and retrieve the FStringUGCValidateMaxAnimationMovement fast flag
]]

game:DefineFastString("UGCValidateMaxAnimationMovement", "0.3")

local GetFStringUGCValidateMaxAnimationMovement = {}

function GetFStringUGCValidateMaxAnimationMovement.asString(): string
	return game:GetFastString("UGCValidateMaxAnimationMovement")
end

function GetFStringUGCValidateMaxAnimationMovement.asNumber(): number
	return tonumber(GetFStringUGCValidateMaxAnimationMovement.asString()) :: number
end

return GetFStringUGCValidateMaxAnimationMovement
