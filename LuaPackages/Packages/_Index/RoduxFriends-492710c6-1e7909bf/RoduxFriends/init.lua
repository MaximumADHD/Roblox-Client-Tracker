local Packages = script.Parent
local llama = require(Packages.llama)
local RoduxNetworking = require(Packages.RoduxNetworking)
local FriendsNetworking = require(Packages.FriendsNetworking)

local Friends = require(script.Reducers.FriendsReducer)
local Actions = require(script.Actions)
local Selectors = require(script.Selectors)
local Models = require(script.Models)
local Enums = require(script.Enums)

return {
	config = function(options)
		options = llama.Dictionary.join(options, {
			friendsNetworking = FriendsNetworking.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
		})

		return {
			installReducer = function()
				return Friends(options)
			end,
			Actions = Actions(options),
			Selectors = Selectors(options),
			Models = Models,
			Enums = Enums,
		}
	end
}
