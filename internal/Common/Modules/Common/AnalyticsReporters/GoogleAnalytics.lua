--[[
	Specialized reporter for sending data to GA.
	Useful for creating a breadcrumb trail of user interactions.
]]

local BaseReporter = require(script.Parent.BaseReporter)

local GoogleAnalytics = {}
setmetatable(GoogleAnalytics, { __index = BaseReporter })
GoogleAnalytics.__index = GoogleAnalytics

-- reportingService - (object) any object that defines the same functions for GA as AnalyticsService
function GoogleAnalytics.new(reportingService)
	local self = BaseReporter.new("GoogleAnalytics", reportingService)
	setmetatable(self, GoogleAnalytics)

	return self
end


-- category : (string)
-- action : (string)
-- label : (string)
function GoogleAnalytics:TrackEvent(category, action, label)
	local funcName = "TrackEvent"

	-- validate the input and calling convention
	self:CheckBadCallingConvention(funcName)

	self:CheckForTypeError("category", "string", category)
	self:CheckForTypeError("action", "string", action)
	self:CheckForTypeError("label", "string", label)

	self:CheckDisabledModule(funcName, category, action, label)

	-- report the data to the server
	self._reporter:TrackEvent(category, action, label)
end


return GoogleAnalytics
