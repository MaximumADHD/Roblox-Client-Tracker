local CoreGui = game:GetService("CoreGui")
local TextChatService = game:GetService("TextChatService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Chat = game:GetService("Chat")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local ChromeService = require(script.Parent.Parent.Service)
local ChromeUtils = require(script.Parent.Parent.Service.ChromeUtils)
local ViewportUtil = require(script.Parent.Parent.Service.ViewportUtil)
local MappedSignal = ChromeUtils.MappedSignal
local CommonIcon = require(script.Parent.CommonIcon)
local GameSettings = UserSettings().GameSettings
local GuiService = game:GetService("GuiService")

local ChatSelector = require(RobloxGui.Modules.ChatSelector)
local EnabledPinnedChat = require(script.Parent.Parent.Flags.GetFFlagEnableChromePinnedChat)()
local GetFFlagNewUnibarIA = require(script.Parent.Parent.Flags.GetFFlagNewUnibarIA)

local unreadMessages = 0
-- note: do not rely on ChatSelector:GetVisibility after startup; it's state is incorrect if user opens via keyboard shortcut
local chatVisibility: boolean = ChatSelector:GetVisibility()
local chatChromeIntegration

local chatVisibilitySignal = MappedSignal.new(ChatSelector.VisibilityStateChanged, function()
	return chatVisibility
end, function(visibility)
	if not GuiService.MenuIsOpen then
		-- chat is inhibited (visibility = false) during menu open; not user intent; don't save
		GameSettings.ChatVisible = visibility :: boolean
	end

	chatVisibility = visibility :: boolean
	if visibility and unreadMessages and chatChromeIntegration.notification then
		unreadMessages = 0
		chatChromeIntegration.notification:clear()
	end
end)

chatChromeIntegration = ChromeService:register({
	id = "chat",
	label = "CoreScripts.TopBar.Chat",
	activated = function(self)
		if chatVisibility then
			ChatSelector:ToggleVisibility()
		else
			ChromeUtils.dismissRobloxMenuAndRun(function(menuWasOpen)
				if menuWasOpen then
					if not chatVisibility then
						ChatSelector:ToggleVisibility()
					end
				else
					ChatSelector:ToggleVisibility()
				end
			end)
		end
	end,
	components = {
		Icon = function(props)
			return CommonIcon("icons/menu/chat_off", "icons/menu/chat_on", chatVisibilitySignal)
		end,
	},
})

chatChromeIntegration.notification:fireCount(unreadMessages)
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

local viewportConn: any? = nil
coroutine.wrap(function()
	local LocalPlayer = Players.LocalPlayer
	while not LocalPlayer do
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		LocalPlayer = Players.LocalPlayer
	end

	local canChat = true
	if not RunService:IsStudio() then
		local success, localUserCanChat = pcall(function()
			return Chat:CanUserChatAsync(LocalPlayer and LocalPlayer.UserId or 0)
		end)
		canChat = success and localUserCanChat
	end

	if canChat and chatChromeIntegration.availability then
		ChromeUtils.setCoreGuiAvailability(chatChromeIntegration, Enum.CoreGuiType.Chat, function(enabled)
			if viewportConn and not GetFFlagNewUnibarIA then
				viewportConn:disconnect()
				viewportConn = nil
			end
			if enabled then
				if GetFFlagNewUnibarIA then
					if EnabledPinnedChat then
						chatChromeIntegration.availability:pinned()
					else
						chatChromeIntegration.availability:available()
					end
				else
					viewportConn = ViewportUtil.viewport:connect(function(viewportInfo)
						if EnabledPinnedChat and not viewportInfo.tinyPortrait then
							chatChromeIntegration.availability:pinned()
						else
							chatChromeIntegration.availability:available()
						end
					end, true)
				end
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
