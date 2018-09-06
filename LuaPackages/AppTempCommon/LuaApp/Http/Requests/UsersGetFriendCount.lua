local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

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

	local argTable = {
		userId = Players.LocalPlayer.UserId,
	}

	local args = Url:makeQueryString(argTable)
	local url = string.format("%s/user/get-friendship-count?%s",
		Url.API_URL, tostring(Players.LocalPlayer.UserId), args
	)

	return requestImpl(url, "GET")
end