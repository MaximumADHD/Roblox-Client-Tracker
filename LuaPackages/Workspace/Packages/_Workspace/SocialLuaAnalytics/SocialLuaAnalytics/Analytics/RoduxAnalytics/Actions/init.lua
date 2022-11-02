local AnalyticsTypes = require(script.Parent.AnalyticsTypes)

return function(_options: AnalyticsTypes.Options)
	return {
		SessionIdUpdated = require(script.SessionIdUpdated),
	}
end
