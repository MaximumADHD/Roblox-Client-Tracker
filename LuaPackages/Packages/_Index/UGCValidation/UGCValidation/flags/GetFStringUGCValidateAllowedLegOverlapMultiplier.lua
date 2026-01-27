--[[
	declare and retrieve the FStringUGCValidateAllowedLegOverlapMultiplier fast string
]]

game:DefineFastString("UGCValidateAllowedLegOverlapMultiplier", "0.25")

local GetFStringUGCValidateAllowedLegOverlapMultiplier = {}

function GetFStringUGCValidateAllowedLegOverlapMultiplier.asString(): string
	return game:GetFastString("UGCValidateAllowedLegOverlapMultiplier")
end

function GetFStringUGCValidateAllowedLegOverlapMultiplier.asNumber(): number
	return tonumber(GetFStringUGCValidateAllowedLegOverlapMultiplier.asString()) :: number
end

return GetFStringUGCValidateAllowedLegOverlapMultiplier
