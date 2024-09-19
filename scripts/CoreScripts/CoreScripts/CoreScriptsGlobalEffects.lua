local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local usePlayerCurrentScreenOrientation = require(RobloxGui.Modules.Common.Hooks.usePlayerCurrentScreenOrientation)

local CoreScriptsGamepadDisconnectListener = require(RobloxGui.Modules.GamepadDisconnect.CoreScriptsGamepadDisconnectListener)
local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Packages.Roact)

local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local DeviceTypeEnum = RobloxAppEnums.DeviceType
local useLogInputTypeChanged = require(CorePackages.Workspace.Packages.UiShellEvents).useLogInputTypeChanged
local useLogOrientationChanged = require(CorePackages.Workspace.Packages.UiShellEvents).useLogOrientationChanged

local GetFFlagLogInputTypeChanged = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLogInputTypeChanged
local GetFFlagLogOrientationChanged = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLogOrientationChanged
local EventIngestService = game:GetService("EventIngestService")
local EventIngest = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest
local eventIngest = EventIngest.new(EventIngestService)
local EngineFeatureRbxAnalyticsServiceExposePlaySessionId = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")

-- Mount this at the root to sit persistently while in-experience.
local function CoreScriptsGlobalEffects(props)
	if GetFFlagLogInputTypeChanged() then
		if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
			useLogInputTypeChanged(eventIngest, AnalyticsService:GetPlaySessionId())
		else 
			useLogInputTypeChanged(eventIngest)
		end
	end

	if GetFFlagLogOrientationChanged() then
		local currentScreenOrientation = usePlayerCurrentScreenOrientation()
		useLogOrientationChanged(eventIngest, currentScreenOrientation)
	end

	local styleOverride = {
		deviceType = DeviceTypeEnum.Console,
	}

	return React.createElement(CoreScriptsRootProvider, {
		styleOverride = styleOverride,
	}, {
		CoreScriptsGamepadDisconnectListener = React.createElement(CoreScriptsGamepadDisconnectListener)
	})
end

Roact.mount(React.createElement(CoreScriptsGlobalEffects), CoreGui, "CoreScriptsGlobalEffects")
