--[[
	Specialized analytics reporter for ephemeral counters.
	Useful for tracking at-a-glance health of a feature.
]]

local BaseReporter = require(script.Parent.BaseReporter)
local UserInputService = game:GetService("UserInputService")

local Diag = {}
setmetatable(Diag, { __index = BaseReporter })
Diag.__index = Diag

-- reportingService - (object) any object that defines the same functions for Diag as AnalyticsService
function Diag.new(reportingService)
	local self = BaseReporter.new("Diag", reportingService)
	setmetatable(self, Diag)

	return self
end


-- counterName : (string) the name of the ephemeral counter to increment
-- amount : (int) the value to increment the counter by
function Diag:ReportCounter(counterName, amount)
	local funcName = "ReportCounter"

	-- validate the input and calling convention
	self:CheckBadCallingConvention(funcName)

	self:CheckForTypeError("counterName", "string", counterName)
	self:CheckForTypeError("amount", "number", amount)

	self:CheckDisabledModule(funcName, counterName, amount)

	-- report to the server
	-- use special naming convention for Xbox counters
	-- NOTE - the call to GetPlatform is wrapped in a pcall() because the Testing Service
	-- executes the scripts in the wrong authorization level
	local platformID = Enum.Platform.None
	pcall(function()
		platformID = UserInputService:GetPlatform()
	end)
	if platformID == Enum.Platform.XBoxOne then
		counterName = "Xbox-" .. tostring(counterName)
	end

	-- NOTE - the AnalyticsService should automatically handle batch reporting
	self._reporter:ReportCounter(counterName, amount)
end


-- category : (string) the name of the statistics buffer which to append the data
-- value : (number) any type of numeric value
function Diag:ReportStats(category, value)
	local funcName = "ReportStats"

	-- validate the input and calling convention
	self:CheckBadCallingConvention(funcName)

	self:CheckForTypeError("category", "string", category)
	self:CheckForTypeError("value", "number", value)

	self:CheckDisabledModule(funcName, category, value)

	-- report to the server
	self._reporter:ReportStats(category, value)
end

return Diag
