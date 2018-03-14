local Players = game:GetService("Players")

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Url = require(Modules.LuaApp.Http.Url)

--[[
    This endpoint returns a promise that resolves to:

    [
        {
			"success:" true,
            "count": "0"
        },
    ]
]]--

-- networkImpl - (Service) an object that implements httpGetJson
return function(networkImpl, page)

	local argTable = {
		userId = Players.LocalPlayer.UserId,
	}

	local args = Url:makeQueryString(argTable)
	local url = string.format("%s/user/get-friendship-count?%s",
		Url.API_URL, tostring(Players.LocalPlayer.UserId), args
	)

	return networkImpl:httpGetJson(url)
end