local Actions = require(script.Actions)
local Selectors = require(script.Selectors)
local Reducers = require(script.Reducers)
local AnalyticsTypes = require(script.AnalyticsTypes)

return {
	config = function(options: AnalyticsTypes.Options)
		return {
			installReducer = function()
				return Reducers(options)
			end,
			Actions = Actions(options),
			Selectors = Selectors(options),
		}
	end,
}
