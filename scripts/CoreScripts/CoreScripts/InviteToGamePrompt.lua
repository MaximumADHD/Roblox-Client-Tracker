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
local GetFFlagLuaInExperienceCoreScriptsGameInviteUnification =
	require(Modules.Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification)
local FFlagLuaEnableGameInviteModalInvitePrompt = game:DefineFastFlag("LuaEnableGameInviteModalInvitePromptV2", false)

local IXPServiceWrapper = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local Diag = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.Diag

local EventStream = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream

local InviteToGameAnalytics = require(CorePackages.Workspace.Packages.GameInvite).GameInviteAnalytics
local GetFStringGameInviteMenuLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringGameInviteMenuLayer

local GameInvitePackage, GameInviteModalManager, GameInviteInviteExperimentVariant, GetCustomizedInvitePromptTrigger, GameInviteConstants, GameInviteAnalyticsManager
if GetFFlagLuaInExperienceCoreScriptsGameInviteUnification() then
	GameInvitePackage = require(CorePackages.Workspace.Packages.GameInvite)
	GameInviteModalManager = GameInvitePackage.GameInviteModalManager
	GameInviteInviteExperimentVariant = GameInvitePackage.GameInviteInviteExperimentVariant
	GetCustomizedInvitePromptTrigger = GameInvitePackage.GetCustomizedInvitePromptTrigger
	GameInviteConstants = GameInvitePackage.GameInviteConstants
	GameInviteAnalyticsManager = GameInvitePackage.GameInviteAnalyticsManager
end

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
	local newGameInviteModalEnabled = false
	local layer = GetFStringGameInviteMenuLayer()
	if GetFFlagLuaInExperienceCoreScriptsGameInviteUnification() and FFlagLuaEnableGameInviteModalInvitePrompt then
		local layerData = IXPServiceWrapper:GetLayerData(layer)
		IXPServiceWrapper:LogUserLayerExposure(layer)

		newGameInviteModalEnabled = (
			layerData
			and (
				layerData.inExperienceGameInviteUXRefresh2023 == GameInviteInviteExperimentVariant.UxRefresh
				or layerData.inExperienceGameInviteUXRefresh2023 == GameInviteInviteExperimentVariant.InviteLimit
			)
		) == true
	end

	if newGameInviteModalEnabled then
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
		if GameInviteModalManager then
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
		end
	end

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
			then experienceInviteOptions :: ExperienceInviteOptions
			else nil
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
