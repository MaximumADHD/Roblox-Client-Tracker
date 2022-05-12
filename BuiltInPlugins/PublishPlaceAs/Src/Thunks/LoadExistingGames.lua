local Plugin = script.Parent.Parent.Parent

local Constants = require(Plugin.Src.Resources.Constants)
local SetGameInfo = require(Plugin.Src.Actions.SetGameInfo)
local SetChooseGameQueryState = require(Plugin.Src.Actions.SetChooseGameQueryState)
local ApiFetchGames = require(Plugin.Src.Network.Requests.ApiFetchGames)
local Cryo = require(Plugin.Packages.Cryo)
local gamesTable = {}
local currentGroup = -1
local prevPageCursor = nil

return function(type, id, pageCursor)
	return function(store)
		if pageCursor ~= prevPageCursor or not pageCursor then

			-- only display the loading screen if we are loading for the first time
			if not pageCursor then
				store:dispatch(SetChooseGameQueryState(Constants.QUERY_STATE.QUERY_STATE_QUERYING))
			end

			prevPageCursor = pageCursor
			local limit = 25

			if id ~= currentGroup then
				gamesTable = {}
				currentGroup = id
			end

			local query = ApiFetchGames({type = type, id = id, cursor = pageCursor, limit = limit})

			query:andThen(function(resp)
				-- Concatenating gamesTable and resp.games
				for i = 1, #resp.games do
					gamesTable[#gamesTable + 1] = resp.games[i]
				end
				gamesTable = Cryo.Dictionary.join(gamesTable)
				resp.games = gamesTable
				store:dispatch(SetGameInfo(resp))
			end, function(err)
				store:dispatch(SetChooseGameQueryState(Constants.QUERY_STATE.QUERY_STATE_FAILED))
			end)
		end
	end
end
