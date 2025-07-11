local Chrome = script:FindFirstAncestor("Chrome")

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local TextChatService = game:GetService("TextChatService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Chat = game:GetService("Chat")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local ChromeService = require(Chrome.Service)
local ChromeUtils = require(Chrome.ChromeShared.Service.ChromeUtils)
local ChromeIntegrationUtils = require(Chrome.Integrations.ChromeIntegrationUtils)
local FocusSelectExpChat = require(Chrome.ChromeShared.Utility.FocusSelectExpChat)
local ViewportUtil = require(Chrome.ChromeShared.Service.ViewportUtil)
local MappedSignal = ChromeUtils.MappedSignal
local AvailabilitySignalState = ChromeUtils.AvailabilitySignalState
local CommonIcon = require(Chrome.Integrations.CommonIcon)
local GameSettings = UserSettings().GameSettings
local GuiService = game:GetService("GuiService")
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagConsoleChatOnExpControls = SharedFlags.FFlagConsoleChatOnExpControls
local FFlagChromeChatGamepadSupportFix = SharedFlags.FFlagChromeChatGamepadSupportFix

local AppChat = require(CorePackages.Workspace.Packages.AppChat)
local InExperienceAppChatExperimentation = AppChat.App.InExperienceAppChatExperimentation
local InExperienceAppChatModal = AppChat.App.InExperienceAppChatModal
local getFFlagAppChatCoreUIConflictFix = SharedFlags.getFFlagAppChatCoreUIConflictFix

local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local GetFFlagEnableAppChatInExperience = SharedFlags.GetFFlagEnableAppChatInExperience
local GetFFlagFixMappedSignalRaceCondition = SharedFlags.GetFFlagFixMappedSignalRaceCondition
local getFFlagExpChatGetLabelAndIconFromUtil = SharedFlags.getFFlagExpChatGetLabelAndIconFromUtil
local getExperienceChatVisualConfig = require(CorePackages.Workspace.Packages.ExpChat).getExperienceChatVisualConfig
local GetFFlagSimpleChatUnreadMessageCount = SharedFlags.GetFFlagSimpleChatUnreadMessageCount
local GetFFlagDisableLegacyChatSimpleUnreadMessageCount = SharedFlags.GetFFlagDisableLegacyChatSimpleUnreadMessageCount

local FFlagHideChatButtonForChatDisabledUsers = game:DefineFastFlag("HideChatButtonForChatDisabledUsers", false)
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled

local SocialExperiments
local TenFootInterfaceExpChatExperimentation
if FFlagConsoleChatOnExpControls then
	SocialExperiments = require(CorePackages.Workspace.Packages.SocialExperiments)
	TenFootInterfaceExpChatExperimentation = SocialExperiments.TenFootInterfaceExpChatExperimentation
end

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

-- MappedSignal doesn't seem to fire in the event where the in-experience menu is closed, but does when it's opened, causing
-- the chat button to be hidden when the window is open. Using the signal directly fixes this issue
chatSelectorVisibilitySignal:connect(function(visible)
	if visible then
		chatChromeIntegration.availability:pinned()
	end
end)

local chatWindowToggled = ChatSelector.ChatWindowToggled
chatWindowToggled:connect(function(visible)
	if visible then
		chatChromeIntegration.availability:pinned()
	end
end)

local chatVisibilitySignal = MappedSignal.new(chatSelectorVisibilitySignal, function()
	return chatVisibility
end, function(visibility)
	-- TODO: On flag removal, remove visibility as a param
	local isVisible = if GetFFlagFixMappedSignalRaceCondition() then ChatSelector.GetVisibility() else visibility

	-- Is there a less imperative way to do this?
	if FFlagHideChatButtonForChatDisabledUsers and not isVisible and not localUserCanChat() then
		chatChromeIntegration.availability:unavailable()
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

local dismissCallback = function(menuWasOpen)
	if getFFlagAppChatCoreUIConflictFix() then
		if InExperienceAppChatModal:getVisible() then
			InExperienceAppChatModal.default:setVisible(false)
		end

		ChatSelector:SetVisible(true)
	else
		if menuWasOpen then
			if not chatVisibility then
				ChatSelector:ToggleVisibility()
			end
		else
			ChatSelector:ToggleVisibility()
		end
	end
	if
		FFlagConsoleChatOnExpControls
		and (FFlagChromeChatGamepadSupportFix or TenFootInterfaceExpChatExperimentation.getIsEnabled())
	then
		FocusSelectExpChat(chatChromeIntegration.id)
	end
end

chatChromeIntegration = ChromeService:register({
	id = "chat",
	label = "CoreScripts.TopBar.Chat",
	activated = function(self)
		if chatVisibility then
			if getFFlagAppChatCoreUIConflictFix() then
				ChatSelector:SetVisible(false)
			else
				ChatSelector:ToggleVisibility()
			end
		else
			if isInExperienceUIVREnabled and isSpatial() then
				ChatSelector:SetVisible(true)
			else
				ChromeIntegrationUtils.dismissRobloxMenuAndRun(function(menuWasOpen)
					dismissCallback(menuWasOpen)
				end)
			end
		end
	end,
	isActivated = function()
		return chatVisibilitySignal:get()
	end,
	selected = if FFlagConsoleChatOnExpControls
		then function(self)
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
		else nil,
	components = {
		Icon = function(props)
			if getFFlagExpChatGetLabelAndIconFromUtil() then
				local visualConfig = getExperienceChatVisualConfig()
				return CommonIcon(visualConfig.icon.off, visualConfig.icon.on, chatVisibilitySignal)
			else
				if
					GetFFlagEnableAppChatInExperience()
					and InExperienceAppChatExperimentation.default.variant.ShowInExperienceChatNewIcon
				then
					return CommonIcon("icons/menu/publicChatOff", "icons/menu/publicChatOn", chatVisibilitySignal)
				else
					return CommonIcon("icons/menu/chat_off", "icons/menu/chat_on", chatVisibilitySignal)
				end
			end
		end,
	},
})

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

ChatSelector.ChatActiveChanged:connect(function(visible: boolean)
	if visible then
		local canLocalUserChat = localUserCanChat()
		if not canLocalUserChat then
			chatChromeIntegration.availability:available()
		end
	end
end)

coroutine.wrap(function()
	local LocalPlayer = Players.LocalPlayer
	while not LocalPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		LocalPlayer = Players.LocalPlayer
	end

	local canChat = localUserCanChat()
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
end)()

if FFlagConsoleChatOnExpControls then
	-- APPEXP-2427: Remove once legacy chat is fully deprecated
	local function UnavailableNotOnTCSConsole()
		if not GuiService:IsTenFootInterface() then
			return
		end

		local chatIsAvailable = chatChromeIntegration.availability:get() ~= AvailabilitySignalState.Unavailable

		if
			FFlagChromeChatGamepadSupportFix and not TenFootInterfaceExpChatExperimentation.getIsEnabled()
			or TextChatService.ChatVersion ~= Enum.ChatVersion.TextChatService and chatIsAvailable
		then
			chatChromeIntegration.availability:unavailable()
		end
	end

	if game:IsLoaded() then
		UnavailableNotOnTCSConsole()
	else
		game.Loaded:Connect(function()
			UnavailableNotOnTCSConsole()
		end)
	end
end

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
