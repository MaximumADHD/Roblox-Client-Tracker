local Packages = script.Parent
local Cryo = require(Packages.Cryo)
local RoduxNetworking = require(Packages.RoduxNetworking)
local FriendsNetworking = require(Packages.FriendsNetworking)

local Friends = require(script.Reducers.FriendsReducer)
local Actions = require(script.Actions)
local Selectors = require(script.Selectors)
local Models = require(script.Models)
local roduxFriendsTypes = require(script.roduxFriendsTypes)

return {
	config = function(options)
		options = Cryo.Dictionary.join(options, {
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
			roduxFriendsTypes = roduxFriendsTypes,
		}
	end
}
