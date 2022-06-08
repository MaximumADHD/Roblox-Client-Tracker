local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local common = require(script.common)
local displayOptions = require(script.displayOptions)
local placeInfo = require(script.placeInfo)
local report = require(script.report)

local Reducer = Rodux.combineReducers({
	common = common,
	displayOptions = displayOptions,
	placeInfo = placeInfo,
	report = report,
})

return Reducer
