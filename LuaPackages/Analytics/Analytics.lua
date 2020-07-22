--[[
	A centralized hub for basic metrics reporting.
	This class is designed to provide a baseline exposure to the reporters.

	Context specific Analytics.lua objects should be created in sub-projects,
	to report specific actions like chat interactions, or game page interactions.

	Analytics.lua and the reporters here in Common should serve to cover the
	most common interactions.
]]

local AnalyticsService = game:GetService("RbxAnalyticsService")
local Reporters = script.Parent.AnalyticsReporters

local DiagReporter = require(Reporters.Diag)
local EventStreamReporter = require(Reporters.EventStream)
local GoogleAnalyticsReporter = require(Reporters.GoogleAnalytics)
local InfluxDbReporter = require(Reporters.Influx)


local Analytics = {}
Analytics.__index = Analytics

-- reportingService : (Service, optional) an object that exposes the same functions as AnalyticsService
function Analytics.new(reportingService)
	if not reportingService then
		reportingService = AnalyticsService
	end

	-- All public reporting functions are exposed by the objects defined in the properties
	local self = {}
	self.Diag = DiagReporter.new(reportingService)
	self.EventStream = EventStreamReporter.new(reportingService)
	self.GoogleAnalytics = GoogleAnalyticsReporter.new(reportingService)
	self.InfluxDb = InfluxDbReporter.new(reportingService)

	setmetatable(self, Analytics)

	return self
end

function Analytics.mock()
	-- create a reporting service that does not fire any requests out to the world
	local fakeReportingService = {}
	function fakeReportingService.ReportCounter() end
	function fakeReportingService.ReportInfluxSeries() end
	function fakeReportingService.ReportStats() end
	function fakeReportingService.SetRBXEvent() end
	function fakeReportingService.SetRBXEventStream() end
	function fakeReportingService.TrackEvent() end
	function fakeReportingService.UpdateHeartbeatObject() end

	return Analytics.new(fakeReportingService)
end

return Analytics
