local Plugin = script.Parent.Parent.Parent

local SetGameInfo = require(Plugin.Src.Actions.SetGameInfo)
local ApiFetchGames = require(Plugin.Src.Network.Requests.ApiFetchGames)

return function(type, id, pageCursor)
	return function(store)
		store:dispatch(SetGameInfo({ games = {} }))
		local query = ApiFetchGames({ type = type, id = id, cursor = pageCursor })

		query:andThen(function(resp)
			store:dispatch(SetGameInfo(resp))
		end)
		:catch(function()
			error("Failed to load games")
		end)

	end
end
