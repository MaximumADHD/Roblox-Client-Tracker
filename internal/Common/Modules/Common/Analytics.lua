--[[
	A centralized hub for basic metrics reporting.
	This class is designed to provide a baseline exposure to the reporters.

	Context specific Analytics.lua objects should be created in sub-projects,
	to report specific actions like chat interactions, or game page interactions.

	Analytics.lua and the reporters here in Common should serve to cover the
	most common interactions.
]]

local AnalyticsService = game:GetService("AnalyticsService")
local CoreGui = game:GetService("CoreGui")
local Reporters = CoreGui.RobloxGui.Modules.Common.AnalyticsReporters

local DiagReporter = require(Reporters.Diag)
local EventStreamReporter = require(Reporters.EventStream)
local GoogleAnalyticsReporter = require(Reporters.GoogleAnalytics)
local InfluxDbReporter = require(Reporters.Influx)


local Analytics = {}
Analytics.__index = Analytics

function Analytics.new()
	-- All public reporting functions are exposed by the objects defined in the properties

	local self = {}
	self.Diag = DiagReporter.new(AnalyticsService)
	self.EventStream = EventStreamReporter.new(AnalyticsService)
	self.GoogleAnalytics = GoogleAnalyticsReporter.new(AnalyticsService)
	self.InfluxDb = InfluxDbReporter.new(AnalyticsService)

	setmetatable(self, Analytics)

	return self
end


return Analytics
