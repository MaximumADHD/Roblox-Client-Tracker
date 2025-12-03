local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetView = require(InspectAndBuyFolder.Actions.SetView)
local Constants = require(InspectAndBuyFolder.Constants)

return Rodux.createReducer(Constants.View.Wide, {
	[SetView.name] = function(state, action)
		return action.view
	end,
})
