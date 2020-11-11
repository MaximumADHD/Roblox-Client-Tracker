local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

local ReceivedUserCountryCode = require(CorePackages.AppTempCommon.LuaApp.Actions.ReceivedUserCountryCode)

local DEFAULT_STATE = ""
return Rodux.createReducer(DEFAULT_STATE, {
	[ReceivedUserCountryCode.name] = function(state, action)
		return action.countryCode
	end,
})
