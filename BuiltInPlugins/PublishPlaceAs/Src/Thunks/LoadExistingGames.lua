local Plugin = script.Parent.Parent.Parent

local SetGameInfo = require(Plugin.Src.Actions.SetGameInfo)
local ApiFetchGamesByUserId = require(Plugin.Src.Network.Requests.ApiFetchGamesByUserId)
local ApiFetchGamesByGroupId = require(Plugin.Src.Network.Requests.ApiFetchGamesByGroupId)

return function(isUserId, id, pageCursor)
	return function(store)
		store:dispatch(SetGameInfo({ games = {} }))
		local query
		if isUserId then
			query = ApiFetchGamesByUserId({userId = id}, {cursor = pageCursor,})
		else
			query = ApiFetchGamesByGroupId({groupId = id}, {cursor = pageCursor,})
		end

		query:andThen(function(resp)
			store:dispatch(SetGameInfo(resp))
		end)
		:catch(function()
			error("Failed to load games")
		end)

	end
end
