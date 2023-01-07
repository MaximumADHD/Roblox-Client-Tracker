local AnalyticsService = game:GetService("RbxAnalyticsService")
local SocialService = game:GetService("SocialService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Modules = RobloxGui.Modules
local SettingsHubDirectory = Modules.Settings
local ShareGameDirectory = SettingsHubDirectory.Pages.ShareGame

local GetFFlagEnableNewInviteMenuCustomization = require(Modules.Flags.GetFFlagEnableNewInviteMenuCustomization)
local GetFFlagEnableInvitePromptLoadingState = require(Modules.Flags.GetFFlagEnableInvitePromptLoadingState)

local Diag = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.Diag
local EventStream = require(CorePackages.AppTempCommon.Temp.EventStream)
local InviteToGameAnalytics = require(ShareGameDirectory.Analytics.InviteToGameAnalytics)

local inviteToGameAnalytics = InviteToGameAnalytics.new()
	:withEventStream(EventStream.new())
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
	if GetFFlagEnableNewInviteMenuCustomization() then
		if player ~= Players.LocalPlayer then
			return
		end
		local EnableLoadingState = GetFFlagEnableInvitePromptLoadingState()
		if EnableLoadingState then
			modalPrompt:show({
				isLoading = true,
			})
		end

		local options: ExperienceInviteOptions? = if experienceInviteOptions
			then experienceInviteOptions :: ExperienceInviteOptions else nil
		local params = GetCustomizedInvitePromptParams(options, ApiGetCanSendAndCanCustomizeInvites)
		if params then
			modalPrompt:show(params)
		elseif EnableLoadingState then
			modalPrompt:hide()
		end
	else
		if player ~= Players.LocalPlayer or not canSendGameInviteAsync(player) then
			return
		end
		modalPrompt:show()
	end
end)
