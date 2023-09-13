local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local Chat = game:GetService("Chat")
local TextChatService = game:GetService("TextChatService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local List = require(Packages.llama).List

local Logger = require(ExperienceChat.Logger):new("ExpChat/" .. script.Name)

local function canUsersTalkToEachOther(id1: number, id2: number): boolean
	local success, canChat = pcall(function()
		return Chat:CanUsersChatAsync(id1, id2) and Chat:CanUsersChatAsync(id2, id1)
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
		local numTextSources = List.count(whisperChannel:GetChildren(), function(instance)
			return instance:IsA("TextSource")
		end)

		if numTextSources < 2 then
			whisperChannel:Destroy()
		end
	end)

	return whisperChannel
end

local function createInstance(instanceType: string, name: string, parent: Instance): Instance
	local instance = Instance.new(instanceType)
	instance.Name = name
	instance.Parent = parent
	return instance
end

local function createDispatchRemoteFunction()
	local folderName = "ExperienceChat"
	local folder = RobloxReplicatedStorage:FindFirstChild(folderName)
		or createInstance("Folder", folderName, RobloxReplicatedStorage)

	local eventName = "WhisperChat"
	local remote = folder:FindFirstChild(eventName) or createInstance("RemoteFunction", eventName, folder)

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
