--[[
	Specialized reporter for sending data to InfluxDb.
	Useful for very detailed information about specific errors.

	NOTE - due to how Influx sends data, it is disallowed on XBox.
	~Kyler Mulherin (9/12/2017)
]]

local BaseReporter = require(script.Parent.BaseReporter)

local Influx = {}
setmetatable(Influx, { __index = BaseReporter })
Influx.__index = Influx

-- reportingService - (object) any object that defines the same functions for Influx as AnalyticsService
function Influx.new(reportingService)
	local self = BaseReporter.new("Influx", reportingService)
	setmetatable(self, Influx)

	return self
end

-- seriesName : (string) the name of the series as it will appear in InfluxDb
-- additionalArgs : (map<string, string>) extra key/values to appear in each series
-- throttlingPercent : (int) the chance to actually report this series
function Influx:ReportSeries(seriesName, additionalArgs, throttlingPercent)
	local funcName = "ReportSeries"
	additionalArgs = additionalArgs or {}

	-- validate the input and calling convention
	self:CheckBadCallingConvention(funcName)

	self:CheckForTypeError("seriesName", "string", seriesName)
	self:CheckForTypeError("additionalArgs", "table", additionalArgs)
	self:CheckForTypeError("throttlingPercent", "number", throttlingPercent)

	if throttlingPercent < 0 or throttlingPercent > 10000 then
		error("throttlingPercent must be between 0 - 10,000", 2)
	end

	self:CheckDisabledModule(funcName, seriesName, additionalArgs, throttlingPercent)

	-- report the data to the server
	self._reporter:ReportInfluxSeries(seriesName, additionalArgs, throttlingPercent)
end

return Influx
