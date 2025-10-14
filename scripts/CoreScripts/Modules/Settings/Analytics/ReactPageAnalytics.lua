local AnalyticsService = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")
local TelemetryService = game:GetService("TelemetryService")

local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol)

local EngineFeatureTelemetryServicePlaySessionInfoEnabled = game:GetEngineFeature("TelemetryServicePlaySessionInfoEnabled")

local FIntOpenReactPageThrottleHundredthsPercent = game:DefineFastInt("OpenReactPageThrottleHundredthsPercent", 0)
local FIntCloseReactPageThrottleHundredthsPercent = game:DefineFastInt("CloseReactPageThrottleHundredthsPercent", 0)

type TelemetryEventConfig = LoggingProtocol.TelemetryEventConfig

type ReactPageAnalyticsImpl = {
	__index: ReactPageAnalyticsImpl,
	new: () -> ReactPageAnalytics,
	configs: { [string]: TelemetryEventConfig },
	_logEventWithStandardizedFields: (ReactPageAnalytics, eventConfig: TelemetryEventConfig, ctx: string, customFields: { [string]: unknown }?) -> (),
	openPage: (ReactPageAnalytics, pageName: string) -> (),
	closePage: (ReactPageAnalytics, pageName: string) -> (),
}

type ReactPageAnalytics = typeof(setmetatable(
	{} :: {}, 
	{} :: ReactPageAnalyticsImpl
))

local ReactPageAnalytics: ReactPageAnalyticsImpl = {} :: ReactPageAnalyticsImpl
ReactPageAnalytics.__index = ReactPageAnalytics

ReactPageAnalytics.configs = {
	openPage = {
		eventName = "ingame_menu_action",
		backends = {
			LoggingProtocol.TelemetryBackends.EventIngest,
		},
		throttlingPercentage = FIntOpenReactPageThrottleHundredthsPercent,
		lastUpdated = { 2025, 9, 23 },
		description = [[Fires when a React menu page is opened]],
	},
	closePage = {
		eventName = "ingame_menu_action",
		backends = {
			LoggingProtocol.TelemetryBackends.EventIngest,
		},
		throttlingPercentage = FIntCloseReactPageThrottleHundredthsPercent,
		lastUpdated = { 2025, 9, 23 },
		description = [[Fires when a React menu page is closed]],
	}
}

function ReactPageAnalytics.new(): ReactPageAnalytics
	local self = {}
	return setmetatable(self, ReactPageAnalytics)
end

function ReactPageAnalytics:_logEventWithStandardizedFields(eventConfig: TelemetryEventConfig, ctx: string, customFields: { [string]: unknown }?)
	local standardizedFields = { "addPlaceId", "addUniverseId", "addSessionInfo"}
	local eventCustomFields: { [string]: unknown } = customFields or {}

	if EngineFeatureTelemetryServicePlaySessionInfoEnabled then
		table.insert(standardizedFields, "addPlaySessionId")
	else
		eventCustomFields.playsessionid = AnalyticsService:GetPlaySessionId()
	end

	TelemetryService:LogEvent(eventConfig, { 
		eventContext = ctx,
		standardizedFields = standardizedFields, 
		customFields = eventCustomFields 
	})
end

function ReactPageAnalytics:openPage(pageName: string)
	local ctx = `open_{pageName}_page`
	self:_logEventWithStandardizedFields(self.configs.openPage, ctx)
end

function ReactPageAnalytics:closePage(pageName: string)
	local ctx = `close_{pageName}_page`
	self:_logEventWithStandardizedFields(self.configs.closePage, ctx)
end


return ReactPageAnalytics
