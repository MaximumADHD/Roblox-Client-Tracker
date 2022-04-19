local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

local Report = require(script.report)

local Reducer = Rodux.combineReducers({
	report = Report,
})

return Reducer
