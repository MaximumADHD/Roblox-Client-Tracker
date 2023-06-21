local CorePackages = game:GetService("CorePackages")

local Promise = require(CorePackages.Promise)
local Url = require(CorePackages.Workspace.Packages.Http).Url

-- Cache of promises by gameId
local cache = {}

return function(networkImpl, gameId)
	if cache[gameId] then
		return cache[gameId]
	end

	local url = string.format("%sv1/games?universeIds=%s", Url.GAME_URL, tostring(gameId))
	cache[gameId] = networkImpl(url, "GET"):andThen(function(result)
		local responseBody = result.responseBody

		if not responseBody or not result.responseBody.data then
			Promise.reject("Unexpected response when fetching game name")
		end

		local gameInfo = result.responseBody.data[1]
		if not (gameInfo and gameInfo.name) then
			Promise.reject("Unexpected response when fetching game name, no game info")
		end
		return Promise.resolve({
			Name = gameInfo.name,
			Description = gameInfo.description or "",
			Created = gameInfo.created,
		})
	end,
	function(err)
		return Promise.reject(err)
	end)

	return cache[gameId]
end
