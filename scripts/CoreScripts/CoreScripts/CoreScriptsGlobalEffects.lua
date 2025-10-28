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

local EventIngestService = game:GetService("EventIngestService")
local EventIngest = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest
local eventIngest = EventIngest.new(EventIngestService)
local EngineFeatureRbxAnalyticsServiceExposePlaySessionId = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local UserInputService = game:GetService("UserInputService")
local getInputGroup = require(CorePackages.Workspace.Packages.InputType).getInputGroup
local useExternalEvent = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.useExternalEvent
local FFlagRemoveLoggingHookForCorescriptGlobalEffects = game:DefineFastFlag("RemoveLoggingHookForCorescriptGlobalEffects2", false)

local lastInputMethod : string? = nil

local function sendInputTypeLogging(inputMethod: string?)
    if lastInputMethod == inputMethod then
		-- Ignore the duplicated logging.
		return
	end

	lastInputMethod = inputMethod
	local gamepadConnected = UserInputService:GetGamepadConnected(Enum.UserInputType.Gamepad1)
	local sessionId = if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then AnalyticsService:GetPlaySessionId() else nil
	if inputMethod ~= nil then 
		eventIngest:sendEventDeferred("inputTypeChanged", "inputTypeChanged", {
			inputType = inputMethod,
			gamepadConnected = gamepadConnected,
			playSessionId = sessionId,
		})
	end
end

-- Mount this at the root to sit persistently while in-experience.
local function CoreScriptsGlobalEffects(props)
	if FFlagRemoveLoggingHookForCorescriptGlobalEffects then
		local lastInputTypeChangedCallback = React.useCallback(function(lastInputType)
        	sendInputTypeLogging(getInputGroup(lastInputType))
		end, {})

		useExternalEvent(UserInputService.LastInputTypeChanged, lastInputTypeChangedCallback)
   else
		if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
			useLogInputTypeChanged(eventIngest, AnalyticsService:GetPlaySessionId())
		else 
			useLogInputTypeChanged(eventIngest)
		end
    end

	local currentScreenOrientation = usePlayerCurrentScreenOrientation()
	useLogOrientationChanged(eventIngest, currentScreenOrientation)

	local styleOverride = {
		deviceType = DeviceTypeEnum.Console,
	}

	-- This is the singular root provider. It includes a global style provider, which should
	-- be accessible to all CoreScripts components and places a Foundation style link at the root
	return React.createElement(CoreScriptsRootProvider, {
		styleOverride = styleOverride,
	}, {
		CoreScriptsGamepadDisconnectListener = React.createElement(CoreScriptsGamepadDisconnectListener)
	})
end

Roact.mount(React.createElement(CoreScriptsGlobalEffects), CoreGui, "CoreScriptsGlobalEffects")
