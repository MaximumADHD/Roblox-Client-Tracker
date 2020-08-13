--[[
	Entry point for the in-game chat from CoreScripts.

	Currently, this only applies to the new version of BubbleChat, which is
	written entirely in Roact. The chat list and legacy BubbleChat are still
	PlayerScripts, and are both still accessible under
	Modules/Server/ClientChat.
]]

local Chat = game:GetService("Chat")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui", math.huge)

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local App = require(RobloxGui.Modules.InGameChat.BubbleChat.Components.App)
local chatReducer = require(RobloxGui.Modules.InGameChat.BubbleChat.Reducers.chatReducer)
local AddMessage = require(RobloxGui.Modules.InGameChat.BubbleChat.Actions.AddMessage)
local SetMessageText = require(RobloxGui.Modules.InGameChat.BubbleChat.Actions.SetMessageText)
local AddMessageFromEvent = require(RobloxGui.Modules.InGameChat.BubbleChat.Actions.AddMessageFromEvent)
local getPlayerFromPart = require(RobloxGui.Modules.InGameChat.BubbleChat.Helpers.getPlayerFromPart)
local Types = require(RobloxGui.Modules.InGameChat.BubbleChat.Types)

local MALFORNED_DATA_WARNING = "Malformed message data sent to chat event %q. If you have modified the chat system, " ..
	"check what you are firing to this event"

local chatStore = Rodux.Store.new(chatReducer)

local root = Roact.createElement(App, {
	store = chatStore
})
local handle = Roact.mount(root, CoreGui, "BubbleChat")

local function validateMessageData(eventName, messageData)
	local ok, message = Types.IMessageData(messageData)

	if not ok then
		warn(MALFORNED_DATA_WARNING:format(eventName))
		warn(message)
	end

	return ok
end

coroutine.resume(coroutine.create(function()
	-- TODO: Only connect to these events if Roact BubbleChat is enabled. We'll
	-- have the ability to check this once the API implementation is merged.
	-- When disabling Roact BubbleChat, we should also remove any connections.

	-- Using math.huge as the timeout means this will yield indefinitely without
	-- logging a warning. We don't want to enforce that the
	-- DefaultChatSystemChatEvents folder exists, but we do need to wait for it
	-- incase it does. So this ensures the user can fork chat without getting a
	-- warning they can't resolve.
	local chatEvents = ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents", math.huge)

	chatEvents:WaitForChild("OnNewMessage", math.huge).OnClientEvent:Connect(function(messageData)
		local ok = validateMessageData("OnNewMessage", messageData)

		if not ok then
			return
		end

		if messageData.FromSpeaker == Players.LocalPlayer.Name then
			chatStore:dispatch(AddMessageFromEvent(messageData))
		end
	end)

	chatEvents:WaitForChild("OnMessageDoneFiltering", math.huge).OnClientEvent:Connect(function(messageData)
		local ok = validateMessageData("OnMessageDoneFiltering", messageData)

		if not ok then
			return
		end

		if messageData.FromSpeaker == Players.LocalPlayer.Name then
			local id = tostring(messageData.ID)
			chatStore:dispatch(SetMessageText(id, messageData.Message))
		else
			chatStore:dispatch(AddMessageFromEvent(messageData))
		end
	end)
end))

local adorneeId = 0
local messageId = 0
local adorneeIdMap = {}

Chat.Chatted:Connect(function(partOrModel, message)
	local part
	if partOrModel:IsA("Model") then
		part = partOrModel.PrimaryPart
	else
		part = partOrModel
	end

	local player = getPlayerFromPart(part)

	local userId
	if player then
		userId = tostring(player.UserId)
	else
		local id = adorneeIdMap[partOrModel]
		if id then
			userId = id
		else
			adorneeId = adorneeId + 1
			userId = "adornee_" .. adorneeId
			adorneeIdMap[partOrModel] = userId
		end
	end

	messageId = messageId + 1

	local message = {
		id = "chatted_" .. messageId,
		userId = userId,
		name = partOrModel.Name,
		text = message,
		timestamp = os.time()
	}

	-- If we're dealing with a character that has no Player associated with it,
	-- supply the adornee to use for the BillboardGui.
	-- TODO: Set the adornee regardless: https://jira.rbx.com/browse/SOCIALAPP-138
	if not player then
		message.adornee = partOrModel
	end

	chatStore:dispatch(AddMessage(message))
end)
