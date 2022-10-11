--[[
	A centralized hub for basic metrics reporting.
	This class is designed to provide a baseline exposure to the reporters.

	Context specific Analytics.lua objects should be created in sub-projects,
	to report specific actions like chat interactions, or game page interactions.

	Analytics.lua and the reporters here in Common should serve to cover the
	most common interactions.
]]

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local Reporters = script.Parent.AnalyticsReporters

local DiagReporter = require(Reporters.Diag)
local EventStreamReporter = require(Reporters.EventStream)
local GoogleAnalyticsReporter = require(Reporters.GoogleAnalytics)
local InfluxDbReporter = require(Reporters.Influx)

export type Analytics = {
	Diag: DiagReporter.Diag,
	EventStream: EventStreamReporter.EventStream,
	GoogleAnalytics: GoogleAnalyticsReporter.GoogleAnalytics,
	InfluxDb: InfluxDbReporter.Influx,
}
type AnalyticsStatics = {
	new: (RbxAnalyticsService?) -> Analytics,
	mock: () -> Analytics,
}

local Analytics: AnalyticsStatics = {} :: any;
(Analytics :: any).__index = Analytics

-- reportingService : (Service, optional) an object that exposes the same functions as RbxAnalyticsService
function Analytics.new(reportingService: RbxAnalyticsService?): Analytics
	if not reportingService then
		reportingService = RbxAnalyticsService
	end

	-- All public reporting functions are exposed by the objects defined in the properties
	local self = {}
	-- Luau FIXME: analyze should know that `reportingService` is now of type `RbxAnalyticsService`
	self.Diag = DiagReporter.new(reportingService :: RbxAnalyticsService)
	self.EventStream = EventStreamReporter.new(reportingService :: RbxAnalyticsService)
	self.GoogleAnalytics = GoogleAnalyticsReporter.new(reportingService :: RbxAnalyticsService)
	self.InfluxDb = InfluxDbReporter.new(reportingService :: RbxAnalyticsService)

	setmetatable(self, Analytics)

	return self :: any
end

-- for a more useful mock, use
-- `src/internal/LuaApp/Modules/LuaApp/TestHelpers/createRbxAnalyticsServiceMock.lua`
-- It provides a RbxAnalyticsService mock that tracks each call made
-- to the service. Then simply construct the Analytics object with it.
-- ```
-- local rbxAnalyticsService = createRbxAnalyticsServiceMock()
-- local analytics = Analytics.new(rbxAnalyticsService)
-- ... do something
-- expect(rbxAnalyticsService.ReportCounter).toHaveBeenCalledWith(rbxAnalyticsService, ...)
-- ```
function Analytics.mock(): Analytics
	-- create a reporting service that does not fire any requests out to the world
	local fakeReportingService = {}
	function fakeReportingService.ReportCounter() end
	function fakeReportingService.ReportInfluxSeries() end
	function fakeReportingService.ReportStats() end
	function fakeReportingService.SetRBXEvent() end
	function fakeReportingService.SetRBXEventStream() end
	function fakeReportingService.TrackEvent() end
	function fakeReportingService.UpdateHeartbeatObject() end
	function fakeReportingService.SendEventDeferred() end

	return Analytics.new(fakeReportingService :: any)
end

return Analytics
