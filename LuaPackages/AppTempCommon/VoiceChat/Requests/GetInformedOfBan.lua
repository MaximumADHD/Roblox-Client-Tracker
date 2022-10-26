local CorePackages = game:GetService("CorePackages")
local Url = require(CorePackages.Workspace.Packages.Http).Url

--[[
	Documentation of endpoint:
	https://voice.roblox.com/docs#!/Voice/get_v1_moderation_informed_of_ban
]]

return function(requestImpl)
	local url = string.format("%sv1/moderation/informed-of-ban", Url.VOICE_URL)

	return requestImpl(url, "GET")
end
