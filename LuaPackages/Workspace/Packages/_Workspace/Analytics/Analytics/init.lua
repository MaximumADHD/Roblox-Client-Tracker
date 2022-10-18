local Analytics = require(script.Analytics)

export type Analytics = Analytics.Analytics

return {
	Analytics = Analytics,
	AnalyticsReporters = require(script.AnalyticsReporters),
	getPlatformTarget = require(script.getPlatformTarget),
}
