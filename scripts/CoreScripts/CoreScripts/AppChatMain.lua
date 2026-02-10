local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local SocialCommon = require(CorePackages.Workspace.Packages.SocialCommon)
local ChatEntryPointNames = SocialCommon.Enums.ChatEntryPointNames

local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)

local GetFFlagFixSettingshubImportOrder = require(RobloxGui.Modules.Flags.GetFFlagFixSettingshubImportOrder)

local FFlagRemoveLoadingTimeout = require(RobloxGui.Modules.Flags.FFlagRemoveLoadingTimeout)
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)()
if GetFFlagFixSettingshubImportOrder() and not (FFlagRemoveLoadingTimeout and ChromeEnabled) then
	-- We need to ensure we don't require SettingsHub before TopBar has finished
	-- This is due to ordering of SetGlobalGuiInset defined in TopBar
	CoreGui:WaitForChild("TopBarApp", if FFlagRemoveLoadingTimeout then math.huge else nil)
end
local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal
local renderCoreScriptInExperienceAppChat = AppChat.App.renderCoreScriptInExperienceAppChat
local ViewportUtil = require(RobloxGui.Modules.Chrome.ChromeShared.Service.ViewportUtil)
local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local PlayerListManager = require(RobloxGui.Modules.PlayerList.PlayerListManager)

local TopBarConstants = require(RobloxGui.Modules.TopBar.Constants)
local GetFFlagIsSquadEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIsSquadEnabled

local TopBarTopMargin = TopBarConstants.ApplyDisplayScale(TopBarConstants.TopBarTopMargin)

InExperienceAppChatModal.default:initialize(TopBarTopMargin, SettingsHub, ViewportUtil, ChatSelector, PlayerListManager)

local updateAppChatUnreadMessagesCount = function(newCount)
	InExperienceAppChatModal:setUnreadCount(newCount)
end

local parentContainerContext: AppChat.ParentContainerContextType = {
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
