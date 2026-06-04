local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local AnalyticsService = game:GetService("RbxAnalyticsService")

local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local VRHub = require(CorePackages.Workspace.Packages.VrCommon).VRHub
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = SignalLib.Signal
local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local MappedSignal = ChromeUtils.MappedSignal

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagChromeActivatedMappedSignal = SharedFlags.FFlagChromeActivatedMappedSignal

local ICON_SAFETY_OFF = "rbxasset://textures/ui/MenuBar/icon_safety_off.png"
local ICON_SAFETY_ON = "rbxasset://textures/ui/MenuBar/icon_safety_on.png"

local initialAvailability = if isSpatial()
	then ChromeService.AvailabilitySignal.Available
	else ChromeService.AvailabilitySignal.Unavailable

local signal = Signal.new()
local mappedSignal = MappedSignal.new(signal, function()
	return VRHub.SafetyBubble and VRHub.SafetyBubble.enabled
end)

if VRHub.SafetyBubble then
	VRHub.SafetyBubble.Toggled.Event:Connect(function()
		signal:fire()
	end)
end

local VRSafeBubbleIntegration = ChromeService:register({
	initialAvailability = initialAvailability,
	id = "vr_safety_bubble",
	label = "CoreScripts.VRFTUX.Heading.SafetyBubble.Title",
	isActivated = if FFlagChromeActivatedMappedSignal
		then mappedSignal
		else function()
			return mappedSignal:get()
		end,
	activated = function()
		VRHub:ToggleSafetyBubble()
		AnalyticsService:ReportCounter("VR-BottomBar-Safety")
	end,
	components = {
		Icon = function()
			return CommonIcon(ICON_SAFETY_OFF, ICON_SAFETY_ON, mappedSignal)
		end,
	},
})

return VRSafeBubbleIntegration
