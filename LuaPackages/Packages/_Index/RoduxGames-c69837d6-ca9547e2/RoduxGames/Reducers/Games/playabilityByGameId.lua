local RoduxGames = script:FindFirstAncestor("RoduxGames")
local Packages = RoduxGames.Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)
local PlayabilityStatusEnums = require(RoduxGames.Enums.PlayabilityStatus)

local DEFAULT_STATE = {}

export type State = {
	[string]: typeof(PlayabilityStatusEnums),
}

return function(options)
	local NetworkingGames = options.networkingGames

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingGames.GetExperiencesPlayabilityStatus.Succeeded.name] = function(state, action)
			return Dash.reduce(action.responseBody, function(result, value)
				local universeId = value.universeId
				local playabilityStatus = value.playabilityStatus

				return Dash.join(result, {
					[universeId] = PlayabilityStatusEnums.fromRawValue(playabilityStatus),
				})
			end, state)
		end,
	})
end
