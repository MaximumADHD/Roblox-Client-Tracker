local CorePackages = game:GetService("CorePackages")
local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

--[[
	Docs: https://thumbnails.roblox.com/docs#!/Games/get_v1_games_icons
	This resolves to
	{
	"data": [
		{
		"targetId": 0,
		"state": "Error",
		"imageUrl": "string"
		}
	]
}
]]
return function (requestImpl, universeIds, size)
	local qs = Url:makeQueryString({
		universeIds = table.concat(universeIds, ","),
		format = "png",
		size = size,
	})
	local url = string.format("%sv1/games/icons?%s", Url.THUMBNAILS_URL, qs)
	return requestImpl(url, "GET")
end