local DiscoverabilityContext = require(script.DiscoverabilityContext)

export type fireAnalyticsEvent = (event: any, additionalInfo: { [string]: any }?) -> ()

export type AnalyticsContext = {
	fireAnalyticsEvent: fireAnalyticsEvent,
}

return DiscoverabilityContext
