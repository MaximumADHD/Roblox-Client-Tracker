local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local SocialService = game:GetService("SocialService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Modules = RobloxGui.Modules
local SettingsHubDirectory = Modules.Settings

local ShareGameDirectory = SettingsHubDirectory.Pages.ShareGame
local mountModalInvitationPrompt = require(ShareGameDirectory.mountModalInvitationPrompt)

local isPromptCurrentlyVisible = false
SocialService.PromptInviteRequested:Connect(function(player)
	if isPromptCurrentlyVisible
		or player ~= Players.LocalPlayer
		or not SocialService:CanSendGameInviteAsync(player) then
		return
	end

	isPromptCurrentlyVisible = true
	mountModalInvitationPrompt(CoreGui, {
		onAfterClosePage = function(sentToUserIds)
			SocialService:InvokeGameInvitePromptClosed(player, sentToUserIds)
			isPromptCurrentlyVisible = false
		end,
	})
end)