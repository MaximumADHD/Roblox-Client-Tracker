local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)

local Reducers = script.Parent
local EmotesMenu = Reducers.Parent

local Actions = EmotesMenu.Actions

local SetLayout = require(Actions.SetLayout)
local Constants = require(EmotesMenu.Constants)

return Rodux.createReducer(Constants.Layout.Large, {
	[SetLayout.name] = function(state, action)
		return action.layout
	end,
})
