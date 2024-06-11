--!nocheck
local Invites = require(script.Reducers)
local Actions = require(script.Actions)
local Models = require(script.Models)
local Enums = require(script.Enums)

local Packages = script.Parent
local Cryo = require(Packages.Cryo)
local RoduxNetworking = require(Packages.RoduxNetworking)
local ShareLinksNetworking = require(Packages.ShareLinksNetworking)

return {
	config = function(options)
		options = Cryo.Dictionary.join(options, {
			shareLinksNetworking = ShareLinksNetworking.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
		})

		return {
			installReducer = function()
				return Invites(options)
			end,
			Actions = Actions,
			Models = Models,
			Enums = Enums,
		}
	end,
}
