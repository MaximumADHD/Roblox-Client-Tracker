local Players = game:GetService("Players")

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Url = require(Modules.LuaApp.Http.Url)

--[[
    This endpoint returns a promise that resolves to:

    [
        {
           "Id":3125622,
           "Username":"nsgriff",
           "AvatarUri":"https://t2.rbxcdn.com/fcb1a8ef9747a91d1c09a1e409796208",
           "AvatarFinal":true,
           "IsOnline":false,
        },
        {...}, {...},
    ]
]]--

-- networkImpl - (Service) an object that implements httpGetJson
return function(networkImpl, page)

	local argTable = {
		page = page,
	}

	local args = Url:makeQueryString(argTable)
	local url = string.format("%s/users/%s/friends?%s",
		Url.API_URL, tostring(Players.LocalPlayer.UserId), args
	)

	return networkImpl:httpGetJson(url)
end