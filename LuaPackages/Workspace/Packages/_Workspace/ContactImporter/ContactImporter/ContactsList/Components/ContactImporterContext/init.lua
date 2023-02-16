local ContactImporterContext = require(script.ContactImporterContext)

export type fireAnalyticsEvent = (event: any, additionalInfo: { [string]: any }?) -> ()

export type AnalyticsContext = {
	fireAnalyticsEvent: fireAnalyticsEvent,
	diagService: any?,
	eventIngestService: any?,
	entryPoint: any?,
	openProfilePeekView: any,
}

return ContactImporterContext
