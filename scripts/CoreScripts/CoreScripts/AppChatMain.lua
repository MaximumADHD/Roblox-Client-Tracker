local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Rodux = require(CorePackages.Workspace.Packages.Rodux)
local SocialCommon = require(CorePackages.Workspace.Packages.SocialCommon)
local ChatEntryPointNames = SocialCommon.Enums.ChatEntryPointNames

local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)
local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChat = AppChat.App.InExperienceAppChat
local UnreadMessagesProvider = AppChat.Contexts.UnreadMessagesProvider
local AppChatReducer = AppChat.App.AppChatReducer
local InExperienceAppChatProviders = AppChat.App.InExperienceAppChatProviders
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal
local ParentContainerContext = AppChat.Contexts.ParentContainer.ParentContainerContext

local TopBarTopMargin = require(RobloxGui.Modules.TopBar.Constants).TopBarTopMargin

local folder = Instance.new("Folder")
folder.Name = "AppChat"
folder.Parent = CoreGui

local root = ReactRoblox.createRoot(folder)
local store = Rodux.Store.new(AppChatReducer, nil, {
	Rodux.thunkMiddleware,
})

local shouldUseIndependentAppChatContainer = InExperienceAppChatExperimentation.getShowPlatformChatInChrome()
local updateAppChatUnreadMessagesCount = SettingsHub.Instance.PlayersPage.UpdateAppChatUnreadMessagesCount
local parentContainerContext: AppChat.ParentContainerContextType = {
	getParentContainer = function()
		return SettingsHub.Instance.MenuContainer
	end,
	visibilitySignal = SettingsHub.CurrentPageSignal,
	getShouldSetAppChatVisible = function(newPage: string)
		return newPage == "AppChatPage"
	end,
	-- todo: ROACTCHAT-1352 consolidate with UA entry point logic
	entryPoint = ChatEntryPointNames.SettingsHub,
	hideParentContainer = function()
		if SettingsHub:GetVisibility() then
			SettingsHub.Instance:PopMenu(false, true)
		end
	end,
	showParentContainer = function()
		SettingsHub.Instance:SetVisibility(true, false)
		SettingsHub:SwitchToPage(SettingsHub.Instance.AppChatPage)
	end
}

if shouldUseIndependentAppChatContainer then
	InExperienceAppChatModal.default:initialize(TopBarTopMargin, SettingsHub)

	updateAppChatUnreadMessagesCount = function(newCount)
		InExperienceAppChatModal:setUnreadCount(newCount)
	end

	parentContainerContext = {
		getParentContainer = function()
			return InExperienceAppChatModal.default.frame
		end,
		visibilitySignal = InExperienceAppChatModal.default.visibilitySignal.Event,
		getShouldSetAppChatVisible = function(...)
			return InExperienceAppChatModal:getVisible()
		end,
		-- todo: ROACTCHAT-1352 consolidate with UA entry point logic
		entryPoint = if InExperienceAppChatExperimentation.default.variant.ShowPlatformChatChromeUnibarEntryPoint
			then ChatEntryPointNames.ChromeUnibar
			else ChatEntryPointNames.ChromeDropdown,
		hideParentContainer = function()
			InExperienceAppChatModal.default:setVisible(false)
		end,
		showParentContainer = function()
			InExperienceAppChatModal.default:setVisible(true)
		end
	}
end

local tree = React.createElement(InExperienceAppChatProviders, {
	store = store,
	-- this anonymous function to be replaced by one used by unibar
	updateAppChatUnreadMessagesCount = updateAppChatUnreadMessagesCount,
	parentContainerContext = parentContainerContext
}, {
	appChat = React.createElement(InExperienceAppChat, {
		apolloClient = ApolloClient,
	})
})
root:render(tree)
