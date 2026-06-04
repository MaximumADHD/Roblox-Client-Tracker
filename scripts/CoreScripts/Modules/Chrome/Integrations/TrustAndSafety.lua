local Chrome = script:FindFirstAncestor("Chrome")

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)

local ChromeService = require(Chrome.Service)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = SignalLib.Signal

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal

local FFlagAddIGMToSideSheet = SharedFlags.FFlagAddIGMToSideSheet
local FFlagStandardizeSafetyIcon = SharedFlags.FFlagStandardizeSafetyIcon
local FFlagChromeActivatedMappedSignal = SharedFlags.FFlagChromeActivatedMappedSignal

-- This is an indirect way of setting up the mapped signal for the icon state
-- We need to ensure we don't require SettingsHub before TopBar has finished
-- This is due to ordering of SetGlobalGuiInset defined in TopBar
local reportPageOpen = false
local reportPageOpenSignal = Signal.new()
local mappedReportPageOpenSignal = MappedSignal.new(reportPageOpenSignal, function()
	return reportPageOpen
end)

-- defer SettingsHub require
task.defer(function()
	local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
	SettingsHub.CurrentPageSignal:connect(function(pageName)
		reportPageOpen = pageName == SettingsHub.Instance.ReportAbusePage.Page.Name
		reportPageOpenSignal:fire()
	end)
end)

return ChromeService:register({
	initialAvailability = ChromeService.AvailabilitySignal.Available,
	id = "trust_and_safety",
	label = "CoreScripts.InGameMenu.QuickActions.Report",
	sideSheetPlacement = SideSheetPlacement.Page,
	activated = function(self)
		local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
		if SettingsHub:GetVisibility() then
			if reportPageOpen then
				SettingsHub:SetVisibility(false)
			else
				SettingsHub:SwitchToPage(SettingsHub.Instance.ReportAbusePage, true)
			end
		else
			SettingsHub:SetVisibility(true, false, SettingsHub.Instance.ReportAbusePage)
		end
	end,
	isActivated = if FFlagChromeActivatedMappedSignal
		then mappedReportPageOpenSignal
		else function()
			return mappedReportPageOpenSignal:get()
		end,
	components = {
		Icon = function(props)
			if FFlagStandardizeSafetyIcon and FFlagAddIGMToSideSheet then
				return CommonIcon("Flag", nil, mappedReportPageOpenSignal)
			else
				return CommonIcon("icons/menu/safety_off", "icons/menu/safety_on", mappedReportPageOpenSignal)
			end
		end,
	},
})
