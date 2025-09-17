--[[
	declare and retrieve the FStringUGCValidateFrameDeltaKeyTimeTol fast flag
]]

game:DefineFastString("UGCValidateFrameDeltaKeyTimeTol", "0.85")

local GetFStringUGCValidateFrameDeltaKeyTimeTol = {}

function GetFStringUGCValidateFrameDeltaKeyTimeTol.asString(): string
	return game:GetFastString("UGCValidateFrameDeltaKeyTimeTol")
end

function GetFStringUGCValidateFrameDeltaKeyTimeTol.asNumber(): number
	return tonumber(GetFStringUGCValidateFrameDeltaKeyTimeTol.asString()) :: number
end

return GetFStringUGCValidateFrameDeltaKeyTimeTol
