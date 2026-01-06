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
local SignalsRoblox = require(CorePackages.Packages.SignalsRoblox)

local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
local ExpChatFocusNavigationStore = ExpChat.Stores.GetFocusNavigationStore(false)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local FFlagExpChatWindowSyncUnibar = SharedFlags.FFlagExpChatWindowSyncUnibar

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal

local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local getExperienceChatVisualConfig = require(CorePackages.Workspace.Packages.ExpChat).getExperienceChatVisualConfig
local GetFFlagSimpleChatUnreadMessageCount = SharedFlags.GetFFlagSimpleChatUnreadMessageCount
local GetFFlagDisableLegacyChatSimpleUnreadMessageCount = SharedFlags.GetFFlagDisableLegacyChatSimpleUnreadMessageCount
local FFlagExpChatUnibarThumbstickNavigate = game:DefineFastFlag("ExpChatUnibarThumbstickNavigate", false)
local FFlagExpChatUnibarAvailabilityRefactor = game:DefineFastFlag("ExpChatUnibarAvailabilityRefactor", false)
local FFlagHideChatButtonForChatDisabledUsers = game:DefineFastFlag("HideChatButtonForChatDisabledUsers", false)
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local InExperienceUIVRIXP = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).InExperienceUIVRIXP

local unreadMessages = 0
-- note: do not rely on ChatSelector:GetVisibility after startup; it's state is incorrect if user opens via keyboard shortcut
local chatVisibility: boolean = ChatSelector:GetVisibility()
local chatChromeIntegration

local chatSelectorVisibilitySignal = ChatSelector.VisibilityStateChanged
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
		if FFlagHideChatButtonForChatDisabledUsers and not isVisible and not localUserCanChat() then
			chatChromeIntegration.availability:unavailable()
		end
	end

	if not GuiService.MenuIsOpen then
		-- chat is inhibited (visibility = false) during menu open; not user intent; don't save
		GameSettings.ChatVisible = isVisible :: boolean
	end

	chatVisibility = isVisible :: boolean
	if GetFFlagSimpleChatUnreadMessageCount() then
		if isVisible and chatChromeIntegration.notification then
			chatChromeIntegration.notification:clear()
		end
	else
		if isVisible and unreadMessages and chatChromeIntegration.notification then
			unreadMessages = 0
			chatChromeIntegration.notification:clear()
		end
	end
end)

local dismissCallback = function()
	if InExperienceAppChatModal:getVisible() then
		InExperienceAppChatModal.default:setVisible(false)
	end

	ChatSelector:SetVisible(true)

	if FFlagEnableConsoleExpControls then
		FocusSelectExpChat(chatChromeIntegration.id)
	end
end

chatChromeIntegration = ChromeService:register({
	id = "chat",
	label = "CoreScripts.TopBar.Chat",
	activated = function(self)
		if chatVisibility then
			ChatSelector:SetVisible(false)
		else
			if (isInExperienceUIVREnabled and isSpatial()) and not InExperienceUIVRIXP:isMovePanelToCenter() then
				ChatSelector:SetVisible(true)
			else
				ChromeIntegrationUtils.dismissRobloxMenuAndRun(function()
					dismissCallback()
				end)
			end
		end
	end,
	isActivated = function()
		return chatVisibilitySignal:get()
	end,
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
})

if FFlagExpChatUnibarAvailabilityRefactor then
	-- We are using a detached effect here because we don't have a great
	-- place to keep our weak reference alive. This is because chrome registration
	-- doesn't have a end-lifecycle well defined.
	SignalsRoblox.createDetachedEffect(function(scope)
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
	SignalsRoblox.createDetachedEffect(function(scope)
		local isChatInputBarFocused = ExpChatFocusNavigationStore.getChatInputBarFocused(scope)
		if isChatInputBarFocused then
			ChromeService:setShortcutBar(ChromeConstants.UNIBAR_SHORTCUTBAR_ID)
		else
			ChromeService:setShortcutBar(nil)
		end
	end)
end

if GetFFlagSimpleChatUnreadMessageCount() then
	-- TextChatService
	TextChatService.MessageReceived:Connect(function()
		if not chatVisibility and chatChromeIntegration.notification:isEmpty() then
			chatChromeIntegration.notification:fireCount(1)
		end
	end)

	-- Legacy Chat
	if not GetFFlagDisableLegacyChatSimpleUnreadMessageCount() then
		ChatSelector.MessagesChanged:connect(function(messages: number)
			if not chatVisibility and chatChromeIntegration.notification:isEmpty() then
				chatChromeIntegration.notification:fireCount(1)
			end
		end)
	end
else
	TextChatService.MessageReceived:Connect(function()
		if not chatVisibility then
			unreadMessages += 1
			chatChromeIntegration.notification:fireCount(unreadMessages)
		end
	end)

	local lastMessagesChangedValue = 0
	ChatSelector.MessagesChanged:connect(function(messages: number)
		if not chatVisibility then
			unreadMessages += messages - lastMessagesChangedValue
			chatChromeIntegration.notification:fireCount(unreadMessages)
		end
		lastMessagesChangedValue = messages
	end)
end

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
			chatChromeIntegration.notification:fireCount(unreadMessages)
		end
	end
end

--coroutine.resume(coroutine.create(_simulateChat))

return chatChromeIntegration
