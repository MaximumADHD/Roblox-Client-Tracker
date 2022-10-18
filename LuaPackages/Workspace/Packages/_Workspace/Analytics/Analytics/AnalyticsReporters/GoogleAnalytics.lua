--[[
	Specialized reporter for sending data to GA.
	Useful for creating a breadcrumb trail of user interactions.

	Events in GA are aggregated and organized in order by category, action, label.
]]

type GoogleAnalyticsPrivate = {
	_reporter: RbxAnalyticsService,
	_isEnabled: boolean,
}
export type GoogleAnalytics = GoogleAnalyticsPrivate & {
	setEnabled: (self: GoogleAnalytics, isEnabled: boolean) -> (),
	trackEvent: (self: GoogleAnalytics, category: string, action: string, label: string?, value: number?) -> (),
}
type GoogleAnalyticsStatics = {
	new: (RbxAnalyticsService) -> GoogleAnalytics,
}

local GoogleAnalytics: GoogleAnalytics & GoogleAnalyticsStatics = {} :: any;
(GoogleAnalytics :: any).__index = GoogleAnalytics

-- reportingService : (table or userdata) any object that defines the same functions for GA as AnalyticsService
function GoogleAnalytics.new(reportingService: RbxAnalyticsService): GoogleAnalytics
	local rsType = type(reportingService)
	assert(rsType == "table" or rsType == "userdata", "Unexpected value for reportingService")

	local self: any = {
		_reporter = reportingService,
		_isEnabled = true,
	}
	setmetatable(self, GoogleAnalytics)

	return self
end

function GoogleAnalytics:setEnabled(isEnabled: boolean)
	assert(type(isEnabled) == "boolean", "Expected isEnabled to be a boolean")
	self._isEnabled = isEnabled
end

-- category: the most generic category by which to organize data, ex) LuaApp, Errors, GameSettings, etc.
-- action: a specific event to record, ex) ButtonPressed, GameExit
-- label: a detail to differentiate one action over another, ex) LoginButton, Exit Code 0
-- value: the number of times this event has occurred
function GoogleAnalytics:trackEvent(category: string, action: string, label: string?, value: number?)
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

	-- cast `label` to a string because the engine API requires the type to be
	-- a string
	self._reporter:TrackEvent(category, action, label :: string, value)
end

return GoogleAnalytics
