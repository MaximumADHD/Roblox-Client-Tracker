local Users = require(script.Reducers)
local Actions = require(script.Actions)
local Models = require(script.Models)

local Packages = script.Parent
local Cryo = require(Packages.Cryo)
local RoduxNetworking = require(Packages.RoduxNetworking)
local FriendsNetworking = require(Packages.FriendsNetworking)
local UsersNetworking = require(Packages.UsersNetworking)
local roduxUsersTypes = require(script.roduxUsersTypes)

return {
	config = function(options)
		options = Cryo.Dictionary.join(options, {
			usersNetworking = UsersNetworking.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
			friendsNetworking = FriendsNetworking.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
		})

		return {
			installReducer = function()
				return Users(options)
			end,
			Actions = Actions,
			Models = Models,
			roduxUsersTypes = roduxUsersTypes,
		}
	end,
}
