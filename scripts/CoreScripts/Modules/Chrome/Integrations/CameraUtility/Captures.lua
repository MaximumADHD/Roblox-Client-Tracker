local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ChromeService = require(script.Parent.Parent.Parent.Service)
local CommonIcon = require(script.Parent.Parent.CommonIcon)
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = SignalLib.Signal

local ChromeUtils = require(script.Parent.Parent.Parent.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal

local GetFFlagEnableScreenshotUtility =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableScreenshotUtility

-- This is an indirect way of setting up the mapped signal for the icon state
-- We need to ensure we don't require SettingsHub before TopBar has finished
-- This is due to ordering of SetGlobalGuiInset defined in TopBar
local capturesPageOpen = false
local capturesPageOpenSignal = Signal.new()
local mappedCapturesPageOpenSignal = MappedSignal.new(capturesPageOpenSignal, function()
	return capturesPageOpen
end)

-- defer SettingsHub require
task.defer(function()
	local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
	SettingsHub.CurrentPageSignal:connect(function(pageName)
		capturesPageOpen = pageName == SettingsHub.Instance.ShotsPage.Page.Name
		capturesPageOpenSignal:fire()
	end)
end)

return GetFFlagEnableScreenshotUtility()
		and ChromeService:register({
			initialAvailability = ChromeService.AvailabilitySignal.Available,
			id = "captures",
			label = "Feature.SettingsHub.Label.MyCaptures",
			activated = function(self)
				-- TODO add unit testing: https://roblox.atlassian.net/browse/APPEXP-1519
				local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
				if SettingsHub:GetVisibility() then
					if capturesPageOpen then
						SettingsHub:SetVisibility(false)
					else
						SettingsHub:SwitchToPage(SettingsHub.Instance.ShotsPage, true)
					end
				else
					SettingsHub:SetVisibility(true, false, SettingsHub.Instance.ShotsPage)
				end
			end,
			components = {
				Icon = function(props)
					return CommonIcon("icons/common/image-off", "icons/common/image-on", mappedCapturesPageOpenSignal)
				end,
			},
		})
	or nil
