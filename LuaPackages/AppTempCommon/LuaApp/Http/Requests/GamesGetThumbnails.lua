--[[
	*** DEPRECATED ***
	TODO: removed this file after new thumbnail API is being in use without any flags
	RELATED: GAMEDISC-27 GAMEDISC-126 FIntLuaAppPercentRollOutNewThumbnailsApiV3
]]

local CorePackages = game:GetService("CorePackages")

local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

--[[
	This endpoint returns a promise that resolves to:
	[
		{
			"final": true,
			"url": "string",
			"retryToken": "string",
			"universeId": 0,
			"placeId": 0
		}, {...}, ...
	]
]]

-- requestImpl - (function<promise<HttpResponse>>(url, requestMethod, options))
-- imageTokens - (array<long>) the placeIds of the places you want to get thumbnails for
-- height - (int) the height of the asset to render
-- width - (int) the width of the asset to render
return function(requestImpl, imageTokens, height, width)
	local args = {}

	if height then
		table.insert(args, string.format("height=%d", height))
	end

	if width then
		table.insert(args, string.format("width=%d", width))
	end

	-- append all of the thumbnail tokens
	local totalTokens = 0
	for _, value in pairs(imageTokens) do
		totalTokens = totalTokens + 1
		table.insert(args, string.format("imageTokens=%s", value))
	end
	if totalTokens == 0 then
		error("cannot fetch thumbnails without tokens")
	end

	-- construct the url
	local url = string.format("%sv1/games/game-thumbnails?%s", Url.GAME_URL, table.concat(args, "&"))

	-- return a promise of the result listed above
	return requestImpl(url, "GET")
end