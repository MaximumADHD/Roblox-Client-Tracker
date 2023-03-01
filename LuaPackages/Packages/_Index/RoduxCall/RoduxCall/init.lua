local Actions = require(script.Actions)
local Enums = require(script.Enums)
local Call = require(script.Reducers)
local Models = require(script.Models)

local Packages = script.Parent
local Cryo = require(Packages.Cryo) :: any
local RoduxNetworking = require(Packages.RoduxNetworking) :: any
local NetworkingCall = require(Packages.NetworkingCall) :: any

return {
	config = function(options)
		options = Cryo.Dictionary.join(options, {
			NetworkingCall = NetworkingCall.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
		})

		return {
			installReducer = function()
				return Call(options)
			end,
			Actions = Actions,
			Enums = Enums,
			Models = Models,
		}
	end,
}
