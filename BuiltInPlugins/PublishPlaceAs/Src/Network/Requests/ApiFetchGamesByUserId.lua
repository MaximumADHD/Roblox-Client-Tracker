local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Packages.Promise)

local GameToPublish = require(Plugin.Src.Network.Models.GameToPublish)
local Http = require(Plugin.Src.Network.Http)

local FETCH_GAMES_URL = "v2/users/%d/games"
local FETCH_GAMES_TYPE = "games"

return function(searchArguments, optionalSettings)
	local userId = searchArguments.userId
	if not userId then
		return Promise.reject("NO USER ID - ApiFetchGamesByUserId")
	end
	local limit = optionalSettings.sortOrder or 10
	local sortOrder = optionalSettings.sortOrder or "Asc"
	local requestInfo = {
		Url = Http.BuildRobloxUrl(FETCH_GAMES_TYPE, FETCH_GAMES_URL, userId),
		Method = "GET",
		Params = {
			limit = limit,
			sortOrder = sortOrder,
		},
	}
	return Http.Request(requestInfo):andThen(function(jsonResult)
		local games = {}
		local result = HttpService:JSONDecode(jsonResult)
		for _, game in pairs(result.data) do
			local ok, val = GameToPublish.fromJsonData(game)
			if ok then
				table.insert(games, val)
			else
				error("Parsing error for ApiFetchGamesByUserId: " .. val)
			end
		end
		return games
	end)
end
