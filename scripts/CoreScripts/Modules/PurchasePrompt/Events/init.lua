--!nonstrict
local Root = script
local PurchaseFlowUUIDTelemetry = require(Root.PurchaseFlowUUIDTelemetry)
local FocusNavigationOptimizationTelemetry = require(Root.FocusNavigationOptimizationTelemetry)

return {
	PurchaseFlowUUIDTelemetry = PurchaseFlowUUIDTelemetry,
	FocusNavigationOptimizationTelemetry = FocusNavigationOptimizationTelemetry,
} 