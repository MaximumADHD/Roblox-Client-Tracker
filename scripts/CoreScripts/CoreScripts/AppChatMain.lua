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
local renderCoreScriptInExperienceAppChat =
	require(CorePackages.Workspace.Packages.AppChat.renderCoreScriptInExperienceAppChat)
local ViewportUtil = require(RobloxGui.Modules.Chrome.ChromeShared.Service.ViewportUtil)
local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local PlayerListManager = require(RobloxGui.Modules.PlayerList.PlayerListManager)

local TopBarConstants = require(RobloxGui.Modules.TopBar.Constants)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local GetFFlagIsSquadEnabled = SharedFlags.GetFFlagIsSquadEnabled
local FFlagExpChatEnableFriendsTab = SharedFlags.FFlagExpChatEnableFriendsTab
local ChatChromeIntegration = if FFlagExpChatEnableFriendsTab and ChromeEnabled
	then require(RobloxGui.Modules.Chrome.Integrations.ExpChat.ChatChromeIntegration)
	else nil
local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
local openConversation = require(CorePackages.Workspace.Packages.FriendsChat.openConversation)
local Promise = require(CorePackages.Packages.Promise)
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

local chatOpenCapability = if ChatChromeIntegration then ChatChromeIntegration.chatOpenCapability else nil
local openFriendsChatConversation = if chatOpenCapability
	then ParentContainer.createOpenFriendsChatConversation({
		isChatAvailable = chatOpenCapability.isAvailable,
		openConversation = openConversation,
		requestSelectFriendsTab = ExpChat.requestSelectFriendsTab,
		ensureOpenChat = chatOpenCapability.ensureOpenChat,
	})
	else function(_conversationId: string)
		return Promise.resolve(false)
	end

local parentContainerContext: ParentContainer.ParentContainerContextType = {
	getParentContainer = function()
		return InExperienceAppChatModal.default.frame
	end,
	visibilitySignal = InExperienceAppChatModal.default.visibilitySignal.Event,
	getRequestedRoute = function()
		return InExperienceAppChatModal.default.requestedRoute
	end,
	requestedRouteSignal = InExperienceAppChatModal.default.requestedRouteSignal.Event,
	clearRequestedRoute = function()
		InExperienceAppChatModal.default:clearRequestedRoute()
	end,
	getShouldSetAppChatVisible = function(...)
		return InExperienceAppChatModal:getVisible()
	end,
	-- todo: ROACTCHAT-1352 consolidate with UA entry point logic
	entryPoint = ChatEntryPointNames.ChromeDropdown,
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
	openFriendsChatConversation = openFriendsChatConversation,
}

renderCoreScriptInExperienceAppChat(ApolloClient, parentContainerContext, updateAppChatUnreadMessagesCount)
