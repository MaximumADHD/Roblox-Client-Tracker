local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

local isNewFriendsEndpointsEnabled = require(CorePackages.AppTempCommon.LuaChat.Flags.isNewFriendsEndpointsEnabled)

--[[
	This endpoint returns a promise that resolves to:

	[
		{
			"success:" true,
			"count": "0"
		},
	]
]]--

-- requestImpl - (function<promise<HttpResponse>>(url, requestMethod, options))
return function(requestImpl)

	local url = string.format("%s/user/get-friendship-count?%s",
		Url.API_URL, tostring(Players.LocalPlayer.UserId)
	)

	if isNewFriendsEndpointsEnabled() then
		url = string.format("%s/my/friends/count", Url.FRIEND_URL)
	end

	return requestImpl(url, "GET")
end
