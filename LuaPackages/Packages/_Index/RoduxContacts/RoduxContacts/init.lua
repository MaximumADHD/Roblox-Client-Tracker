local Packages = script.Parent
local Dash = require(Packages.Dash) :: any
local RoduxNetworking = require(Packages.RoduxNetworking) :: any
local NetworkingContacts = require(Packages.NetworkingContacts) :: any

local Contacts = require(script.Reducers.ContactsReducer)

return {
	config = function(options)
		options = Dash.join(options, {
			networkingContacts = NetworkingContacts.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
		})

		return {
			installReducer = function()
				return Contacts(options)
			end,
		}
	end,
}
