local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local Chat = game:GetService("Chat")
local TextChatService = game:GetService("TextChatService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Logger = require(ExperienceChat.Logger):new("ExpChat/" .. script.Name)

local function canUsersTalkToEachOther(id1: number, id2: number): boolean
	local success, canChat = pcall(function()
		return Chat:CanUsersChatAsync(id1, id2)
	end)

	local canUsersChat = success and canChat
	Logger:debug("CanUsersChat: {}", tostring(canUsersChat))

	return canUsersChat
end

local function createWhisperChannel(id1: number, id2: number): TextChannel
	local whisperChannelName = string.format("RBXWhisper:%d_%d", id1 < id2 and id1 or id2, id1 > id2 and id1 or id2)

	local whisperChannel = Instance.new("TextChannel")
	whisperChannel.Name = whisperChannelName
	whisperChannel.Parent = TextChatService:FindFirstChild("TextChannels") or TextChatService

	whisperChannel:AddUserAsync(id1)
	whisperChannel:AddUserAsync(id2)

	-- Clean up the whisper channel if no one else is in it
	whisperChannel.ChildRemoved:Connect(function(_)
		for _, c in pairs(whisperChannel:GetChildren()) do
			if c:IsA("TextSource") then
				return
			end
		end
		whisperChannel:Destroy()
	end)

	return whisperChannel
end

local function createDispatchRemoteFunction()
	local folder: Instance? = RobloxReplicatedStorage:FindFirstChild("ExperienceChat")
	if not folder then
		folder = Instance.new("Folder")
		folder.Name = "ExperienceChat"
		folder.Parent = RobloxReplicatedStorage
	end

	local eventName = "WhisperChat"
	local remote: Instance? = folder:FindFirstChild(eventName)
	if not remote then
		remote = Instance.new("RemoteFunction")
		remote.Name = eventName
		remote.Parent = folder
	end

	if remote:IsA("RemoteFunction") then
		remote.OnServerInvoke = function(localPlayer: Player, otherPlayerId: string | number): TextChannel?
			Logger:trace("WhisperChat remote invoked with: {}", tostring(otherPlayerId))
			local id = tonumber(otherPlayerId)
			local sendingPlayerId = localPlayer.UserId
			if id then
				-- make sure they can talk to each other (CanUserChat, blocklist)
				if canUsersTalkToEachOther(sendingPlayerId, id) then
					-- create whisper chat
					Logger:trace("Creating whisper TextChannel")
					return createWhisperChannel(sendingPlayerId, id)
				end
			end

			return nil
		end
	end

	return remote
end

return createDispatchRemoteFunction
