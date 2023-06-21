local CoreGui = game:GetService("CoreGui")
local TextChatService = game:GetService("TextChatService")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Chat = game:GetService("Chat")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local ChromeService = require(script.Parent.Parent.Service)
local CommonIcon = require(script.Parent.CommonIcon)
local ChatSelector = require(RobloxGui.Modules.ChatSelector)

local unreadMessages = 0

local chatChromeIntegration = ChromeService:register({
	id = "chat",
	label = "Text Chat",
	activated = function(self)
		ChatSelector:ToggleVisibility()
		if ChatSelector:GetVisibility() then
			if unreadMessages then
				unreadMessages = 0
				self.notification:clear()
			end
		end
	end,
	components = {
		Icon = function(props)
			return CommonIcon("icons/menu/chat_off")
		end,
	},
})

chatChromeIntegration.notification:fireCount(unreadMessages)

TextChatService.MessageReceived:Connect(function()
	unreadMessages = unreadMessages + 1
	chatChromeIntegration.notification:fireCount(unreadMessages)
end)

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

	if canChat then
		chatChromeIntegration.availability:available()
	end
end)()

return chatChromeIntegration
