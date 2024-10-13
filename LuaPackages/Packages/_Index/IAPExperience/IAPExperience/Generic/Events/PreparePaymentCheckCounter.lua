local CorePackages = game:GetService("CorePackages")
local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol)
type TelemetryEventConfig = LoggingProtocol.TelemetryEventConfig

return {
    eventName = "PreparePaymentCheckCounter",
    backends = { LoggingProtocol.TelemetryBackends.Counter },
    lastUpdated = { 2024, 9, 27 },
    throttlingPercentage = 100, -- 1%,
    description = [[Counter on all preparePayment check]],
    links = "",
} :: TelemetryEventConfig
