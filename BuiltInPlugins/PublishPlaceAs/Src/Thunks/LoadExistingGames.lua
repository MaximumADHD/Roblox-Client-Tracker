local Plugin = script.Parent.Parent.Parent

local SetGameInfo = require(Plugin.Src.Actions.SetGameInfo)
local ApiFetchGames = require(Plugin.Src.Network.Requests.ApiFetchGames)
local Cryo = require(Plugin.Packages.Cryo)
local gamesTable = {}
local currentGroup = -1

local FFlagStudioPublishAsHandlePromiseRejection = game:GetFastFlag("StudioPublishAsHandlePromiseRejection")
local FFlagUXImprovementAddScrollToGamesPage= game:GetFastFlag("UXImprovementAddScrollToGamesPage")

return function(type, id, pageCursor)
	return function(store)

		local limit = 0
		if not FFlagUXImprovementAddScrollToGamesPage then
			store:dispatch(SetGameInfo({ games = {} }))
			limit = 10
		else
			limit = 25
		end

		if id ~= currentGroup then
			gamesTable = {}
			currentGroup = id
		end

		local query = ApiFetchGames({type = type, id = id, cursor = pageCursor, limit = limit})

		if FFlagStudioPublishAsHandlePromiseRejection then
			query:andThen(function(resp)
				if FFlagUXImprovementAddScrollToGamesPage then
					for i = 0, #resp.games do 
						gamesTable[#gamesTable + 1] = resp.games[i]
					end
					gamesTable = Cryo.Dictionary.join(gamesTable)
					resp.games = gamesTable
				end
				store:dispatch(SetGameInfo(resp))
			end, function(err)
				error("Failed to load games")
			end)
		else
			query:andThen(function(resp)
				if FFlagUXImprovementAddScrollToGamesPage then
					for i = 0, #resp.games do 
						gamesTable[#gamesTable + 1] = resp.games[i]
					end
					gamesTable = Cryo.Dictionary.join(gamesTable)
					resp.games = gamesTable
				end
				store:dispatch(SetGameInfo(resp))
			end)
			:catch(function()
				error("Failed to load games")
			end)
		end
	end
end
