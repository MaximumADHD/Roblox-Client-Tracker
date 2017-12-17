--[[
    Provides a base class for other analytics reports.

    These are some of the guiding philosophies for the analytics reporters:
    - each reporting implementation should hard fail with incorrect input
    - reports should be "fire and forget"
    - if there is an unexpected error from the reporting service, capture and log it in c++
]]

local BaseReporter = {}
BaseReporter.__index = BaseReporter

-- reporterName - (string) a name for messaging
-- reportingService - (object) any object that defines the same functions as AnalyticsService
function BaseReporter.new(reporterName, reportingService)
	-- sanitize inputs
	local reporterType = type(reportingService)
	if reporterType ~= "userdata" and reporterType ~= "table" then
		local message = string.format("reportingService must be a service, not a %s", reporterType)
		error(message, 2)
	end


	local self = {
		_name = reporterName,
		_reporter = reportingService,
		_isEnabled = true
	}
	setmetatable(self, BaseReporter)

	return self
end


-- reportingService - (object) any object that defines the same functions as AnalyticsService
function BaseReporter:SetReporter(reportingService)
	self:CheckBadCallingConvention("SetReporter")

	local reporterType = type(reportingService)
	if reporterType ~= "userdata" and reporterType ~= "table"  then
		local message = string.format("reportingService must be service, not a %s", reporterType)
		error(message, 2)
	end

	self._reporter = reportingService
end


-- isEnabled - (boolean) toggles whether the service may send reports
function BaseReporter:SetEnabled(isEnabled)
	self:CheckBadCallingConvention("SetEnabled")
	self:CheckForTypeError("isEnabled", "boolean", isEnabled)

	self._isEnabled = isEnabled
end


-- funcName - (string) the name of the function being called incorrectly
function BaseReporter:CheckBadCallingConvention(funcName)
	-- error on bad calling convention
	if self._reporter == nil then
		local message = string.format("%s:%s cannot be called on the module object", self._name, funcName)
		error(message, 3)
	end
end


-- paramName - (string) the name of the incorrect parameter
-- expectedType - (string) the variable type expected as an argument
-- actualValue - (anything) the value passed into the function
function BaseReporter:CheckForTypeError(paramName, expectedType, actualValue)
	if type(actualValue) ~= expectedType then
		-- alert the user that they have messed up by providing an incorrect type to the function
		local message = string.format("%s must be a %s, not a %s", paramName, expectedType, type(actualValue))
		error(message, 3)
	end
end


-- funcName - (string) the name of function attempting to be called
-- ... - (anything) arguments passed to the disabled module function
function BaseReporter:CheckDisabledModule(funcName, ...)
	if self._isEnabled == false then
		local args = table.concat({...}, ", ")
		local message = string.format("%s reporting is disabled, %s(%s) has been aborted", self._name, funcName, args)
		error(message, 3)
	end
end


return BaseReporter
