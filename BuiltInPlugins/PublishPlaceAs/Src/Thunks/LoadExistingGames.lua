local Plugin = script.Parent.Parent.Parent

local SetGamesLock = require(Plugin.Src.Actions.SetGamesLock)
local SetGames = require(Plugin.Src.Actions.SetGames)
local ApiFetchGamesByUserId = require(Plugin.Src.Network.Requests.ApiFetchGamesByUserId)

return function()
	return function(store)
		store:dispatch(SetGamesLock(true))

		-- TODO (kstephan) 2019/07/09 take userId as arg
		-- TODO (kstephan) 2019/07/09 take pagination token as arg to prepare for infinite scroll
		local query = ApiFetchGamesByUserId({userId = 926562939}, {limit = 10, sortOrder = "Asc"})

		query:andThen(function(resp)
			store:dispatch(SetGames(resp))
			store:dispatch(SetGamesLock(false))
		end)
		:catch(function()
			-- TODO (kstephan) 2019/07/09 User facing error message
			store:dispatch(SetGames({}))
			store:dispatch(SetGamesLock(false))
		end)

	end
end
