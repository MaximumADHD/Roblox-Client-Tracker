local Plugin = script.Parent.Parent.Parent

local SetGamesLock = require(Plugin.Src.Actions.SetGamesLock)
local SetGames = require(Plugin.Src.Actions.SetGames)

return function()
	return function(store)
		store:dispatch(SetGamesLock(false))
		store:dispatch(SetGames({}))
	end
end
