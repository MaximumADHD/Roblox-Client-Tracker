local CorePackages = game:GetService("CorePackages")

local Settings = script.Parent.Parent
local Actions = Settings.Actions
--TODO: Currently Under Migration to CorePackages
local Immutable = require(CorePackages.AppTempCommon.Common.Immutable)
--
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