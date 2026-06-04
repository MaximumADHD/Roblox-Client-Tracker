local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CoreGui = game:GetService("CoreGui")

local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VRHub = require(CorePackages.Workspace.Packages.VrCommon).VRHub
local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = SignalLib.Signal
local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local MappedSignal = ChromeUtils.MappedSignal

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagChromeActivatedMappedSignal = SharedFlags.FFlagChromeActivatedMappedSignal

local VrSpatialUi = require(CorePackages.Workspace.Packages.VrSpatialUi)
local UIManager = VrSpatialUi.UIManager

local ICON_ON = "rbxasset://textures/ui/MenuBar/icon_maximize.png"
local ICON_OFF = "rbxasset://textures/ui/MenuBar/icon_minimize.png"

local initialAvailability = if isSpatial()
	then ChromeService.AvailabilitySignal.Available
	else ChromeService.AvailabilitySignal.Unavailable

local signal = Signal.new()
local mappedSignal = MappedSignal.new(signal, function()
	return VRHub.ShowTopBar
end)

VRHub.ShowTopBarChanged.Event:Connect(function()
	signal:fire()
end)

local VRToggleButtonIntegration = ChromeService:register({
	initialAvailability = initialAvailability,
	id = "vr_toggle_button",
	label = "Feature.Catalog.Label.Filter.Hide",
	isActivated = if FFlagChromeActivatedMappedSignal
		then mappedSignal
		else function()
			return mappedSignal:get()
		end,
	activated = function()
		if VRHub.ShowTopBar then
			UIManager.getInstance():prepareGuiToggleAnimationState()
			VRHub:SetShowTopBar(false)
			if SettingsHub:GetVisibility() then
				SettingsHub:ToggleVisibility()
			end
		else
			VRHub:SetShowTopBar(true)
		end

		AnalyticsService:ReportCounter("VR-BottomBar-ToggleGui")
	end,
	components = {
		Icon = function()
			return CommonIcon(ICON_ON, ICON_OFF, mappedSignal)
		end,
	},
})

return VRToggleButtonIntegration
