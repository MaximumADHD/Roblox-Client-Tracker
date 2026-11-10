local AnalyticsService = game:GetService("RbxAnalyticsService")
local SocialService = game:GetService("SocialService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Modules = RobloxGui.Modules
local SettingsHubDirectory = Modules.Settings
local ShareGameDirectory = SettingsHubDirectory.Pages.ShareGame

local GetFFlagFixSettingshubImportOrder = require(Modules.Flags.GetFFlagFixSettingshubImportOrder)

local SettingsHub
if not GetFFlagFixSettingshubImportOrder() then
	SettingsHub = require(SettingsHubDirectory.SettingsHub)
end

local GetFFlagEnableNewInviteMenuCustomization = require(Modules.Flags.GetFFlagEnableNewInviteMenuCustomization)
local GetFFlagEnableInvitePromptLoadingState = require(Modules.Flags.GetFFlagEnableInvitePromptLoadingState)

local Diag = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.Diag

local EventStream = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream

local InviteToGameAnalytics = require(CorePackages.Workspace.Packages.GameInvite).GameInviteAnalytics

local GameInvitePackage = require(CorePackages.Workspace.Packages.GameInvite)
local GameInviteModalManager = GameInvitePackage.GameInviteModalManager
local GetCustomizedInvitePromptTrigger = GameInvitePackage.GetCustomizedInvitePromptTrigger
local GameInviteConstants = GameInvitePackage.GameInviteConstants
local GameInviteAnalyticsManager = GameInvitePackage.GameInviteAnalyticsManager

local inviteToGameAnalytics = InviteToGameAnalytics.new()
	:withEventStream(EventStream.new(AnalyticsService) :: any)
	:withDiag(Diag.new(AnalyticsService))
	:withButtonName(InviteToGameAnalytics.ButtonName.ModalPrompt)

local InviteToGamePrompt = require(ShareGameDirectory.InviteToGamePrompt)
local modalPrompt = InviteToGamePrompt.new(CoreGui)
	:withSocialServiceAndLocalPlayer(SocialService, Players.LocalPlayer)
	:withAnalytics(inviteToGameAnalytics)

local ApiGetCanSendAndCanCustomizeInvites = require(ShareGameDirectory.Thunks.ApiGetCanSendAndCanCustomizeInvites)
local GetCustomizedInvitePromptParams = require(ShareGameDirectory.getCustomizedInvitePromptParams)

local function canSendGameInviteAsync(player)
	local success, result = pcall(function()
		return SocialService:CanSendGameInviteAsync(player)
	end)
	return success and result
end

SocialService.PromptInviteRequested:Connect(function(player, experienceInviteOptions: Instance?)
	if player ~= Players.LocalPlayer then
		return
	end

	if GetFFlagFixSettingshubImportOrder() then
		-- We need to ensure we don't require SettingsHub before TopBar has finished
		-- This is due to ordering of SetGlobalGuiInset defined in TopBar
		SettingsHub = require(SettingsHubDirectory.SettingsHub)
	end

	if SettingsHub:GetVisibility() then
		--if settingshub is open, dont open game invite modal triggered by
		--Developer invite and inform developers of modal closure.
		if Players and Players.LocalPlayer then
			SocialService:InvokeGameInvitePromptClosed(Players.LocalPlayer, {})
		end
		return
	end

	local options: ExperienceInviteOptions? = if experienceInviteOptions
		then experienceInviteOptions :: ExperienceInviteOptions
		else nil
	local trigger = GetCustomizedInvitePromptTrigger(options)
	--new flow only handles multi invite
	if trigger == GameInviteConstants.Triggers.DeveloperMultiple then
		GameInviteAnalyticsManager:withButtonName(GameInviteAnalyticsManager.ButtonName.ModalPrompt)
		GameInviteAnalyticsManager:inputShareGameEntryPoint()

		GameInviteModalManager:openModal({
			trigger = trigger :: any,
		}, options)
		return
	end

	if GetFFlagEnableNewInviteMenuCustomization() then
		local EnableLoadingState = GetFFlagEnableInvitePromptLoadingState()
		if EnableLoadingState then
			modalPrompt:show({
				isLoading = true,
			})
		end

		local params = GetCustomizedInvitePromptParams(options, ApiGetCanSendAndCanCustomizeInvites)
		if params then
			modalPrompt:show(params)
		elseif EnableLoadingState then
			modalPrompt:hide()
		end
	else
		if not canSendGameInviteAsync(player) then
			return
		end
		modalPrompt:show()
	end
end)
