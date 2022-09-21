--[[
	Specialized analytics reporter for ephemeral counters.
	Useful for tracking at-a-glance health of a feature.
]]

local UserInputService = game:GetService("UserInputService")

type DiagPrivate = {
	_reporter: RbxAnalyticsService,
	_isEnabled: boolean,
}
export type Diag = DiagPrivate & {
	setEnabled: (self: Diag, isEnabled: boolean) -> (),
	reportCounter: (self: Diag, counterName: string, amount: number) -> (),
	reportStats: (self: Diag, category: string, value: number) -> (),
}

type DiagStatics = {
	new: (reportingService: RbxAnalyticsService) -> Diag,
}

local Diag: Diag & DiagStatics = {} :: any;
(Diag :: any).__index = Diag

-- reportingService - (object) any object that defines the same functions for Diag as AnalyticsService
function Diag.new(reportingService: RbxAnalyticsService): Diag
	local rsType = type(reportingService)
	assert(rsType == "table" or rsType == "userdata", "Unexpected value for reportingService")

	local self = {
		_reporter = reportingService,
		_isEnabled = true,
	}
	setmetatable(self, Diag)

	return self :: any
end

function Diag:setEnabled(isEnabled: boolean)
	assert(type(isEnabled) == "boolean", "Expected isEnabled to be a boolean")
	self._isEnabled = isEnabled
end

-- counterName : the name of the ephemeral counter to increment
-- amount : the value to increment the counter by
function Diag:reportCounter(counterName: string, amount: number)
	assert(type(counterName) == "string", "Expected counterName to be a string")
	assert(type(amount) == "number", "Expected amount to be a number")
	assert(self._isEnabled, "This reporting service is disabled")

	-- use special naming convention for Xbox counters
	-- the call to GetPlatform is wrapped in a pcall() because the Testing Service
	-- executes the scripts in the wrong authorization level
	local platformID = Enum.Platform.None
	pcall(function()
		platformID = UserInputService:GetPlatform()
	end)
	if platformID == Enum.Platform.XBoxOne then
		counterName = "Xbox-" .. tostring(counterName)
	end

	-- the AnalyticsService should automatically handle batch reporting
	self._reporter:ReportCounter(counterName, amount)
end

-- category : (string) the name of the statistics buffer which to append the data
-- value : (number) any type of numeric value
function Diag:reportStats(category: string, value: number)
	assert(type(category) == "string", "Expected category to be a string")
	assert(type(value) == "number", "Expected value to be a number")
	assert(self._isEnabled, "This reporting service is disabled")

	self._reporter:ReportStats(category, value)
end

return Diag
