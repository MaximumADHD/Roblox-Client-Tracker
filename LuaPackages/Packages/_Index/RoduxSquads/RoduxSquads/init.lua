local Squad = require(script.Reducers)
local Actions = require(script.Actions)
local Models = require(script.Models)
local Enums = require(script.Enums)

local Packages = script.Parent
local Cryo = require(Packages.Cryo) :: any
local RoduxNetworking = require(Packages.RoduxNetworking) :: any
local NetworkingSquads = require(Packages.NetworkingSquads) :: any

return {
	config = function(options)
		options = Cryo.Dictionary.join(options, {
			NetworkingSquads = NetworkingSquads.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
		})

		return {
			installReducer = function()
				return Squad(options)
			end,
			Actions = Actions,
			Models = Models,
			Enums = Enums,
		}
	end,
}
