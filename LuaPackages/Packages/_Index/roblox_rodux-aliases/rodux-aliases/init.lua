local Packages = script.Parent
local Cryo = require(Packages.Cryo)
local RoduxNetworking = require(Packages.RoduxNetworking)
local AliasNetworking = require(Packages.AliasNetworking)

local Reducers = require(script.Reducers)
local Actions = require(script.Actions)
local Selectors = require(script.Selectors)

return {
	config = function(options)
		options = Cryo.Dictionary.join(options, {
			aliasNetworking = AliasNetworking.config({
				roduxNetworking = RoduxNetworking.mock(),
			}),
		})

		return {
			installReducer = function()
				return Reducers(options)
			end,
			Actions = Actions,
			Selectors = Selectors(options),
		}
	end,
}
