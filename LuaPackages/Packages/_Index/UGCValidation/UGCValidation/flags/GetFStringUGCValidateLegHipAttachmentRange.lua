--[[
	declare and retrieve the FStringUGCValidateLegHipAttachmentRange fast string
]]

game:DefineFastString("UGCValidateLegHipAttachmentRange", "0.25")

local GetFStringUGCValidateLegHipAttachmentRange = {}

function GetFStringUGCValidateLegHipAttachmentRange.asString(): string
	return game:GetFastString("UGCValidateLegHipAttachmentRange")
end

function GetFStringUGCValidateLegHipAttachmentRange.asNumber(): number
	return tonumber(GetFStringUGCValidateLegHipAttachmentRange.asString()) :: number
end

return GetFStringUGCValidateLegHipAttachmentRange
