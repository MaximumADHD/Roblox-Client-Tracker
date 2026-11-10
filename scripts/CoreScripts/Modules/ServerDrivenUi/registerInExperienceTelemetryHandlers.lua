local CorePackages = game:GetService("CorePackages")

local function registerInExperienceTelemetryHandlers()
	local ServerDrivenUi = require(CorePackages.Workspace.Packages.ServerDrivenUi)
	ServerDrivenUi.registerDiscoveryImpressions()
	ServerDrivenUi.registerDiscoveryActionTelemetryHandlers()
end

return registerInExperienceTelemetryHandlers
