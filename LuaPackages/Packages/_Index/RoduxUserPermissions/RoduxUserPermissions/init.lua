local Packages = script.Parent
local Dash = require(Packages.Dash) :: any
local RoduxNetworking = require(Packages.RoduxNetworking) :: any
local NetworkingUserSettings = require(Packages.NetworkingUserSettings) :: any
local NetworkingAccountInformation = require(Packages.NetworkingAccountInformation) :: any
local UserPermissions = require(script.Reducers.UserPermissionsReducer)

return {
	config = function(options)
		options = Dash.join(options, {
			networkingUserSettings = NetworkingUserSettings.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
			networkingAccountInformation = NetworkingAccountInformation.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
		})

		return {
			installReducer = function()
				return UserPermissions(options)
			end,
		}
	end,
}
