local CorePackages = game:GetService("CorePackages")
local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol)

type TelemetryEventConfig = LoggingProtocol.TelemetryEventConfig

-- default no throttling, alert P13N team (#p13n-data-users), the consumer
-- of the event, when changing this value
game:DefineFastInt("InGameRobuxUpsellEventThrottleHundredthsPercent", 0)

return {
	eventName = "InGameRobuxUpsellEvent",
	backends = {
		LoggingProtocol.TelemetryBackends.Points,
		LoggingProtocol.TelemetryBackends.EventIngest,
	},
	throttlingPercentage = game:GetFastInt("InGameRobuxUpsellEventThrottleHundredthsPercent"),
	lastUpdated = { 2024, 8, 22 },
	description = [[Data points on all InGameRobuxUpsell events.]],
	links = "https://roblox.atlassian.net/wiki/spaces/PAY/pages/1823605171/Robux+Upsell+InGame",
} :: TelemetryEventConfig

