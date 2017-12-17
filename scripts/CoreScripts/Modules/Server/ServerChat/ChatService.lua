--	// FileName: ChatService.lua
--	// Written by: Xsitsu
--	// Description: Manages creating and destroying ChatChannels and Speakers.

local MAX_FILTER_RETRIES = 3
local FILTER_BACKOFF_INTERVALS = {50/1000, 100/1000, 200/1000}
local MAX_FILTER_DURATION = 60

--- Constants used to decide when to notify that the chat filter is having issues filtering messages.
local FILTER_NOTIFCATION_THRESHOLD = 3 --Number of notifcation failures before an error message is output.
local FILTER_NOTIFCATION_INTERVAL = 60 --Time between error messages.
local FILTER_THRESHOLD_TIME = 60 --If there has not been an issue in this many seconds, the count of issues resets.

local module = {}

local RunService = game:GetService("RunService")
local Chat = game:GetService("Chat")
local ReplicatedModules = Chat:WaitForChild("ClientChatModules")

local modulesFolder = script.Parent
local ReplicatedModules = Chat:WaitForChild("ClientChatModules")
local ChatSettings = require(ReplicatedModules:WaitForChild("ChatSettings"))

local errorTextColor = ChatSettings.ErrorMessageTextColor or Color3.fromRGB(245, 50, 50)
local errorExtraData = {ChatColor = errorTextColor}

--////////////////////////////// Include
--//////////////////////////////////////
local ChatConstants = require(ReplicatedModules:WaitForChild("ChatConstants"))

local ChatChannel = require(modulesFolder:WaitForChild("ChatChannel"))
local Speaker = require(modulesFolder:WaitForChild("Speaker"))
local Util = require(modulesFolder:WaitForChild("Util"))

local ChatLocalization = nil
pcall(function() ChatLocalization = require(game:GetService("Chat").ClientChatModules.ChatLocalization) end)
if ChatLocalization == nil then ChatLocalization = {} function ChatLocalization:Get(key,default) return default end end

--////////////////////////////// Methods
--//////////////////////////////////////
local methods = {}
methods.__index = methods

function methods:AddChannel(channelName, autoJoin)
	if (self.ChatChannels[channelName:lower()]) then
		error(string.format("Channel %q alrady exists.", channelName))
	end

	local function DefaultChannelCommands(fromSpeaker, message)
		if (message:lower() == "/leave") then
			local channel = self:GetChannel(channelName)
			local speaker = self:GetSpeaker(fromSpeaker)
			if (channel and speaker) then
				if (channel.Leavable) then
					speaker:LeaveChannel(channelName)
					speaker:SendSystemMessage(
						string.gsub(
							ChatLocalization:Get(
								"GameChat_ChatService_YouHaveLeftChannel",
								string.format("You have left channel '%s'", channelName)
							),
						"{RBX_NAME}",channelName),
						"System"
					)
				else
					speaker:SendSystemMessage(ChatLocalization:Get("GameChat_ChatService_CannotLeaveChannel","You cannot leave this channel."), channelName)
				end
			end

			return true
		end
		return false
	end


	local channel = ChatChannel.new(self, channelName)
	self.ChatChannels[channelName:lower()] = channel

	channel:RegisterProcessCommandsFunction("default_commands", DefaultChannelCommands, ChatConstants.HighPriority)

	local success, err = pcall(function() self.eChannelAdded:Fire(channelName) end)
	if not success and err then
		print("Error addding channel: " ..err)
	end

	if autoJoin ~= nil then
		channel.AutoJoin = autoJoin
		if autoJoin then
			for _, speaker in pairs(self.Speakers) do
				speaker:JoinChannel(channelName)
			end
		end
	end

	return channel
end

function methods:RemoveChannel(channelName)
	if (self.ChatChannels[channelName:lower()]) then
		local n = self.ChatChannels[channelName:lower()].Name

		self.ChatChannels[channelName:lower()]:InternalDestroy()
		self.ChatChannels[channelName:lower()] = nil

		local success, err = pcall(function() self.eChannelRemoved:Fire(n) end)
		if not success and err then
			print("Error removing channel: " ..err)
		end
	else
		warn(string.format("Channel %q does not exist.", channelName))
	end
end

function methods:GetChannel(channelName)
	return self.ChatChannels[channelName:lower()]
end


function methods:AddSpeaker(speakerName)
	if (self.Speakers[speakerName:lower()]) then
		error("Speaker \"" .. speakerName .. "\" already exists!")
	end

	local speaker = Speaker.new(self, speakerName)
	self.Speakers[speakerName:lower()] = speaker

	local success, err = pcall(function() self.eSpeakerAdded:Fire(speakerName) end)
	if not success and err then
		print("Error adding speaker: " ..err)
	end

	return speaker
end

function methods:InternalUnmuteSpeaker(speakerName)
	for channelName, channel in pairs(self.ChatChannels) do
		if channel:IsSpeakerMuted(speakerName) then
			channel:UnmuteSpeaker(speakerName)
		end
	end
end

function methods:RemoveSpeaker(speakerName)
	if (self.Speakers[speakerName:lower()]) then
		local n = self.Speakers[speakerName:lower()].Name
		self:InternalUnmuteSpeaker(n)

		self.Speakers[speakerName:lower()]:InternalDestroy()
		self.Speakers[speakerName:lower()] = nil

		local success, err = pcall(function() self.eSpeakerRemoved:Fire(n) end)
		if not success and err then
			print("Error removing speaker: " ..err)
		end

	else
		warn("Speaker \"" .. speakerName .. "\" does not exist!")
	end
end

function methods:GetSpeaker(speakerName)
	return self.Speakers[speakerName:lower()]
end

function methods:GetChannelList()
	local list = {}
	for i, channel in pairs(self.ChatChannels) do
		if (not channel.Private) then
			table.insert(list, channel.Name)
		end
	end
	return list
end

function methods:GetAutoJoinChannelList()
	local list = {}
	for i, channel in pairs(self.ChatChannels) do
		if channel.AutoJoin then
			table.insert(list, channel)
		end
	end
	return list
end

function methods:GetSpeakerList()
	local list = {}
	for i, speaker in pairs(self.Speakers) do
		table.insert(list, speaker.Name)
	end
	return list
end

function methods:SendGlobalSystemMessage(message)
	for i, speaker in pairs(self.Speakers) do
		speaker:SendSystemMessage(message, nil)
	end
end

function methods:RegisterFilterMessageFunction(funcId, func, priority)
	if self.FilterMessageFunctions:HasFunction(funcId) then
		error(string.format("FilterMessageFunction '%s' already exists", funcId))
	end
	self.FilterMessageFunctions:AddFunction(funcId, func, priority)
end

function methods:FilterMessageFunctionExists(funcId)
	return self.FilterMessageFunctions:HasFunction(funcId)
end

function methods:UnregisterFilterMessageFunction(funcId)
	if not self.FilterMessageFunctions:HasFunction(funcId) then
		error(string.format("FilterMessageFunction '%s' does not exists", funcId))
	end
	self.FilterMessageFunctions:RemoveFunction(funcId)
end

function methods:RegisterProcessCommandsFunction(funcId, func, priority)
	if self.ProcessCommandsFunctions:HasFunction(funcId) then
		error(string.format("ProcessCommandsFunction '%s' already exists", funcId))
	end
	self.ProcessCommandsFunctions:AddFunction(funcId, func, priority)
end

function methods:ProcessCommandsFunctionExists(funcId)
	return self.ProcessCommandsFunctions:HasFunction(funcId)
end

function methods:UnregisterProcessCommandsFunction(funcId)
	if not self.ProcessCommandsFunctions:HasFunction(funcId) then
		error(string.format("ProcessCommandsFunction '%s' does not exist", funcId))
	end
	self.ProcessCommandsFunctions:RemoveFunction(funcId)
end

local LastFilterNoficationTime = 0
local LastFilterIssueTime = 0
local FilterIssueCount = 0
function methods:InternalNotifyFilterIssue()
	if (tick() - LastFilterIssueTime) > FILTER_THRESHOLD_TIME then
		FilterIssueCount = 0
	end
	FilterIssueCount = FilterIssueCount + 1
	LastFilterIssueTime = tick()
	if FilterIssueCount >= FILTER_NOTIFCATION_THRESHOLD then
		if (tick() - LastFilterNoficationTime) > FILTER_NOTIFCATION_INTERVAL then
			LastFilterNoficationTime = tick()
			local systemChannel = self:GetChannel("System")
			if systemChannel then
				systemChannel:SendSystemMessage(
					ChatLocalization:Get(
						"GameChat_ChatService_ChatFilterIssues",
						"The chat filter is currently experiencing issues and messages may be slow to appear."
					), 
					errorExtraData
				)
			end
		end
	end
end

local StudioMessageFilteredCache = {}

--///////////////// Internal-Use Methods
--//////////////////////////////////////
--DO NOT REMOVE THIS. Chat must be filtered or your game will face
--moderation.
function methods:InternalApplyRobloxFilter(speakerName, message, toSpeakerName) --// USES FFLAG
	if (RunService:IsServer() and not RunService:IsStudio()) then
		local fromSpeaker = self:GetSpeaker(speakerName)
		local toSpeaker = toSpeakerName and self:GetSpeaker(toSpeakerName)

		if fromSpeaker == nil then
			return nil
		end

		local fromPlayerObj = fromSpeaker:GetPlayer()
		local toPlayerObj = toSpeaker and toSpeaker:GetPlayer()

		if fromPlayerObj == nil then
			return message
		end

		local filterStartTime = tick()
		local filterRetries = 0
		while true do
			local success, message = pcall(function()
				if toPlayerObj then
					return Chat:FilterStringAsync(message, fromPlayerObj, toPlayerObj)
				else
					return Chat:FilterStringForBroadcast(message, fromPlayerObj)
				end
			end)
			if success then
				return message
			else
				warn("Error filtering message:", message)
			end
			filterRetries = filterRetries + 1
			if filterRetries > MAX_FILTER_RETRIES or (tick() - filterStartTime) > MAX_FILTER_DURATION then
				self:InternalNotifyFilterIssue()
				return nil
			end
			local backoffInterval = FILTER_BACKOFF_INTERVALS[math.min(#FILTER_BACKOFF_INTERVALS, filterRetries)]
			-- backoffWait = backoffInterval +/- (0 -> backoffInterval)
			local backoffWait = backoffInterval + ((math.random()*2 - 1) * backoffInterval)
			wait(backoffWait)
		end
	else
		--// Simulate filtering latency.
		--// There is only latency the first time the message is filtered, all following calls will be instant.
		if not StudioMessageFilteredCache[message] then
			StudioMessageFilteredCache[message] = true
			wait(0.2)
		end
		return message
	end

	return nil
end

--// Return values: bool filterSuccess, bool resultIsFilterObject, variant result
function methods:InternalApplyRobloxFilterNewAPI(speakerName, message) --// USES FFLAG
	local alwaysRunFilter = false
	local runFilter = RunService:IsServer() and not RunService:IsStudio()
	if (alwaysRunFilter or runFilter) then
		local fromSpeaker = self:GetSpeaker(speakerName)
		if fromSpeaker == nil then
			return false, nil, nil
		end
		
		local fromPlayerObj = fromSpeaker:GetPlayer()
		if fromPlayerObj == nil then
			return true, false, message
		end

		local success, filterResult = pcall(function()
			local ts = game:GetService("TextService")
			local result = ts:FilterStringAsync(message, fromPlayerObj.UserId)
			return result
		end)
		if (success) then
			return true, true, filterResult
		else
			warn("Error filtering message:", message)
			self:InternalNotifyFilterIssue()
			return false, nil, nil
		end
	else
		--// Simulate filtering latency.
		wait(0.2)
		return true, false, message
	end

	return nil
end

function methods:InternalDoMessageFilter(speakerName, messageObj, channel)
	local filtersIterator = self.FilterMessageFunctions:GetIterator()

	for funcId, func, priority in filtersIterator do
		local success, errorMessage = pcall(function()
			func(speakerName, messageObj, channel)
		end)

		if not success then
			warn(string.format("DoMessageFilter Function '%s' failed for reason: %s", funcId, errorMessage))
		end
	end
end

function methods:InternalDoProcessCommands(speakerName, message, channel)
	local commandsIterator = self.ProcessCommandsFunctions:GetIterator()

	for funcId, func, priority in commandsIterator do
		local success, returnValue = pcall(function()
			local ret = func(speakerName, message, channel)
			if type(ret) ~= "boolean" then
				error("Process command functions must return a bool")
			end
			return ret
		end)

		if not success then
			warn(string.format("DoProcessCommands Function '%s' failed for reason: %s", funcId, returnValue))
		elseif returnValue then
			return true
		end
	end

	return false
end

function methods:InternalGetUniqueMessageId()
	local id = self.MessageIdCounter
	self.MessageIdCounter = id + 1
	return id
end

function methods:InternalAddSpeakerWithPlayerObject(speakerName, playerObj, fireSpeakerAdded)
	if (self.Speakers[speakerName:lower()]) then
		error("Speaker \"" .. speakerName .. "\" already exists!")
	end

	local speaker = Speaker.new(self, speakerName)
	speaker:InternalAssignPlayerObject(playerObj)
	self.Speakers[speakerName:lower()] = speaker

	if fireSpeakerAdded then
		local success, err = pcall(function() self.eSpeakerAdded:Fire(speakerName) end)
		if not success and err then
			print("Error adding speaker: " ..err)
		end
	end

	return speaker
end

function methods:InternalFireSpeakerAdded(speakerName)
	local success, err = pcall(function() self.eSpeakerAdded:Fire(speakerName) end)
	if not success and err then
		print("Error firing speaker added: " ..err)
	end
end

--///////////////////////// Constructors
--//////////////////////////////////////

function module.new()
	local obj = setmetatable({}, methods)

	obj.MessageIdCounter = 0

	obj.ChatChannels = {}
	obj.Speakers = {}

	obj.FilterMessageFunctions = Util:NewSortedFunctionContainer()
	obj.ProcessCommandsFunctions = Util:NewSortedFunctionContainer()

	obj.eChannelAdded = Instance.new("BindableEvent")
	obj.eChannelRemoved = Instance.new("BindableEvent")
	obj.eSpeakerAdded = Instance.new("BindableEvent")
	obj.eSpeakerRemoved = Instance.new("BindableEvent")

	obj.ChannelAdded = obj.eChannelAdded.Event
	obj.ChannelRemoved = obj.eChannelRemoved.Event
	obj.SpeakerAdded = obj.eSpeakerAdded.Event
	obj.SpeakerRemoved = obj.eSpeakerRemoved.Event

	obj.ChatServiceMajorVersion = 0
	obj.ChatServiceMinorVersion = 5

	return obj
end

return module.new()
