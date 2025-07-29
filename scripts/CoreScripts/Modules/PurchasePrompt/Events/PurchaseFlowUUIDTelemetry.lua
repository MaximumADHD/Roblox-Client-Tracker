--!nonstrict
local CorePackages = game:GetService("CorePackages")
local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol)
type TelemetryEventConfig = LoggingProtocol.TelemetryEventConfig

-- Centralized telemetry configurations for PurchaseFlowUUID migration tracking
return {
	ProductPurchaseContainerMigrationCounter = {
		eventName = "ProductPurchaseContainerPurchaseFlowUUID",
		backends = { LoggingProtocol.TelemetryBackends.Counter },
		lastUpdated = { 2025, 1, 21 }, -- January 21, 2025
		throttlingPercentage = 100,
		description = [[Counter for PurchaseFlowUUID generation in ProductPurchaseContainer init method]],
	} :: TelemetryEventConfig,
	
	InitiatePurchaseCounter = {
		eventName = "InitiatePurchasePurchaseFlowUUID",
		backends = { LoggingProtocol.TelemetryBackends.Counter },
		lastUpdated = { 2025, 1, 21 }, -- January 21, 2025
		throttlingPercentage = 100,
		description = [[Counter for PurchaseFlowUUID generation in initiatePurchase thunk]],
	} :: TelemetryEventConfig,
} 