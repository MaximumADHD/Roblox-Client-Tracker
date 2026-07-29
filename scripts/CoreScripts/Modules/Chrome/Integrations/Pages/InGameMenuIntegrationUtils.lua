local Chrome = script:FindFirstAncestor("Chrome")

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GameInviteAnalyticsManager = require(CorePackages.Workspace.Packages.GameInvite).GameInviteAnalyticsManager
local GameInviteModalManager = require(CorePackages.Workspace.Packages.GameInvite).GameInviteModalManager
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

-- TODO APPEXP-4782: when supporting console, update if statement to close console modal if sidesheet can be open when modal is open
function InGameMenuIntegrationUtils.toggleInviteFriendsPage()
	if GameInviteModalManager:isGameModalOpen() then
		GameInviteModalManager:closeModal()
		return
	end

	local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
	GameInviteAnalyticsManager:withButtonName(GameInviteAnalyticsManager.ButtonName.SettingsHub)
	SettingsHub:InviteToGame()
end

return InGameMenuIntegrationUtils
