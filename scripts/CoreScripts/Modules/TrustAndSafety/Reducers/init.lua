local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local displayOptions = require(script.displayOptions)
local placeInfo = require(script.placeInfo)
local report = require(script.report)

local Reducer = Rodux.combineReducers({
	displayOptions = displayOptions,
	placeInfo = placeInfo,
	report = report,
})

return Reducer
