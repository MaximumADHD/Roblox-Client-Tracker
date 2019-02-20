local AnalyticsService = game:GetService("AnalyticsService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local SocialService = game:GetService("SocialService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Diag = require(CorePackages.AppTempCommon.AnalyticsReporters.Diag)
local EventStream = require(CorePackages.AppTempCommon.Temp.EventStream)

local Modules = RobloxGui.Modules
local SettingsHubDirectory = Modules.Settings

local ShareGameDirectory = SettingsHubDirectory.Pages.ShareGame
local mountModalInvitationPrompt = require(ShareGameDirectory.mountModalInvitationPrompt)
local InviteToGameAnalytics = require(ShareGameDirectory.Analytics.InviteToGameAnalytics)

local FFlagLuaInviteNewAnalytics = settings():GetFFlag("LuaInviteNewAnalytics")

local inviteToGameAnalytics
if FFlagLuaInviteNewAnalytics then
	inviteToGameAnalytics = InviteToGameAnalytics.new()
		:withEventStream(EventStream.new())
		:withDiag(Diag.new(AnalyticsService))
		:withButtonName(InviteToGameAnalytics.ButtonName.ModalPrompt)
end

local isPromptCurrentlyVisible = false
SocialService.PromptInviteRequested:Connect(function(player)
	if isPromptCurrentlyVisible
		or player ~= Players.LocalPlayer
		or not SocialService:CanSendGameInviteAsync(player) then
		return
	end

	isPromptCurrentlyVisible = true
	mountModalInvitationPrompt(CoreGui, {
		analytics = inviteToGameAnalytics,
		onAfterClosePage = function(sentToUserIds)
			SocialService:InvokeGameInvitePromptClosed(player, sentToUserIds)
			isPromptCurrentlyVisible = false
		end,
	})

	if FFlagLuaInviteNewAnalytics then
		inviteToGameAnalytics:inputShareGameEntryPoint()
	end
end)