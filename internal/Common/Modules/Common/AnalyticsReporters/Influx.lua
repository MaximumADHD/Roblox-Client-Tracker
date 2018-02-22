--[[
	Specialized reporter for sending data to InfluxDb.
	Useful for very detailed information about specific errors.

	Due to how Influx sends data, it is disallowed on XBox.
	~Kyler Mulherin (9/12/2017)
]]

local Influx = {}
Influx.__index = Influx

-- reportingService - (object) any object that defines the same functions for Influx as AnalyticsService
function Influx.new(reportingService)
	local rsType = type(reportingService)
	assert(rsType == "table" or rsType == "userdata", "Unexpected value for reportingService")

	local self = {
		_reporter = reportingService,
		_isEnabled = true,
	}
	setmetatable(self, Influx)

	return self
end

-- isEnabled : (boolean)
function Influx:setEnabled(isEnabled)
	assert(type(isEnabled) == "boolean", "Expected isEnabled to be a boolean")
	self._isEnabled = isEnabled
end

-- seriesName : (string) the name of the series as it will appear in InfluxDb
-- additionalArgs : (map<string, string>) extra key/values to appear in each series
-- throttlingPercent : (int) the chance to actually report this series
function Influx:reportSeries(seriesName, additionalArgs, throttlingPercent)
	additionalArgs = additionalArgs or {}

	assert(type(seriesName) == "string", "Expected seriesName to be a string")
	assert(type(additionalArgs) == "table", "Expected additionalArgs to be a table")
	assert(type(throttlingPercent) == "number", "Expected throttlingPercent to be a number")
	assert(throttlingPercent >= 0 and throttlingPercent <= 10000, "throttlingPercent must be between 0 - 10,000")
	assert(self._isEnabled, "This reporting service is disabled")

	self._reporter:ReportInfluxSeries(seriesName, additionalArgs, throttlingPercent)
end

return Influx
