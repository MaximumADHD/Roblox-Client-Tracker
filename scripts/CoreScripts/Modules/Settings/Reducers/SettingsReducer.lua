local Reducers = script.Parent
local RecentlyPlayedGamesFetchingStatus = require(Reducers.RecentlyPlayedGamesFetchingStatus)
local RecentlyPlayedGames = require(Reducers.RecentlyPlayedGames)

return function(state, action)
	state = state or {}

	return {
		RecentlyPlayedGamesFetchingStatus = RecentlyPlayedGamesFetchingStatus(state.RecentlyPlayedGamesFetchingStatus, action),
		RecentlyPlayedGames = RecentlyPlayedGames(state.RecentlyPlayedGames, action),
	}
end