local CorePackages = game:GetService("CorePackages")
local Url = require(CorePackages.Workspace.Packages.Http).Url
local HttpService = game:GetService("HttpService")

--[[
	Documentation of endpoint:
	https://voice.roblox.com/docs#!/Voice/post_v1_moderation_informed_of_ban
]]

return function(requestImpl, informedOfBan)
	assert(type(informedOfBan) == "boolean", "PostInformedOfBan request expects informedOfBan to be a boolean")

	local url = string.format("%sv1/moderation/informed-of-ban", Url.VOICE_URL)
	local body = HttpService:JSONEncode({
		informedOfBan = informedOfBan,
	})
	return requestImpl(url, "POST", body)
end
