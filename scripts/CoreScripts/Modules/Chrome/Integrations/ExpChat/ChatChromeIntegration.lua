local Chrome = script:FindFirstAncestor("Chrome")

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local TextChatService = game:GetService("TextChatService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Chat = game:GetService("Chat")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local ChromeConstants = require(Chrome.ChromeShared.Unibar.Constants)
local ChromeIntegrationUtils = require(Chrome.Integrations.ChromeIntegrationUtils)
local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local FFlagChatIntegrationFixShortcut = require(Chrome.Flags.FFlagChatIntegrationFixShortcut)
local FocusSelectExpChat = require(Chrome.ChromeShared.Utility.FocusSelectExpChat)
local ViewportUtil = require(Chrome.ChromeShared.Service.ViewportUtil)
local MappedSignal = ChromeUtils.MappedSignal
local GameSettings = UserSettings().GameSettings
local GuiService = game:GetService("GuiService")
local GamepadUtils = require(CorePackages.Workspace.Packages.InputUi).Gamepad.GamepadUtils
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local ChatIconVisibleSignals = require(script.Parent.ChatIconVisibleSignals).default
local SignalsUtils = require(CorePackages.Workspace.Packages.SignalsUtils)

local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement

type ChatOpenCapability = {
	isAvailable: () -> boolean,
	ensureOpenChat: (isCurrentRequest: () -> boolean) -> (),
}

type ChatIntegration = ChromePackage.IntegrationProps & {
	chatOpenCapability: ChatOpenCapability?,
}

-- Do not render the chat integration when the debug flag turning off experience chat is enabled
local FFlagDebugDisableExperienceChatMain = require(RobloxGui.Modules.Flags.FFlagDebugDisableExperienceChatMain)
if FFlagDebugDisableExperienceChatMain then
	return nil :: ChatIntegration?
end

local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
local ExpChatFocusNavigationStore = ExpChat.Stores.GetFocusNavigationStore(false)
local shouldSuppressUnreadForTabMetadata = ExpChat.shouldSuppressUnreadForTabMetadata
-- TODO: exp-chat should own friends unread-count tracking and expose an
-- abstracted interface for chrome, rather than chrome reaching into a
-- friends-chat store directly.
local GetFriendsChatIconUnreadStore = require(CorePackages.Workspace.Packages.FriendsChat.GetFriendsChatIconUnreadStore)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagExpChatWindowSyncUnibar = SharedFlags.FFlagExpChatWindowSyncUnibar
local FFlagRemoveFriendsChatUnibarEntrypoints = SharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints
local FFlagExpChatEnableFriendsTab = SharedFlags.FFlagExpChatEnableFriendsTab
local FFlagExpChatCanShowFriendsTab = SharedFlags.FFlagExpChatCanShowFriendsTab
local InExperienceAppChatModal = require(CorePackages.Workspace.Packages.AppChat.InExperienceAppChatModal)

local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local getExperienceChatVisualConfig = require(CorePackages.Workspace.Packages.ExpChat).getExperienceChatVisualConfig
local ExpChatShared = require(CorePackages.Workspace.Packages.ExpChatShared)
local GetFFlagTextChatEnableUniverseChatTabs = ExpChatShared.Flags.GetFFlagTextChatEnableUniverseChatTabs
local FFlagExpChatSuppressWelcomeMessageUnibarUnread =
	game:DefineFastFlag("ExpChatSuppressWelcomeMessageUnibarUnread", false)
local FFlagExpChatUnibarThumbstickNavigate = game:DefineFastFlag("ExpChatUnibarThumbstickNavigate", false)
local FFlagExpChatUnibarAvailabilityRefactor = game:DefineFastFlag("ExpChatUnibarAvailabilityRefactor", false)
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local InExperienceUIVRIXP = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).InExperienceUIVRIXP
local ExpChatPerfTracker = ExpChat.ExpChatPerfTracker

local ArgoPartyExperimentation = require(CorePackages.Workspace.Packages.SocialExperiments).ArgoPartyExperimentation

local unreadMessages = 0
-- note: do not rely on ChatSelector:GetVisibility after startup; it's state is incorrect if user opens via keyboard shortcut
local chatVisibility: boolean = ChatSelector:GetVisibility()
local chatChromeIntegration: ChatIntegration

local chatSelectorVisibilitySignal = ChatSelector.VisibilityStateChanged

local function updateUnreadNotification()
	if not chatChromeIntegration.notification then
		return
	end

	if not FFlagExpChatEnableFriendsTab then
		chatChromeIntegration.notification:fireCount(unreadMessages)
		return
	end

	local friendsChatUnreadMessages = GetFriendsChatIconUnreadStore(false).getUnreadCountToDisplay(false)
	local unreadCount = unreadMessages + friendsChatUnreadMessages
	if chatVisibility or unreadCount == 0 then
		chatChromeIntegration.notification:clear()
	else
		chatChromeIntegration.notification:fireCount(unreadCount)
	end
end

local function localUserCanChat()
	if not RunService:IsStudio() then
		local success, localUserCanChat = pcall(function()
			return Chat:CanUserChatAsync(Players.LocalPlayer and Players.LocalPlayer.UserId or 0)
		end)
		return success and localUserCanChat
	end
	return true
end

if not FFlagExpChatWindowSyncUnibar then
	-- MappedSignal doesn't seem to fire in the event where the in-experience menu is closed, but does when it's opened, causing
	-- the chat button to be hidden when the window is open. Using the signal directly fixes this issue
	chatSelectorVisibilitySignal:connect(function(visible)
		if FFlagExpChatUnibarAvailabilityRefactor then
			ChatIconVisibleSignals.setVisibleViaChatSelector(visible)
		else
			if visible then
				chatChromeIntegration.availability:pinned()
			end
		end
	end)

	local chatWindowToggled = ChatSelector.ChatWindowToggled
	chatWindowToggled:connect(function(visible)
		if FFlagExpChatUnibarAvailabilityRefactor then
			ChatIconVisibleSignals.setVisibleViaChatSelector(visible)
		else
			if visible then
				chatChromeIntegration.availability:pinned()
			end
		end
	end)
end

if FFlagExpChatWindowSyncUnibar then
	-- We rely on the legacy ChatSelector signals to drive chat visibility state
	-- We want to sync the stored game setting value with the actual chat window visibility
	GameSettings:GetPropertyChangedSignal("ChatVisible"):Connect(function()
		ChatIconVisibleSignals.setGameSettingsChatVisible(GameSettings.ChatVisible)
	end)
	ChatIconVisibleSignals.setGameSettingsChatVisible(GameSettings.ChatVisible)
end

local chatVisibilitySignal = MappedSignal.new(chatSelectorVisibilitySignal, function()
	return chatVisibility
end, function()
	local isVisible = ChatSelector.GetVisibility()
	if not FFlagExpChatUnibarAvailabilityRefactor then
		-- Is there a less imperative way to do this?
		if not isVisible and not localUserCanChat() then
			chatChromeIntegration.availability:unavailable()
		end
	end

	if not GuiService.MenuIsOpen then
		-- chat is inhibited (visibility = false) during menu open; not user intent; don't save
		GameSettings.ChatVisible = isVisible :: boolean
	end

	chatVisibility = isVisible :: boolean
	if FFlagExpChatEnableFriendsTab then
		if isVisible then
			unreadMessages = 0
			-- Opening the chat window clears the friends portion of the badge; it
			-- only reappears when new messages arrive afterward.
			GetFriendsChatIconUnreadStore(false).clearDisplayCount()
		end
		updateUnreadNotification()
	elseif isVisible and unreadMessages and chatChromeIntegration.notification then
		unreadMessages = 0
		chatChromeIntegration.notification:clear()
	end
end)

local function hideAppChat()
	if not InExperienceAppChatModal:getVisible() then
		return
	end

	InExperienceAppChatModal.default:setVisible(false)
end

local function revealChat()
	hideAppChat()

	ChatSelector:SetVisible(true)

	if FFlagEnableConsoleExpControls then
		FocusSelectExpChat(chatChromeIntegration.id)
	end
end

local function isChatOpenAvailable(): boolean
	return chatChromeIntegration.availability:get() ~= ChromeService.AvailabilitySignal.Unavailable
end

local function isSpatialDirectOpen(): boolean
	return (isInExperienceUIVREnabled and isSpatial()) and not InExperienceUIVRIXP:isMovePanelToCenter()
end

-- Reveals ExpChat for the Friends Chat handoff. Callers are expected to have
-- already checked `isAvailable` and reserved the chat session.
local function ensureOpenChat(isCurrentRequest: () -> boolean)
	if chatVisibility then
		hideAppChat()
	elseif isSpatialDirectOpen() then
		revealChat()
	else
		ChromeIntegrationUtils.dismissRobloxMenuAndRun(function()
			-- Dismissing the menu is slow enough that a newer handoff can
			-- supersede this one, or chat can stop being available, before the
			-- menu finishes closing. Revealing anyway would show the previous
			-- conversation.
			if isCurrentRequest() and isChatOpenAvailable() then
				revealChat()
			end
		end)
	end
end

chatChromeIntegration = ChromeService:register({
	id = "chat",
	label = "CoreScripts.TopBar.Chat",
	-- Hide ExpChat "Chat" button until Friends chat in experience is launched: https://roblox.atlassian.net/browse/EXPR-3846
	sideSheetPlacement = if ArgoPartyExperimentation.getIsRenameEnabled()
			and not (FFlagRemoveFriendsChatUnibarEntrypoints and FFlagExpChatCanShowFriendsTab)
		then SideSheetPlacement.None
		else SideSheetPlacement.Unibar,
	activated = function(self)
		if chatVisibility then
			ChatSelector:SetVisible(false)
		else
			ExpChatPerfTracker.start(ExpChatPerfTracker.Events.ChatWindowMountTTI, {})
			if isSpatialDirectOpen() then
				ChatSelector:SetVisible(true)
			else
				ChromeIntegrationUtils.dismissRobloxMenuAndRun(function()
					revealChat()
				end)
			end
		end
	end,
	isActivated = chatVisibilitySignal,
	selected = if FFlagEnableConsoleExpControls
		then function(self)
			if FFlagExpChatUnibarThumbstickNavigate then
				local connSelectedItem
				local connInputChanged
				local connInputBegan

				connSelectedItem = ChromeService:selectedItem():connect(function(selectedId)
					-- Given signals behavior, this should just be called deselection occurs.
					assert(selectedId ~= self.id, "Expected selectedId to not be self.id on selection")

					connSelectedItem:disconnect()

					connInputChanged:Disconnect()
					connInputBegan:Disconnect()
				end)

				connInputChanged = UserInputService.InputChanged:Connect(function(input)
					if input.KeyCode == Enum.KeyCode.Thumbstick1 then
						local key = GamepadUtils.mapPositionToDirection(Vector2.new(input.Position.X, input.Position.Y))
						if key == Enum.KeyCode.Down then
							FocusSelectExpChat(chatChromeIntegration.id)
						end
					end
				end)

				connInputBegan = UserInputService.InputBegan:Connect(function(input)
					local key = input.KeyCode
					if key == Enum.KeyCode.DPadDown or key == Enum.KeyCode.Down then
						FocusSelectExpChat(chatChromeIntegration.id)
					end
				end)
			else
				local chatSelectConn
				chatSelectConn = UserInputService.InputEnded:Connect(function(input: InputObject)
					local key = input.KeyCode
					if key == Enum.KeyCode.DPadDown then
						FocusSelectExpChat(chatChromeIntegration.id)
					end
					if chatSelectConn and ChromeService:selectedItem():get() ~= self.id then
						chatSelectConn:Disconnect()
					end
				end)
			end
		end
		else nil,
	components = {
		Icon = function(props)
			local visualConfig = getExperienceChatVisualConfig()
			return CommonIcon(visualConfig.icon.off, visualConfig.icon.on, chatVisibilitySignal)
		end,
	},
}) :: ChatIntegration

chatChromeIntegration.chatOpenCapability = if FFlagExpChatEnableFriendsTab
	then {
		isAvailable = isChatOpenAvailable,
		ensureOpenChat = ensureOpenChat,
	}
	else nil

if FFlagExpChatUnibarAvailabilityRefactor then
	-- We are using a detached effect here because we don't have a great
	-- place to keep our weak reference alive. This is because chrome registration
	-- doesn't have a end-lifecycle well defined.
	SignalsUtils.createDetachedEffect(function(scope)
		local isAvailable = ChatIconVisibleSignals.getIsChatIconVisible(scope)

		-- addresses the unibar button
		if isAvailable then
			chatChromeIntegration.availability:available()
		else
			chatChromeIntegration.availability:unavailable()
		end

		if FFlagExpChatWindowSyncUnibar then
			local isWindowVisible = ChatIconVisibleSignals.getIsChatWindowVisible(scope)
			-- addresses the chat window visibility
			ExpChat.Events.ChatTopBarButtonActivated(isWindowVisible)
		end
	end)

	ChromeUtils.setCoreGuiAvailability(chatChromeIntegration, Enum.CoreGuiType.Chat, function(enabled)
		ChatIconVisibleSignals.setCoreGuiEnabled(enabled)
	end)
end

if FFlagChatIntegrationFixShortcut and FFlagEnableConsoleExpControls then
	SignalsUtils.createDetachedEffect(function(scope)
		local isChatInputBarFocused = ExpChatFocusNavigationStore.getChatInputBarFocused(scope)
		if isChatInputBarFocused then
			ChromeService:setShortcutBar(ChromeConstants.UNIBAR_SHORTCUTBAR_ID)
		else
			ChromeService:setShortcutBar(nil)
		end
	end)
end

if FFlagExpChatEnableFriendsTab then
	-- Refresh the badge whenever the friends display count changes.
	SignalsUtils.createDetachedEffect(function(scope)
		GetFriendsChatIconUnreadStore(scope).getUnreadCountToDisplay(scope)
		updateUnreadNotification()
	end)
end

-- Purely informational system messages (chat-enabled, welcome, and summary lines)
-- should not bump the unibar unread badge, mirroring the channel-tab unread
local function shouldIgnoreUnreadForMessage(textChatMessage: TextChatMessage?): boolean
	return FFlagExpChatSuppressWelcomeMessageUnibarUnread
		and shouldSuppressUnreadForTabMetadata(textChatMessage and textChatMessage.Metadata)
end

TextChatService.MessageReceived:Connect(function(textChatMessage: TextChatMessage)
	if shouldIgnoreUnreadForMessage(textChatMessage) then
		return
	end
	if not chatVisibility then
		unreadMessages += 1
		updateUnreadNotification()
	end
end)

-- Universe Chat
if GetFFlagTextChatEnableUniverseChatTabs() then
	TextChatService.UniverseChatMessageReceived:Connect(function(textChatMessage: TextChatMessage)
		if shouldIgnoreUnreadForMessage(textChatMessage) then
			return
		end
		if not chatVisibility then
			unreadMessages += 1
			updateUnreadNotification()
		end
	end)
end

local lastMessagesChangedValue = 0
ChatSelector.MessagesChanged:connect(function(messages: number)
	if not chatVisibility then
		unreadMessages += messages - lastMessagesChangedValue
		updateUnreadNotification()
	end
	lastMessagesChangedValue = messages
end)

if not FFlagExpChatWindowSyncUnibar then
	ChatSelector.ChatActiveChanged:connect(function(visible: boolean)
		if FFlagExpChatUnibarAvailabilityRefactor then
			ChatIconVisibleSignals.setChatActiveCalledByDeveloper(visible)
		else
			if visible then
				local canLocalUserChat = localUserCanChat()
				if not canLocalUserChat then
					chatChromeIntegration.availability:available()
				end
			end
		end
	end)
end

local function setChatVisibilityOnLoad()
	-- clone of ChatConnector.lua didMount()
	local willEnableChat = GameSettings.ChatVisible
	if ViewportUtil.isSmallTouchScreen() then
		willEnableChat = false
	end
	chatVisibility = willEnableChat
	ChatSelector:SetVisible(willEnableChat)
end

coroutine.wrap(function()
	local LocalPlayer = Players.LocalPlayer
	while not LocalPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		LocalPlayer = Players.LocalPlayer
	end

	local canChat = localUserCanChat()
	if FFlagExpChatUnibarAvailabilityRefactor then
		ChatIconVisibleSignals.setLocalUserChat(canChat)
		if canChat then
			setChatVisibilityOnLoad()
		end
	else
		if canChat and chatChromeIntegration.availability then
			ChromeUtils.setCoreGuiAvailability(chatChromeIntegration, Enum.CoreGuiType.Chat, function(enabled)
				if enabled then
					chatChromeIntegration.availability:pinned()
				else
					chatChromeIntegration.availability:unavailable()
				end
			end)

			-- clone of ChatConnector.lua didMount()
			local willEnableChat = GameSettings.ChatVisible
			if ViewportUtil.isSmallTouchScreen() then
				willEnableChat = false
			end
			chatVisibility = willEnableChat
			ChatSelector:SetVisible(willEnableChat)
		end
	end
end)()

-- dev test code
function _simulateChat()
	while true do
		task.wait(math.random(1, 15))
		if not chatVisibility then
			unreadMessages += 1
			updateUnreadNotification()
		end
	end
end

--coroutine.resume(coroutine.create(_simulateChat))

return chatChromeIntegration
