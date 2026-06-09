--[[
	declare and retrieve the FStringUGCValidateMaxJointRotation fast flag (degrees)
]]

game:DefineFastString("UGCValidateMaxJointRotation", "180")

local GetFStringUGCValidateMaxJointRotation = {}

function GetFStringUGCValidateMaxJointRotation.asString(): string
	return game:GetFastString("UGCValidateMaxJointRotation")
end

function GetFStringUGCValidateMaxJointRotation.asNumber(): number
	return tonumber(GetFStringUGCValidateMaxJointRotation.asString()) :: number
end

return GetFStringUGCValidateMaxJointRotation
