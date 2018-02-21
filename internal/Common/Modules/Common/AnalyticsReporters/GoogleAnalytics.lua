--[[
	Specialized reporter for sending data to GA.
	Useful for creating a breadcrumb trail of user interactions.

	Events in GA are aggregated and organized in order by category, action, label.
]]

local BaseReporter = require(script.Parent.BaseReporter)

local function limitStringLength(varName, maxLength, input)
	if #input > maxLength then
		for first, last in utf8.graphemes(input) do
			if last > maxLength then
				return string.sub(input, 1, first - 1)
			end
		end
	end

	return input
end


local GoogleAnalytics = {}
setmetatable(GoogleAnalytics, { __index = BaseReporter })
GoogleAnalytics.__index = GoogleAnalytics

-- reportingService - (object) any object that defines the same functions for GA as AnalyticsService
function GoogleAnalytics.new(reportingService)
	local self = BaseReporter.new("GoogleAnalytics", reportingService)
	setmetatable(self, GoogleAnalytics)

	return self
end


-- category : (string) the most generic category by which to organize data, ex) LuaApp, Errors, GameSettings, etc.
-- action : (string) a specific event to record, ex) ButtonPressed, GameExit
-- label : (string, optional) a detail to differentiate one action over another, ex) LoginButton, Exit Code 0
-- value : (integer, optional) the number of times this event has occurred
function GoogleAnalytics:TrackEvent(category, action, label, value)
	local funcName = "TrackEvent"

	-- validate and sanitize the inputs and calling convention
	-- limits outlined at : https://developers.google.com/analytics/devguides/collection/analyticsjs/field-reference
	self:CheckBadCallingConvention(funcName)

	self:CheckForTypeError("category", "string", category)
	--category = limitStringLength("category", 150, category)

	self:CheckForTypeError("action", "string", action)
	--action = limitStringLength("action", 500, action)

	if label then
		self:CheckForTypeError("label", "string", label)
		--label = limitStringLength("label", 500, label)
	end

	if value then
		self:CheckForTypeError("value", "number", value)
		if value < 0 then
			error("value must not be a negative value.", 2)
		end
	end

	self:CheckDisabledModule(funcName, category, action, label, value)

	-- report the data to the server
	self._reporter:TrackEvent(category, action, label, value)
end


return GoogleAnalytics
