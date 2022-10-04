local Packages = script.Parent
local RoduxNetworking = require(Packages.RoduxNetworking)
local Dash = require(Packages.Dash)
local NetworkingGames = require(Packages.NetworkingGames)

local Games = require(script.Reducers)
local Actions = require(script.Actions)
local Models = require(script.Models)
local Enums = require(script.Enums)

return {
	config = function(options)
		options = Dash.join(options, {
			networkingGames = NetworkingGames.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
		})

		return {
			installReducer = function()
				return Games(options)
			end,
			Actions = Actions,
			Models = Models,
			Enums = Enums,
		}
	end,
}
