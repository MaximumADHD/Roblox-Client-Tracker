--[[
	Specialized reporter for sending data to GA.
	Useful for creating a breadcrumb trail of user interactions.

	Events in GA are aggregated and organized in order by category, action, label.
]]

local GoogleAnalytics = {}
GoogleAnalytics.__index = GoogleAnalytics

-- reportingService : (table or userdata) any object that defines the same functions for GA as AnalyticsService
function GoogleAnalytics.new(reportingService)
	local rsType = type(reportingService)
	assert(rsType == "table" or rsType == "userdata", "Unexpected value for reportingService")

	local self = {
		_reporter = reportingService,
		_isEnabled = true,
	}
	setmetatable(self, GoogleAnalytics)

	return self
end

-- isEnabled : (boolean)
function GoogleAnalytics:setEnabled(isEnabled)
	assert(type(isEnabled) == "boolean", "Expected isEnabled to be a boolean")
	self._isEnabled = isEnabled
end

-- category : (string) the most generic category by which to organize data, ex) LuaApp, Errors, GameSettings, etc.
-- action : (string) a specific event to record, ex) ButtonPressed, GameExit
-- label : (string, optional) a detail to differentiate one action over another, ex) LoginButton, Exit Code 0
-- value : (integer, optional) the number of times this event has occurred
function GoogleAnalytics:trackEvent(category, action, label, value)
	assert(type(category) == "string", "Expected category to be a string")
	assert(type(action) == "string", "Expected action to be a string")
	if label then
		assert(type(label) == "string", "Expected label to be a string")
	end
	if value then
		assert(type(value) == "number", "Expected value to be a number")
		assert(value >= 0, "Expected value must not be a negative value")
	end
	assert(self._isEnabled, "This reporting service is disabled")

	self._reporter:TrackEvent(category, action, label, value)
end


return GoogleAnalytics
