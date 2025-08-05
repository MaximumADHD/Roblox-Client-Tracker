local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local Rodux = require(CorePackages.Packages.Rodux)
local SocialCommon = require(CorePackages.Workspace.Packages.SocialCommon)
local InputHandlers = require(CorePackages.Packages.InputHandlers)
local ChatEntryPointNames = SocialCommon.Enums.ChatEntryPointNames

local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)

local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigableSurfaceRegistry = FocusNavigationUtils.FocusNavigableSurfaceRegistry
local FocusNavigationRegistryProvider = FocusNavigableSurfaceRegistry.Provider
local FocusRoot = FocusNavigationUtils.FocusRoot
local FocusNavigationEventNameEnum = FocusNavigationUtils.FocusNavigationEventNameEnum
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

local GetFFlagFixSettingshubImportOrder = require(RobloxGui.Modules.Flags.GetFFlagFixSettingshubImportOrder)
if GetFFlagFixSettingshubImportOrder() then
	-- We need to ensure we don't require SettingsHub before TopBar has finished
	-- This is due to ordering of SetGlobalGuiInset defined in TopBar
	CoreGui:WaitForChild("TopBarApp")
end
local SettingsHub = require(RobloxGui.Modules.Settings.SettingsHub)

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChat = AppChat.App.InExperienceAppChat
local AppChatReducer = AppChat.App.AppChatReducer
local InExperienceAppChatProviders = AppChat.App.InExperienceAppChatProviders
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal
local renderCoreScriptInExperienceAppChat = AppChat.App.renderCoreScriptInExperienceAppChat
local ViewportUtil = require(RobloxGui.Modules.Chrome.ChromeShared.Service.ViewportUtil)
local FFlagEnableAppChatFocusableFixes =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableAppChatFocusableFixes
local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local PlayerListManager = require(RobloxGui.Modules.PlayerList.PlayerListManager)

local GetFFlagAppChatInExpConnectIconEnableSquadIndicator =
	require(RobloxGui.Modules.Chrome.Flags.GetFFlagAppChatInExpConnectIconEnableSquadIndicator)
local TopBarTopMargin = require(RobloxGui.Modules.TopBar.Constants).TopBarTopMargin
local getFFlagAppChatMoveApolloProvider = AppChat.Flags.getFFlagAppChatMoveApolloProvider
local GetFFlagIsSquadEnabled = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIsSquadEnabled

local FFlagAppChatMoveMainComponent = game:DefineFastFlag("FFlagAppChatMoveMainComponent", false)

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
	entryPoint = if InExperienceAppChatExperimentation.default.variant.ShowPlatformChatChromeUnibarEntryPoint
		then ChatEntryPointNames.ChromeUnibar
		else ChatEntryPointNames.ChromeDropdown,
	hideParentContainer = function()
		InExperienceAppChatModal.default:setVisible(false)
	end,
	showParentContainer = function()
		InExperienceAppChatModal.default:setVisible(true)
	end,
	updateCurrentSquadId = function(squadId)

	if GetFFlagAppChatInExpConnectIconEnableSquadIndicator() and GetFFlagIsSquadEnabled() then
			InExperienceAppChatModal:setCurrentSquadId(squadId)
		end
	end,
}

if FFlagAppChatMoveMainComponent then
	renderCoreScriptInExperienceAppChat(ApolloClient, parentContainerContext, updateAppChatUnreadMessagesCount)
else
	local folder = Instance.new("Folder")
	folder.Name = "AppChat"
	folder.Parent = CoreGui

	local root = ReactRoblox.createRoot(folder)
	local store = Rodux.Store.new(AppChatReducer, nil, {
		Rodux.thunkMiddleware,
	})

	local focusNavigationService = if FFlagEnableAppChatFocusableFixes
		then ReactFocusNavigation.FocusNavigationService.new(ReactFocusNavigation.EngineInterface.CoreGui)
		else nil

	local function AppChatMainWithFocusRoot()
		local customEventHandlers = {
			[FocusNavigationEventNameEnum.NavigateBack :: string] = {
				handler = InputHandlers.onRelease(function(event)
					parentContainerContext.hideParentContainer()
					event:cancel()
				end),
			},
		}

		local eventMap = {
			[Enum.KeyCode.ButtonB] = FocusNavigationEventNameEnum.NavigateBack :: string,
			[Enum.KeyCode.Escape] = FocusNavigationEventNameEnum.NavigateBack :: string,
		}

		return React.createElement(ReactFocusNavigation.FocusNavigationContext.Provider, {
			value = focusNavigationService,
		}, {
			FocusNavigationRegistryProvider = React.createElement(FocusNavigationRegistryProvider, nil, {
				FocusRoot = React.createElement(FocusRoot, {
					surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.PopUp,
					isAutoFocusRoot = true,
					isIsolated = true,
					eventHandlers = customEventHandlers,
					eventMap = eventMap,
				}, {
					InExperienceAppChatProviders = React.createElement(InExperienceAppChatProviders, {
						store = store,
						-- this anonymous function to be replaced by one used by unibar
						updateAppChatUnreadMessagesCount = updateAppChatUnreadMessagesCount,
						parentContainerContext = parentContainerContext,
						apolloClient = if getFFlagAppChatMoveApolloProvider() then ApolloClient else nil,
					}, {
						appChat = React.createElement(InExperienceAppChat, {
							apolloClient = if getFFlagAppChatMoveApolloProvider() then nil else ApolloClient,
						}),
					}),
				}),
			}),
		})
	end

	local function AppChatMainWithoutFocusRoot()
		return React.createElement(InExperienceAppChatProviders, {
			store = store,
			-- this anonymous function to be replaced by one used by unibar
			updateAppChatUnreadMessagesCount = updateAppChatUnreadMessagesCount,
			parentContainerContext = parentContainerContext,
			apolloClient = if getFFlagAppChatMoveApolloProvider() then ApolloClient else nil,
		}, {
			appChat = React.createElement(InExperienceAppChat, {
				apolloClient = if getFFlagAppChatMoveApolloProvider() then nil else ApolloClient,
			}),
		})
	end

	local tree = if FFlagEnableAppChatFocusableFixes then AppChatMainWithFocusRoot() else AppChatMainWithoutFocusRoot()

	root:render(tree)
end
