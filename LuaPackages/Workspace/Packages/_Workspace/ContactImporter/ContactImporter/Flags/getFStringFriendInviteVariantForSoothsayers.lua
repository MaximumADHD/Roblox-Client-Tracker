game:DefineFastString("FriendInviteVariantForSoothsayers", "invitesOnly")

local getFStringContactImporterVariantForDev = require(script.Parent.getFStringContactImporterVariantForDev)

return function()
	local devVariant = getFStringContactImporterVariantForDev()
	if devVariant == "blended" or devVariant == "invitesOnly" then
		return devVariant
	else
		return game:GetFastString("FriendInviteVariantForSoothsayers")
	end
end
