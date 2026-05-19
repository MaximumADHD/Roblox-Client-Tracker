local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local SocialCommon = require(CorePackages.Workspace.Packages.SocialCommon)
local ChatEntryPointNames = SocialCommon.Enums.ChatEntryPointNames

local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)

local GetFFlagFixSettingshubImportOrder = require(RobloxGui.Modules.Flags.GetFFlagFixSettingshubImportOrder)

local FFlagRemoveLoadingTimeout = require(RobloxGui.Modules.Flags.FFlagRemoveLoadingTimeout)
local ChromeEnabled = require(CorePackages.Workspace.Packages.Chrome).Enabled()
if GetFFlagFixSettingshubImportOrder() and not (FFlagRemoveLoadingTimeout and ChromeEnabled) then
	-- We need to ensure we don't require SettingsHub before TopBar has finished
	-- This is due to ordering of SetGlobalGuiInset defined in TopBar
	CoreGui:WaitForChild("TopBarApp", if FFlagRemoveLoadingTimeout then math.huge else nil)
end
local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)
local ParentContainer = require(CorePackages.Workspace.Packages.AppChat.ParentContainer)
local InExperienceAppChatModal = require(CorePackages.Workspace.Packages.AppChat.InExperienceAppChatModal)
local renderCoreScriptInExperienceAppChat = require(CorePackages.Workspace.Packages.AppChat.renderCoreScriptInExperienceAppChat)
local ViewportUtil = require(RobloxGui.Modules.Chrome.ChromeShared.Service.ViewportUtil)
local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local PlayerListManager = require(RobloxGui.Modules.PlayerList.PlayerListManager)

local TopBarConstants = require(RobloxGui.Modules.TopBar.Constants)
local GetFFlagIsSquadEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIsSquadEnabled
local SSUIMetaLua = game:GetEngineFeature("SSUIMetaLua")

local TopBarTopMargin = TopBarConstants.ApplyDisplayScale(TopBarConstants.TopBarTopMargin)

InExperienceAppChatModal.default:initialize(TopBarTopMargin, SettingsHub, ViewportUtil, ChatSelector, PlayerListManager)

-- Notify SafetyService when party chat window visibility changes
if SSUIMetaLua then
	pcall(function()
		local SafetyService = game:GetService("SafetyService")
		InExperienceAppChatModal.default.visibilitySignal.Event:Connect(function(visible)
			if visible then
				SafetyService:ReportPartyChatWindowOpen()
			else
				SafetyService:ReportPartyChatWindowClose()
			end
		end)
	end)
end

local updateAppChatUnreadMessagesCount = function(newCount)
	InExperienceAppChatModal:setUnreadCount(newCount)
end

local parentContainerContext: ParentContainer.ParentContainerContextType = {
	getParentContainer = function()
		return InExperienceAppChatModal.default.frame
	end,
	visibilitySignal = InExperienceAppChatModal.default.visibilitySignal.Event,
	getShouldSetAppChatVisible = function(...)
		return InExperienceAppChatModal:getVisible()
	end,
	-- todo: ROACTCHAT-1352 consolidate with UA entry point logic
	entryPoint = 
		ChatEntryPointNames.ChromeDropdown,
	hideParentContainer = function()
		InExperienceAppChatModal.default:setVisible(false)
	end,
	showParentContainer = function()
		InExperienceAppChatModal.default:setVisible(true)
	end,
	updateCurrentSquadId = function(squadId)
		if GetFFlagIsSquadEnabled() then
			InExperienceAppChatModal:setCurrentSquadId(squadId)
		end
	end,
}

renderCoreScriptInExperienceAppChat(ApolloClient, parentContainerContext, updateAppChatUnreadMessagesCount)
