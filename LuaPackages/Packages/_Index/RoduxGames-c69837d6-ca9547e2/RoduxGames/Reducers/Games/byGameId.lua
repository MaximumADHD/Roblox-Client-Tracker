local RoduxGames = script:FindFirstAncestor("RoduxGames")
local Packages = RoduxGames.Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)
local GameModel = require(RoduxGames.Models.GameModel)

local DEFAULT_STATE = {}

export type State = {
	[string]: GameModel.Type,
}

return function(options)
	local NetworkingGames = options.networkingGames

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingGames.GetExperiencesDetails.Succeeded.name] = function(state, action)
			return Dash.reduce(action.responseBody.data, function(result, value)
				local universeId = tostring(value.id)

				return Dash.join(result, {
					[universeId] = GameModel.format(value),
				})
			end, state)
		end,
	})
end
