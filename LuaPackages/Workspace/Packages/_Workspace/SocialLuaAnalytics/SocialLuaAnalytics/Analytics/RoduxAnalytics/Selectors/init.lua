local AnalyticsTypes = require(script.Parent.AnalyticsTypes)
local getSessionIdByKey = require(script.getSessionIdByKey)

return function(options: AnalyticsTypes.Options)
	return {
		getSessionIdByKey = getSessionIdByKey(options),
	}
end
