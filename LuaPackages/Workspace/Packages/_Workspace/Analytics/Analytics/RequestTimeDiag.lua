local ReportToDiagByCountryCode = require(script.Parent.ReportToDiagByCountryCode)

local RequestTimeDiag = {}
RequestTimeDiag.__index = RequestTimeDiag

function RequestTimeDiag:new(metricName)
	assert(metricName, "metricName is required")
	return setmetatable({
		metricName = metricName,
		startTime = tick(),
	}, self)
end

function RequestTimeDiag:report()
	local endTime = tick()
	local elapsedTime = endTime - self.startTime
	ReportToDiagByCountryCode(self.metricName, "RoundTripTime", elapsedTime, 100)
end

return RequestTimeDiag
