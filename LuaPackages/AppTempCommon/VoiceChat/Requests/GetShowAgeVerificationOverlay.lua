local CorePackages = game:GetService("CorePackages")
local Url = require(CorePackages.Workspace.Packages.Http).Url

--[[
	Documentation of endpoint:
	https://voice.roblox.com/docs#!/Voice/get_v1_settings_verify_show_age_verification_overlay_universeId
]]

return function(requestImpl, universeId, placeId)
	assert(type(placeId) == "string", "GetShowAgeVerificationOverlay request expects placeId to be a string")
	assert(type(universeId) == "string", "GetShowAgeVerificationOverlay request expects universeId to be a string")
	
	local url = string.format(
		"%s/v1/settings/verify/show-age-verification-overlay/%s",
		Url.VOICE_URL,
		if placeId ~= "" and placeId ~= nil
			then universeId .. "?placeId=" .. placeId
			else universeId
		)

	return requestImpl(url, "GET")
end
