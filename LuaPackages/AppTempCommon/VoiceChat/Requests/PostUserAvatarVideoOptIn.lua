local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")
local Url = require(CorePackages.Workspace.Packages.Http).Url

--[[
	Documentation of endpoint:
	https://voice.roblox.com/docs/index.html?urls.primaryName=Voice%20Api%20v1

	Updates whether a user is opted in or out of avatar video. 
]]

return function(requestImpl, isUserOptIn)
	assert(type(isUserOptIn) == "boolean", "UserOptIn request expects isUserOptIn to be a boolean")

	local url = string.format("%sv1/settings/user-opt-in/avatarvideo/", Url.VOICE_URL)
	local body = HttpService:JSONEncode({
			isUserOptIn = isUserOptIn,
		})
	return requestImpl(url, "POST", { postBody = body })
end
