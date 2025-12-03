local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent

local SetAssets = require(InspectAndBuyFolder.Actions.SetAssets)

local IsLoaded = Rodux.createReducer(false, {
	[SetAssets.name] = function(state, action)
		return true
	end,
})

return IsLoaded
