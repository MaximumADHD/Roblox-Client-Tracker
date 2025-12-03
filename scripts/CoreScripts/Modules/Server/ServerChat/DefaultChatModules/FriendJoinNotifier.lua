--!nonstrict
--	// FileName: FriendJoinNotifer.lua
--	// Written by: TheGamer101
--	// Description: Module that adds a message to the chat whenever a friend joins the game.

local Chat = game:GetService("Chat")
local Players = game:GetService("Players")
local FriendService = game:GetService("FriendService")

local ReplicatedModules = Chat:WaitForChild("ClientChatModules")
local ChatSettings = require(ReplicatedModules:WaitForChild("ChatSettings"))
local ChatConstants = require(ReplicatedModules:WaitForChild("ChatConstants"))

local FFlagUserHandleFriendJoinNotifierOnClient = false
do
	local success, value = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserHandleFriendJoinNotifierOnClient")
	end)
	if success then
		FFlagUserHandleFriendJoinNotifierOnClient = value
	end
end

local ChatLocalization = nil
-- ROBLOX FIXME: Can we define ClientChatModules statically in the project config
pcall(function() ChatLocalization = require((game:GetService("Chat") :: any).ClientChatModules.ChatLocalization :: any) end)
if ChatLocalization == nil then ChatLocalization = {} end
if not ChatLocalization.FormatMessageToSend or not ChatLocalization.LocalizeFormattedMessage then
	function ChatLocalization:FormatMessageToSend(key,default) return default end
end

local FriendMessageTextColor = Color3.fromRGB(255, 255, 255)
local FriendMessageExtraData = {ChatColor = FriendMessageTextColor}

local function Run(ChatService)

	local function ShowFriendJoinNotification()
		if FFlagUserHandleFriendJoinNotifierOnClient == false then
			if ChatSettings.ShowFriendJoinNotification ~= nil then
				return ChatSettings.ShowFriendJoinNotification
			end
		end
		return false
	end

	local function SendFriendJoinNotification(player, joinedFriend)
		local speakerObj = ChatService:GetSpeaker(player.Name)
		if speakerObj then
			local joinedFriendName = joinedFriend.Name
			if ChatSettings.PlayerDisplayNamesEnabled then
				joinedFriendName = joinedFriend.DisplayName
			end

			local msg = ChatLocalization:FormatMessageToSend("GameChat_FriendChatNotifier_JoinMessage",
				string.format("Your friend %s has joined the game.", joinedFriendName),
				"RBX_NAME",
				joinedFriendName)
			speakerObj:SendSystemMessage(msg, "System", FriendMessageExtraData)
		end
	end

	local function TrySendFriendNotification(player, joinedPlayer)
		if player ~= joinedPlayer then
			coroutine.wrap(function()
				if player:IsFriendsWith(joinedPlayer.UserId) then
					SendFriendJoinNotification(player, joinedPlayer)
				end
			end)()
		end
	end

	if ShowFriendJoinNotification() then
		Players.PlayerAdded:connect(function(player)
			local possibleFriends = Players:GetPlayers()
			for i = 1, #possibleFriends do
				TrySendFriendNotification(possibleFriends[i], player)
			end
		end)
	end
end

return Run
