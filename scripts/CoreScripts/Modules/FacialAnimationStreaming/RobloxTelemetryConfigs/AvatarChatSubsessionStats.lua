local CorePackages = game:GetService("CorePackages")
local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol)

type TelemetryEventConfig = LoggingProtocol.TelemetryEventConfig
game:DefineFastInt("AvatarChatSubsessionStatsEventThrottleHundrethsPercent", 0)

return {
	eventName = "avatarChatSubsessionStats",
	backends = {
		LoggingProtocol.TelemetryBackends.EventIngest
	},
	throttlingPercentage = game:GetFastInt("AvatarChatSubsessionStatsEventThrottleHundrethsPercent"),
	lastUpdated = { 22, 10, 17 },
	description = [[Report FACS sending/receiving time per Avatar Chat session to EventIngest.]],
	links = "https://roblox.atlassian.net/wiki/spaces/DA/pages/1857851197/Logging+Specs+Subsession+Analytics",
} :: TelemetryEventConfig
