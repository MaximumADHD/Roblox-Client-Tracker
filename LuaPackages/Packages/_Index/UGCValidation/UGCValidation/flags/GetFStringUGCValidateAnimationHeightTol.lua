--[[
	declare and retrieve the FStringUGCValidateAnimationHeightTol fast flag
]]

game:DefineFastString("UGCValidateAnimationHeightTol", "-3.1")

local GetFStringUGCValidateAnimationHeightTol = {}

function GetFStringUGCValidateAnimationHeightTol.asString(): string
	return game:GetFastString("UGCValidateAnimationHeightTol")
end

function GetFStringUGCValidateAnimationHeightTol.asNumber(): number
	return tonumber(GetFStringUGCValidateAnimationHeightTol.asString()) :: number
end

return GetFStringUGCValidateAnimationHeightTol
