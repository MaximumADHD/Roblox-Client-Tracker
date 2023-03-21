local RoduxGames = script:FindFirstAncestor("RoduxGames")
local Packages = RoduxGames.Parent
local Rodux = require(Packages.Rodux)
local Dash = require(Packages.Dash)
local ProductModel = require(RoduxGames.Models.ProductModel)

local DEFAULT_STATE = {}

export type State = {
	[string]: ProductModel.Type,
}

return function(options)
	local NetworkingGames = options.networkingGames

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingGames.GetExperiencesProductInfo.Succeeded.name] = function(state, action)
			return Dash.reduce(action.responseBody.data, function(result, value)
				local universeId = tostring(value.universeId)

				return Dash.join(result, {
					[universeId] = ProductModel.format(value),
				})
			end, state)
		end,
	})
end
