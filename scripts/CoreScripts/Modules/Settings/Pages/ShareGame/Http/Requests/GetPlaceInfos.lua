local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Url = require(Modules.Settings.Pages.ShareGame.Http.Url)

return function(networkImpl, placeIds)
	local argTable = {
		placeIds = placeIds,
	}

	-- construct the url
	local args = Url:makeQueryString(argTable)
	local url = string.format("%s/v1/games/multiget-place-details?%s",
		Url.GAME_URL, args
	)

	return networkImpl:httpGetJson(url)
end