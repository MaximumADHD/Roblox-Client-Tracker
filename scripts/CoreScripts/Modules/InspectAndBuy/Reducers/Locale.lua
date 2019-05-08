local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)
local InspectAndBuyFolder = script.Parent.Parent
local SetLocale = require(InspectAndBuyFolder.Actions.SetLocale)

local FALL_BACK_LOCALE = "en-us"

return Rodux.createReducer(
	FALL_BACK_LOCALE
, {
	[SetLocale.name] = function(state, action)
		return action.locale
	end,
})