local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)

local Reducers = script.Parent
local EmotesMenu = Reducers.Parent

local Actions = EmotesMenu.Actions

local SetLocale = require(Actions.SetLocale)
local Constants = require(EmotesMenu.Constants)

return Rodux.createReducer(Constants.FallbackLocale, {
	[SetLocale.name] = function(state, action)
		return action.locale
	end,
})
