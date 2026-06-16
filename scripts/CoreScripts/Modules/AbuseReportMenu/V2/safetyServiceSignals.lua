local SafetyService = game:GetService("SafetyService")

-- Thin wrapper around the SafetyService report-menu signals. Isolating the engine
-- call keeps the component free of a direct service dependency and lets tests
-- observe the signals (the runtime forbids spying on service instances).
local SafetyServiceSignals = {}

function SafetyServiceSignals.reportMenuTabOpen()
	SafetyService:ReportMenuTabOpen()
end

function SafetyServiceSignals.reportMenuTabClose()
	SafetyService:ReportMenuTabClose()
end

return SafetyServiceSignals
