--!nonstrict
--	// FileName: ChatChannel.lua
--	// Written by: Xsitsu
--	// Description: A representation of one channel that speakers can chat in.

local userShouldMuteUnfilteredMessage = false
do
	local success, enabled = pcall(function() return UserSettings():IsUserFeatureEnabled("UserShouldMuteUnfilteredMessage") end)
	userShouldMuteUnfilteredMessage = success and enabled
end

local UserFlagRemoveMessageOnTextFilterFailures do
	local success, value = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserRemoveMessageOnTextFilterFailures")
	end)
	UserFlagRemoveMessageOnTextFilterFailures = success and value
end

local userIsChatTranslationEnabled = false
do
	local success, value = pcall(function()
		return UserSettings():IsUserFeatureEnabled("UserIsChatTranslationEnabled2")
	end)
	userIsChatTranslationEnabled = success and value
end

local module = {}

local modulesFolder = script.Parent
local Chat = game:GetService("Chat")
local RunService = game:GetService("RunService")
local replicatedModules = Chat:WaitForChild("ClientChatModules")
local ChatSettings = require(replicatedModules:WaitForChild("ChatSettings"))

--////////////////////////////// Include
--//////////////////////////////////////
local ChatConstants = require(replicatedModules:WaitForChild("ChatConstants"))
local Util = require(modulesFolder:WaitForChild("Util"))

local ChatLocalization = nil
-- ROBLOX FIXME: Can we define ClientChatModules statically in the project config
pcall(function() ChatLocalization = require((game:GetService("Chat") :: any).ClientChatModules.ChatLocalization :: any) end)
ChatLocalization = ChatLocalization or {}

if not ChatLocalization.FormatMessageToSend or not ChatLocalization.LocalizeFormattedMessage then
	function ChatLocalization:FormatMessageToSend(key,default) return default end
end

--////////////////////////////// Methods
--//////////////////////////////////////

local methods = {}
methods.__index = methods

function methods:SendSystemMessage(message, extraData)
	local messageObj = self:InternalCreateMessageObject(message, nil, true, extraData)

	local success, err = pcall(function() self.eMessagePosted:Fire(messageObj) end)
	if not success and err then
		print("Error posting message: " ..err)
	end

	self:InternalAddMessageToHistoryLog(messageObj)

	for i, speaker in pairs(self.Speakers) do
		speaker:InternalSendSystemMessage(messageObj, self.Name)
	end

	return messageObj
end

function methods:SendSystemMessageToSpeaker(message, speakerName, extraData)
	local speaker = self.Speakers[speakerName]
	if (speaker) then
		local messageObj = self:InternalCreateMessageObject(message, nil, true, extraData)
		speaker:InternalSendSystemMessage(messageObj, self.Name)
	elseif RunService:IsStudio() then
		warn(string.format("Speaker '%s' is not in channel '%s' and cannot be sent a system message", speakerName, self.Name))
	end
end

function methods:SendMessageObjToFilters(message, messageObj, fromSpeaker)
	local oldMessage = messageObj.Message
	messageObj.Message = message
	self:InternalDoMessageFilter(fromSpeaker.Name, messageObj, self.Name)
	self.ChatService:InternalDoMessageFilter(fromSpeaker.Name, messageObj, self.Name)
	local newMessage = messageObj.Message
	messageObj.Message = oldMessage
	return newMessage
end

function methods:CanCommunicateByUserId(userId1, userId2)
	if RunService:IsStudio() then
		return true
	end
	-- UserId is set as 0 for non player speakers.
	if userId1 == 0 or userId2 == 0 then
		return true
	end
	local success, canCommunicate = pcall(function()
		return Chat:CanUsersChatAsync(userId1, userId2)
	end)
	return success and canCommunicate
end

function methods:CanCommunicate(speakerObj1, speakerObj2)
	local player1 = speakerObj1:GetPlayer()
	local player2 = speakerObj2:GetPlayer()
	if player1 and player2 then
		return self:CanCommunicateByUserId(player1.UserId, player2.UserId)
	end
	return true
end

function methods:SendMessageToSpeaker(message, speakerName, fromSpeakerName, extraData)
	local speakerTo = self.Speakers[speakerName]
	local speakerFrom = self.ChatService:GetSpeaker(fromSpeakerName)
	if speakerTo and speakerFrom then
		local isMuted = speakerTo:IsSpeakerMuted(fromSpeakerName)
		if isMuted then
			return
		end

		if not self:CanCommunicate(speakerTo, speakerFrom) then
			return
		end

		-- We need to claim the message is filtered even if it not in this case for compatibility with legacy client side code.
		local isFiltered = speakerName == fromSpeakerName
		local messageObj = self:InternalCreateMessageObject(message, fromSpeakerName, isFiltered, extraData)
		message = self:SendMessageObjToFilters(message, messageObj, fromSpeakerName)
		speakerTo:InternalSendMessage(messageObj, self.Name)

		local textContext = self.Private and Enum.TextFilterContext.PrivateChat or Enum.TextFilterContext.PublicChat
		local filterSuccess, isFilterResult, filteredMessage = self.ChatService:InternalApplyRobloxFilterNewAPI(
			messageObj.FromSpeaker,
			message,
			textContext
		)
		if (filterSuccess) then
			messageObj.FilterResult = filteredMessage
			messageObj.IsFilterResult = isFilterResult
			messageObj.IsFiltered = true
			speakerTo:InternalSendFilteredMessageWithFilterResult(messageObj, self.Name)
		end
	elseif RunService:IsStudio() then
		warn(string.format("Speaker '%s' is not in channel '%s' and cannot be sent a message", speakerName, self.Name))
	end
end

function methods:KickSpeaker(speakerName, reason)
	local speaker = self.ChatService:GetSpeaker(speakerName)
	if (not speaker) then
		error("Speaker \"" .. speakerName .. "\" does not exist!")
	end

	local messageToSpeaker = ""
	local messageToChannel = ""
	local playerName = speaker:GetNameForDisplay()

	if (reason) then
		messageToSpeaker = string.format("You were kicked from '%s' for the following reason(s): %s", self.Name, reason)
		messageToChannel = string.format("%s was kicked for the following reason(s): %s", playerName, reason)
	else
		messageToSpeaker = string.format("You were kicked from '%s'", self.Name)
		messageToChannel = string.format("%s was kicked", playerName)
	end

	self:SendSystemMessageToSpeaker(messageToSpeaker, speakerName)
	speaker:LeaveChannel(self.Name)
	self:SendSystemMessage(messageToChannel)
end

function methods:MuteSpeaker(speakerName, reason, length)
	local speaker = self.ChatService:GetSpeaker(speakerName)
	if (not speaker) then
		error("Speaker \"" .. speakerName .. "\" does not exist!")
	end

	self.Mutes[speakerName:lower()] = (length == 0 or length == nil) and 0 or (os.time() + length)

	if (reason) then
		local playerName = speaker:GetNameForDisplay()

		self:SendSystemMessage(string.format("%s was muted for the following reason(s): %s", playerName, reason))
	end

	local success, err = pcall(function() self.eSpeakerMuted:Fire(speakerName, reason, length) end)
	if not success and err then
		print("Error mutting speaker: " ..err)
	end

	local spkr = self.ChatService:GetSpeaker(speakerName)
	if (spkr) then
		local success, err = pcall(function() spkr.eMuted:Fire(self.Name, reason, length) end)
		if not success and err then
			print("Error mutting speaker: " ..err)
		end
	end

end

function methods:UnmuteSpeaker(speakerName)
	local speaker = self.ChatService:GetSpeaker(speakerName)
	if (not speaker) then
		error("Speaker \"" .. speakerName .. "\" does not exist!")
	end

	self.Mutes[speakerName:lower()] = nil

	local success, err = pcall(function() self.eSpeakerUnmuted:Fire(speakerName) end)
	if not success and err then
		print("Error unmuting speaker: " ..err)
	end

	local spkr = self.ChatService:GetSpeaker(speakerName)
	if (spkr) then
		local success, err = pcall(function() spkr.eUnmuted:Fire(self.Name) end)
		if not success and err then
			print("Error unmuting speaker: " ..err)
		end
	end
end

function methods:IsSpeakerMuted(speakerName)
	return (self.Mutes[speakerName:lower()] ~= nil)
end

function methods:GetSpeakerList()
	local list = {}
	for i, speaker in pairs(self.Speakers) do
		table.insert(list, speaker.Name)
	end
	return list
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

local function ShallowCopy(table)
	local copy = {}
	for i, v in pairs(table) do
		copy[i] = v
	end
	return copy
end

function methods:GetHistoryLog()
	return ShallowCopy(self.ChatHistory)
end

function methods:GetHistoryLogForSpeaker(speaker)
	local userId = -1
	local player = speaker:GetPlayer()
	if player then
		userId = player.UserId
	end
	local chatlog = {}

	for i = 1, #self.ChatHistory do
		local logUserId = self.ChatHistory[i].SpeakerUserId
		if self:CanCommunicateByUserId(userId, logUserId) then
			local messageObj = ShallowCopy(self.ChatHistory[i])

			--// Since we're using the new filter API, we need to convert the stored filter result
			--// into an actual string message to send to players for their chat history.
			--// System messages aren't filtered the same way, so they just have a regular
			--// text value in the Message field.
			if (messageObj.MessageType == ChatConstants.MessageTypeDefault or messageObj.MessageType == ChatConstants.MessageTypeMeCommand) then
				local filterResult = messageObj.FilterResult
				if (messageObj.IsFilterResult) then
					if (player) then
						messageObj.Message = filterResult:GetChatForUserAsync(player.UserId)
					else
						messageObj.Message = filterResult:GetNonChatStringForBroadcastAsync()
					end
				else
					messageObj.Message = filterResult
				end
			end

			table.insert(chatlog, messageObj)
		end
	end
	return chatlog
end

--///////////////// Internal-Use Methods
--//////////////////////////////////////
function methods:InternalDestroy()
	for i, speaker in pairs(self.Speakers) do
		speaker:LeaveChannel(self.Name)
	end

	self.eDestroyed:Fire()

	self.eDestroyed:Destroy()
	self.eMessagePosted:Destroy()
	self.eSpeakerJoined:Destroy()
	self.eSpeakerLeft:Destroy()
	self.eSpeakerMuted:Destroy()
	self.eSpeakerUnmuted:Destroy()
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

function getLanguageCodeFromLocale(localeId)
	-- Get every match of not a "-"
	local codeMatch = string.gmatch(localeId, "[^-]+")()
	if codeMatch then
		return codeMatch
	else
		return "en"
	end
end

function methods:InternalPostMessage(fromSpeaker, message, extraData)
	if (self:InternalDoProcessCommands(fromSpeaker.Name, message, self.Name)) then return false end

	if (self.Mutes[fromSpeaker.Name:lower()] ~= nil) then
		local t = self.Mutes[fromSpeaker.Name:lower()]
		if (t > 0 and os.time() > t) then
			self:UnmuteSpeaker(fromSpeaker.Name)
		else
			self:SendSystemMessageToSpeaker(ChatLocalization:FormatMessageToSend("GameChat_ChatChannel_MutedInChannel","You are muted and cannot talk in this channel"), fromSpeaker.Name)
			return false
		end
	end

	local messageObj = self:InternalCreateMessageObject(message, fromSpeaker.Name, false, extraData)

	-- allow server to process the unfiltered message string
	messageObj.Message = message
	local processedMessage
	pcall(function()
		processedMessage = Chat:InvokeChatCallback(Enum.ChatCallbackType.OnServerReceivingMessage, messageObj)
	end)
	messageObj.Message = nil

	if processedMessage then

		-- developer server code's choice to mute the message
		if processedMessage.ShouldDeliver == false then
			return false
		end
		messageObj = processedMessage
	end

	message = self:SendMessageObjToFilters(message, messageObj, fromSpeaker)

	local sentToList = {}
	for i, speaker in pairs(self.Speakers) do
		local isMuted = speaker:IsSpeakerMuted(fromSpeaker.Name)
		if not isMuted and self:CanCommunicate(fromSpeaker, speaker) then
			table.insert(sentToList, speaker.Name)
			if speaker.Name == fromSpeaker.Name then
				-- Send unfiltered message to speaker who sent the message.
				local cMessageObj = ShallowCopy(messageObj)
				if userShouldMuteUnfilteredMessage then
					local messageLength = messageObj.MessageLengthUtf8 or messageObj.MessageLength
					cMessageObj.Message = string.rep("_", messageLength)
				else
					cMessageObj.Message = message
				end
				cMessageObj.IsFiltered = true
				-- We need to claim the message is filtered even if it not in this case for compatibility with legacy client side code.
				speaker:InternalSendMessage(cMessageObj, self.Name)
			else
				speaker:InternalSendMessage(messageObj, self.Name)
			end
		end
	end

	local success, err = pcall(function() self.eMessagePosted:Fire(messageObj) end)
	if not success and err then
		print("Error posting message: " ..err)
	end

	local textFilterContext = self.Private and Enum.TextFilterContext.PrivateChat or Enum.TextFilterContext.PublicChat
	local translations = nil
	if userIsChatTranslationEnabled then
		local listOfTargets = {}
		local targetsSet = {}
		for i, speaker in pairs(self.Speakers) do
			local speakerPlayer = speaker:GetPlayer()
			if speakerPlayer ~= nil and speakerPlayer.LocaleId ~= nil then
				local languageCode = getLanguageCodeFromLocale(speakerPlayer.LocaleId)
				targetsSet[languageCode] = true
			end
		end
		for k,v in targetsSet do
			table.insert(listOfTargets, k)
		end

		local filterSuccess, isFilterResult, translationFilterResults = self.ChatService:InternalApplyRobloxFilterAndTranslate(
			messageObj.FromSpeaker,
			listOfTargets,
			message,
			textFilterContext
		)
		if filterSuccess then
			if isFilterResult then
				messageObj.FilterResult = translationFilterResults.SourceText
			else
				messageObj.FilterResult = translationFilterResults
			end
			messageObj.IsFilterResult = isFilterResult
			if isFilterResult then
				translations = translationFilterResults
			end
		else
			if UserFlagRemoveMessageOnTextFilterFailures then
				messageObj.IsFilterResult = false
				messageObj.FilterResult = ""
				messageObj.MessageLength = 0
			else
				return false
			end
		end
	else
		local filterSuccess, isFilterResult, filteredMessage = self.ChatService:InternalApplyRobloxFilterNewAPI(
			messageObj.FromSpeaker,
			message,
			textFilterContext
		)
		if (filterSuccess) then
			messageObj.FilterResult = filteredMessage
			messageObj.IsFilterResult = isFilterResult
		else
			if UserFlagRemoveMessageOnTextFilterFailures then
				messageObj.IsFilterResult = false
				messageObj.FilterResult = ""
				messageObj.MessageLength = 0
			else
				return false
			end
		end
	end
	messageObj.IsFiltered = true
	self:InternalAddMessageToHistoryLog(messageObj)

	for _, speakerName in pairs(sentToList) do
		local speaker = self.Speakers[speakerName]
		if speaker then
			local shouldTranslate = userIsChatTranslationEnabled and translations
				and fromSpeaker:GetPlayer() ~= nil and speaker:GetPlayer() ~= nil
				and (fromSpeaker:GetPlayer().LocaleId ~= speaker:GetPlayer().LocaleId)
			-- If the sender is not the same as the receiver and chat translation is turned on, translate the message before sending
			if shouldTranslate then
				speaker:InternalSendFilteredMessageWithTranslatedFilterResult(messageObj, self.Name, translations)
			else
				speaker:InternalSendFilteredMessageWithFilterResult(messageObj, self.Name)
			end
		end
	end

	-- One more pass is needed to ensure that no speakers do not recieve the message.
	-- Otherwise a user could join while the message is being filtered who had not originally been sent the message.
	local speakersMissingMessage = {}
	for _, speaker in pairs(self.Speakers) do
		local isMuted = speaker:IsSpeakerMuted(fromSpeaker.Name)
		if not isMuted and self:CanCommunicate(fromSpeaker, speaker) then
			local wasSentMessage = false
			for _, sentSpeakerName in pairs(sentToList) do
				if speaker.Name == sentSpeakerName then
					wasSentMessage = true
					break
				end
			end
			if not wasSentMessage then
				table.insert(speakersMissingMessage, speaker.Name)
			end
		end
	end

	for _, speakerName in pairs(speakersMissingMessage) do
		local speaker = self.Speakers[speakerName]
		if speaker then
			speaker:InternalSendFilteredMessageWithFilterResult(messageObj, self.Name)
		end
	end

	return messageObj
end

function methods:InternalAddSpeaker(speaker)
	if (self.Speakers[speaker.Name]) then
		warn("Speaker \"" .. speaker.name .. "\" is already in the channel!")
		return
	end

	self.Speakers[speaker.Name] = speaker
	local success, err = pcall(function() self.eSpeakerJoined:Fire(speaker.Name) end)
	if not success and err then
		print("Error removing channel: " ..err)
	end
end

function methods:InternalRemoveSpeaker(speaker)
	if (not self.Speakers[speaker.Name]) then
		warn("Speaker \"" .. speaker.name .. "\" is not in the channel!")
		return
	end

	self.Speakers[speaker.Name] = nil
	local success, err = pcall(function() self.eSpeakerLeft:Fire(speaker.Name) end)
	if not success and err then
		print("Error removing speaker: " ..err)
	end
end

function methods:InternalRemoveExcessMessagesFromLog()
	local remove = table.remove
	while (#self.ChatHistory > self.MaxHistory) do
		remove(self.ChatHistory, 1)
	end
end

function methods:InternalAddMessageToHistoryLog(messageObj)
	table.insert(self.ChatHistory, messageObj)

	self:InternalRemoveExcessMessagesFromLog()
end

function methods:GetMessageType(message, fromSpeaker)
	if fromSpeaker == nil then
		return ChatConstants.MessageTypeSystem
	end
	return ChatConstants.MessageTypeDefault
end

function methods:InternalCreateMessageObject(message, fromSpeaker, isFiltered, extraData)
	local messageType = self:GetMessageType(message, fromSpeaker)

	local speakerUserId = -1
	local speakerDisplayName = nil
	local speaker = nil

	if fromSpeaker then
		speaker = self.ChatService:GetSpeaker(fromSpeaker)
		if speaker then
			local player = speaker:GetPlayer()
			if player then
				speakerUserId = player.UserId

				if ChatSettings.PlayerDisplayNamesEnabled then
					speakerDisplayName = speaker:GetNameForDisplay()
				end
			else
				speakerUserId = 0
			end
		end
	end

	local messageObj =
	{
		ID = self.ChatService:InternalGetUniqueMessageId(),
		FromSpeaker = fromSpeaker,
		SpeakerDisplayName = speakerDisplayName,
		SpeakerUserId = speakerUserId,
		OriginalChannel = self.Name,
		MessageLength = string.len(message),
		MessageLengthUtf8 = utf8.len(utf8.nfcnormalize(message)),
		MessageType = messageType,
		IsFiltered = isFiltered,
		Message = isFiltered and message or nil,
		--// These two get set by the new API. The comments are just here
		--// to remind readers that they will exist so it's not super
		--// confusing if they find them in the code but cannot find them
		--// here.
		--FilterResult = nil,
		--IsFilterResult = false,
		Time = os.time(),
		ExtraData = {},
	}

	if speaker then
		for k, v in pairs(speaker.ExtraData) do
			messageObj.ExtraData[k] = v
		end
	end

	if (extraData) then
		for k, v in pairs(extraData) do
			messageObj.ExtraData[k] = v
		end
	end

	return messageObj
end

function methods:SetChannelNameColor(color)
	self.ChannelNameColor = color
	for i, speaker in pairs(self.Speakers) do
		speaker:UpdateChannelNameColor(self.Name, color)
	end
end

function methods:GetWelcomeMessageForSpeaker(speaker)
	if self.GetWelcomeMessageFunction then
		local welcomeMessage = self.GetWelcomeMessageFunction(speaker)
		if welcomeMessage then
			return welcomeMessage
		end
	end
	return self.WelcomeMessage
end

function methods:RegisterGetWelcomeMessageFunction(func)
	if type(func) ~= "function" then
		error("RegisterGetWelcomeMessageFunction must be called with a function.")
	end
	self.GetWelcomeMessageFunction = func
end

function methods:UnRegisterGetWelcomeMessageFunction()
	self.GetWelcomeMessageFunction = nil
end

--///////////////////////// Constructors
--//////////////////////////////////////

function module.new(vChatService, name, welcomeMessage, channelNameColor)
	local obj = setmetatable({}, methods)

	obj.ChatService = vChatService

	obj.Name = name
	obj.WelcomeMessage = welcomeMessage or ""
	obj.GetWelcomeMessageFunction = nil
	obj.ChannelNameColor = channelNameColor

	obj.Joinable = true
	obj.Leavable = true
	obj.AutoJoin = false
	obj.Private = false

	obj.Speakers = {}
	obj.Mutes = {}

	obj.MaxHistory = 200
	obj.HistoryIndex = 0
	obj.ChatHistory = {}

	obj.FilterMessageFunctions = Util:NewSortedFunctionContainer()
	obj.ProcessCommandsFunctions = Util:NewSortedFunctionContainer()

	-- Make sure to destroy added binadable events in the InternalDestroy method.
	obj.eDestroyed = Instance.new("BindableEvent")
	obj.eMessagePosted = Instance.new("BindableEvent")
	obj.eSpeakerJoined = Instance.new("BindableEvent")
	obj.eSpeakerLeft = Instance.new("BindableEvent")
	obj.eSpeakerMuted = Instance.new("BindableEvent")
	obj.eSpeakerUnmuted = Instance.new("BindableEvent")

	obj.MessagePosted = obj.eMessagePosted.Event
	obj.SpeakerJoined = obj.eSpeakerJoined.Event
	obj.SpeakerLeft = obj.eSpeakerLeft.Event
	obj.SpeakerMuted = obj.eSpeakerMuted.Event
	obj.SpeakerUnmuted = obj.eSpeakerUnmuted.Event
	obj.Destroyed = obj.eDestroyed.Event

	return obj
end

return module
