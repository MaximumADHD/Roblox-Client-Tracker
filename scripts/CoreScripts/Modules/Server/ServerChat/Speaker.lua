--	// FileName: Speaker.lua
--	// Written by: Xsitsu
--	// Description: A representation of one entity that can chat in different ChatChannels.

local module = {}

local modulesFolder = script.Parent

--////////////////////////////// Methods
--//////////////////////////////////////
local function ShallowCopy(table)
	local copy = {}
	for i, v in pairs(table) do
		copy[i] = v
	end
	return copy
end

local methods = {}
methods.__index = methods

function methods:SayMessage(message, channelName, extraData)
	if (self.ChatService:InternalDoProcessCommands(self.Name, message, channelName)) then return end
	if (not channelName) then return end

	local channel = self.Channels[channelName:lower()]
	if (not channel) then
		error("Speaker is not in channel \"" .. channelName .. "\"")
	end

	local messageObj = channel:InternalPostMessage(self, message, extraData)
	if (messageObj) then
		local success, err = pcall(function() self.eSaidMessage:Fire(messageObj, channelName) end)
		if not success and err then
			print("Error saying message: " ..err)
		end
	end

	return messageObj
end

function methods:JoinChannel(channelName)
	if (self.Channels[channelName:lower()]) then
		warn("Speaker is already in channel \"" .. channelName .. "\"")
		return
	end

	local channel = self.ChatService:GetChannel(channelName)
	if (not channel) then
		error("Channel \"" .. channelName .. "\" does not exist!")
	end

	self.Channels[channelName:lower()] = channel
	channel:InternalAddSpeaker(self)
	local success, err = pcall(function()
		self.eChannelJoined:Fire(channel.Name, channel:GetWelcomeMessageForSpeaker(self))
	end)
	if not success and err then
		print("Error joining channel: " ..err)
	end
end

function methods:LeaveChannel(channelName)
	if (not self.Channels[channelName:lower()]) then
		warn("Speaker is not in channel \"" .. channelName .. "\"")
		return
	end

	local channel = self.Channels[channelName:lower()]

	self.Channels[channelName:lower()] = nil
	channel:InternalRemoveSpeaker(self)
	local success, err = pcall(function()
		self.eChannelLeft:Fire(channel.Name)
	end)
	if not success and err then
		print("Error leaving channel: " ..err)
	end
end

function methods:IsInChannel(channelName)
	return (self.Channels[channelName:lower()] ~= nil)
end

function methods:GetChannelList()
	local list = {}
	for i, channel in pairs(self.Channels) do
		table.insert(list, channel.Name)
	end
	return list
end

function methods:SendMessage(message, channelName, fromSpeaker, extraData)
	local channel = self.Channels[channelName:lower()]
	if (channel) then
		channel:SendMessageToSpeaker(message, self.Name, fromSpeaker, extraData)

	else
		warn(string.format("Speaker '%s' is not in channel '%s' and cannot receive a message in it.", self.Name, channelName))

	end
end

function methods:SendSystemMessage(message, channelName, extraData)
	local channel = self.Channels[channelName:lower()]
	if (channel) then
		channel:SendSystemMessageToSpeaker(message, self.Name, extraData)

	else
		warn(string.format("Speaker '%s' is not in channel '%s' and cannot receive a system message in it.", self.Name, channelName))

	end
end

function methods:GetPlayer()
	return self.PlayerObj
end

function methods:SetExtraData(key, value)
	self.ExtraData[key] = value
	self.eExtraDataUpdated:Fire(key, value)
end

function methods:GetExtraData(key)
	return self.ExtraData[key]
end

function methods:SetMainChannel(channelName)
	local success, err = pcall(function() self.eMainChannelSet:Fire(channelName) end)
	if not success and err then
		print("Error setting main channel: " ..err)
	end
end

--- Used to mute a speaker so that this speaker does not see their messages.
function methods:AddMutedSpeaker(speakerName)
	self.MutedSpeakers[speakerName:lower()] = true
end

function methods:RemoveMutedSpeaker(speakerName)
	self.MutedSpeakers[speakerName:lower()] = false
end

function methods:IsSpeakerMuted(speakerName)
	return self.MutedSpeakers[speakerName:lower()]
end

--///////////////// Internal-Use Methods
--//////////////////////////////////////
function methods:InternalDestroy()
	for i, channel in pairs(self.Channels) do
		channel:InternalRemoveSpeaker(self)
	end

	self.eDestroyed:Fire()

	self.eDestroyed:Destroy()
	self.eSaidMessage:Destroy()
	self.eReceivedMessage:Destroy()
	self.eReceivedUnfilteredMessage:Destroy()
	self.eMessageDoneFiltering:Destroy()
	self.eReceivedSystemMessage:Destroy()
	self.eChannelJoined:Destroy()
	self.eChannelLeft:Destroy()
	self.eMuted:Destroy()
	self.eUnmuted:Destroy()
	self.eExtraDataUpdated:Destroy()
	self.eMainChannelSet:Destroy()
	self.eChannelNameColorUpdated:Destroy()
end

function methods:InternalAssignPlayerObject(playerObj)
	self.PlayerObj = playerObj
end

function methods:InternalSendMessage(messageObj, channelName)
	local success, err = pcall(function()
		self.eReceivedUnfilteredMessage:Fire(messageObj, channelName)
	end)
	if not success and err then
		print("Error sending internal message: " ..err)
	end
end

function methods:InternalSendFilteredMessage(messageObj, channelName)
	local success, err = pcall(function()
		self.eReceivedMessage:Fire(messageObj, channelName)
		self.eMessageDoneFiltering:Fire(messageObj, channelName)
	end)
	if not success and err then
		print("Error sending internal filtered message: " ..err)
	end
end

--// This method is to be used with the new filter API. This method takes the 
--// TextFilterResult objects and converts them into the appropriate string
--// messages for each player.
function methods:InternalSendFilteredMessageWithFilterResult(inMessageObj, channelName)
	local messageObj = ShallowCopy(inMessageObj)

	local oldFilterResult = messageObj.FilterResult
	local player = self:GetPlayer()

	local msg = ""
	pcall(function()
		if (messageObj.IsFilterResult) then
			if (player) then
				msg = oldFilterResult:GetChatForUserAsync(player.UserId)
			else
				msg = oldFilterResult:GetNonChatStringForBroadcastAsync()
			end
		else
			msg = oldFilterResult
		end
	end)

	--// Messages of 0 length are the result of two users not being allowed
	--// to chat, or GetChatForUserAsync() failing. In both of these situations,
	--// messages with length of 0 should not be sent.
	if (#msg > 0) then
		messageObj.Message = msg
		messageObj.FilterResult = nil
		self:InternalSendFilteredMessage(messageObj, channelName)
	end
end

function methods:InternalSendSystemMessage(messageObj, channelName)
	local success, err = pcall(function()
		self.eReceivedSystemMessage:Fire(messageObj, channelName)
	end)
	if not success and err then
		print("Error sending internal system message: " ..err)
	end
end

function methods:UpdateChannelNameColor(channelName, channelNameColor)
	self.eChannelNameColorUpdated:Fire(channelName, channelNameColor)
end

--///////////////////////// Constructors
--//////////////////////////////////////

function module.new(vChatService, name)
	local obj = setmetatable({}, methods)

	obj.ChatService = vChatService

	obj.PlayerObj = nil

	obj.Name = name
	obj.ExtraData = {}

	obj.Channels = {}
	obj.MutedSpeakers = {}

	-- Make sure to destroy added binadable events in the InternalDestroy method.
	obj.eDestroyed = Instance.new("BindableEvent")
	obj.eSaidMessage = Instance.new("BindableEvent")
	obj.eReceivedMessage = Instance.new("BindableEvent")
	obj.eReceivedUnfilteredMessage = Instance.new("BindableEvent")
	obj.eMessageDoneFiltering = Instance.new("BindableEvent")
	obj.eReceivedSystemMessage = Instance.new("BindableEvent")
	obj.eChannelJoined = Instance.new("BindableEvent")
	obj.eChannelLeft = Instance.new("BindableEvent")
	obj.eMuted = Instance.new("BindableEvent")
	obj.eUnmuted = Instance.new("BindableEvent")
	obj.eExtraDataUpdated = Instance.new("BindableEvent")
	obj.eMainChannelSet = Instance.new("BindableEvent")
	obj.eChannelNameColorUpdated = Instance.new("BindableEvent")

	obj.Destroyed = obj.eDestroyed.Event
	obj.SaidMessage = obj.eSaidMessage.Event
	obj.ReceivedMessage = obj.eReceivedMessage.Event
	obj.ReceivedUnfilteredMessage = obj.eReceivedUnfilteredMessage.Event
	obj.MessageDoneFiltering = obj.eMessageDoneFiltering.Event
	obj.ReceivedSystemMessage = obj.eReceivedSystemMessage.Event
	obj.ChannelJoined = obj.eChannelJoined.Event
	obj.ChannelLeft = obj.eChannelLeft.Event
	obj.Muted = obj.eMuted.Event
	obj.Unmuted = obj.eUnmuted.Event
	obj.ExtraDataUpdated = obj.eExtraDataUpdated.Event
	obj.MainChannelSet = obj.eMainChannelSet.Event
	obj.ChannelNameColorUpdated = obj.eChannelNameColorUpdated.Event

	--- DEPRECATED:
	--- Mispelled version of ReceivedUnfilteredMessage, retained for compatibility with legacy versions.
	obj.RecievedUnfilteredMessage = obj.eReceivedUnfilteredMessage.Event

	return obj
end

return module
