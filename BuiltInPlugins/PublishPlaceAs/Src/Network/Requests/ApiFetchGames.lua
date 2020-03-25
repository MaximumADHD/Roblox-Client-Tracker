local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent
local Promise = require(Plugin.Packages.Promise)

local GameToPublish = require(Plugin.Src.Network.Models.GameToPublish)
local Http = require(Plugin.Src.Network.Http)

local Constants = require(Plugin.Src.Resources.Constants)

local FETCH_GAMES_URL = "v1/search/universes"
local FETCH_GAMES_TYPE = "develop"

return function(searchArguments)
	local id = searchArguments.id
	local type = searchArguments.type
	local limit = searchArguments.limit or 10
	local sort = searchArguments.sort or "-LastUpdated"
	local sortOrder = searchArguments.sortOrder or "Asc"
	local cursor = searchArguments.cursor

	local query = ""
	if type == Constants.SUBJECT_TYPE.GROUP then 
		query = string.format("creator:Group archived:False groups:%i", id)
	elseif type == Constants.SUBJECT_TYPE.USER then
		query = "creator:User archived:False"
	end

	local requestInfo = {
		Url = Http.BuildRobloxUrl(FETCH_GAMES_TYPE, FETCH_GAMES_URL),
		Method = "GET",
		Params = {
			q = query,
			sort = sort,
			sortOrder = sortOrder,
			limit = limit,
			cursor = cursor,
		},
	}
	return Http.Request(requestInfo):andThen(function(jsonResult)
		local result = HttpService:JSONDecode(jsonResult)

		local page = {}
		if result.previousPageCursor then
			page.previousPageCursor = result.previousPageCursor
		end
		if result.nextPageCursor then
			page.nextPageCursor = result.nextPageCursor
		end

		page.games = {}
		for _, gameToPublish in pairs(result.data) do
			local ok, val = GameToPublish.fromJsonData(gameToPublish)
			if ok then
				table.insert(page.games, val)
			else
				error("Parsing error for ApiFetchGamesByUserId: " .. val)
			end
		end
		return page
	end)
end
