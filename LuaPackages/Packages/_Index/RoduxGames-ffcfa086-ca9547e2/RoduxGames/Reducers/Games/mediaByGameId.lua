local RoduxGames = script:FindFirstAncestor("RoduxGames")
local Packages = RoduxGames.Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)
local GameMediaModel = require(RoduxGames.Models.GameMediaModel)

local DEFAULT_STATE = {}

export type State = {
	[string]: GameMediaModel.Type,
}

return function(options)
	local NetworkingGames = options.networkingGames
	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingGames.GetExperienceMedia.Succeeded.name] = function(state, action)
			local universeId = tostring(action.ids[1])
			return Dash.join(state, {
				[universeId] = Dash.map(action.responseBody.data, function(value)
					return GameMediaModel.format(value)
				end),
			})
		end,
	})
end
