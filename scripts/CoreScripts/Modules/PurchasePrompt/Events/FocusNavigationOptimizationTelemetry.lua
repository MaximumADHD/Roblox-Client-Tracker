--!nonstrict
local CorePackages = game:GetService("CorePackages")
local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol)
type TelemetryEventConfig = LoggingProtocol.TelemetryEventConfig

-- Centralized telemetry configurations for PurchasePromptApp focus navigation optimization
return {
	RerenderTimingStat = {
		eventName = "PurchasePromptAppRerenderTiming",
		backends = { "RobloxTelemetryStat" },
		lastUpdated = { 2025, 8, 4 }, -- August 4, 2025
		throttlingPercentage = 1000, -- 10% sampling
		description = [[Stat for tracking re-render timing in PurchasePromptApp to detect performance issues]],
		links = "https://roblox.atlassian.net/browse/APPEXP-2951"
	} :: TelemetryEventConfig,
} 