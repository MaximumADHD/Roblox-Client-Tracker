local InGameMenu = script.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

return function(requestImpl, placeIds)
	for i, placeId in ipairs(placeIds) do
		placeIds[i] = tostring(placeId)
	end

	local argTable = {
		placeIds = placeIds,
	}

	-- construct the url
	local args = Url:makeQueryString(argTable)
	local url = string.format("%s/v1/games/multiget-place-details?%s",
		Url.GAME_URL, args
	)

	return requestImpl(url, "GET")
end