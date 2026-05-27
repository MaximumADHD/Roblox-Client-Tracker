local Chrome = script:FindFirstAncestor("Chrome")

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = SignalLib.Signal

local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local MappedSignal = ChromeUtils.MappedSignal

local InGameMenuIntegrationUtils = {}

function InGameMenuIntegrationUtils.createPageOpenSignal(pageKey: string): ChromeUtils.MappedSignal<boolean>
	local isOpen = false
	local openSignal = Signal.new()
	local mappedSignal = MappedSignal.new(openSignal, function()
		return isOpen
	end)

	task.defer(function()
		local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
		SettingsHub.CurrentPageSignal:connect(function(pageName)
			local page = SettingsHub.Instance[pageKey]
			isOpen = page ~= nil and pageName == page.Page.Name
			openSignal:fire()
		end)
	end)

	return mappedSignal
end

function InGameMenuIntegrationUtils.toggleIGMPage(pageKey: string, isPageOpen: boolean)
	local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
	local page = SettingsHub.Instance[pageKey]
	if SettingsHub:GetVisibility() then
		if isPageOpen then
			SettingsHub:SetVisibility(false)
		else
			SettingsHub:SwitchToPage(page, true)
		end
	else
		SettingsHub:SetVisibility(true, false, page)
	end
end

return InGameMenuIntegrationUtils
