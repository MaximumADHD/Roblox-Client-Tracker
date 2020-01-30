local Settings = script.Parent.Parent
local Actions = Settings.Actions
local SetRecentlyPlayedGamesFetching = require(Actions.SetRecentlyPlayedGamesFetching)

return function(state, action)
	state = state or {}
	if action.type == SetRecentlyPlayedGamesFetching.name then
		state = {
			fetching = action.fetching,
		}
	end
	return state
end