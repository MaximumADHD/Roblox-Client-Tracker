local LogService = game:GetService("LogService")
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Actions = script.Parent.Parent.Parent.Actions
local ClientLogSetData = require(Actions.ClientLogSetData)
local ServerLogSetData = require(Actions.ServerLogSetData)
local ClientLogAppendMessage = require(Actions.ClientLogAppendMessage)
local ClientLogAppendFilteredMessage = require(Actions.ClientLogAppendFilteredMessage)
local ServerLogAppendMessage = require(Actions.ServerLogAppendMessage)
local ServerLogAppendFilteredMessage = require(Actions.ServerLogAppendFilteredMessage)

local EnumToMsgTypeName = require(script.Parent.Parent.Parent.Constants).EnumToMsgTypeName
local WARNING_TO_FILTER = {"ClassDescriptor failed to learn", "EventDescriptor failed to learn", "Type failed to learn"}

local LogData = Roact.Component:extend("LogData")

-- MOST if not all of this code is copied from the
-- Filter "ClassDescriptor failed to learn" errors
local function ignoreWarningMessageOnAdd(message)
	if message.Type ~= Enum.MessageType.MessageWarning.Value then
		return false
	end
	local found = false
	for _, filterString in ipairs(WARNING_TO_FILTER) do
		if string.find(message.Message, filterString) ~= nil then
			found = true
			break
		end
	end
	return found
end

local function numberWithZero(num)
	return (num < 10 and "0" or "") .. num
end

local function ConvertTimeStamp(timeStamp)
	local localTime = timeStamp - os.time() + math.floor(tick())
	local dayTime = localTime % 86400

	local hour = math.floor(dayTime / 3600)

	dayTime = dayTime - (hour * 3600)
	local minute = math.floor(dayTime / 60)

	dayTime = dayTime - (minute * 60)

	local h = numberWithZero(hour)
	local m = numberWithZero(minute)
	local s = numberWithZero(dayTime)

	return string.format("%s:%s:%s", h, m, s)
end


-- if a message if filtered that means we need to put it into the filtered messages
-- this is defined as the messages that we are searching for when the search
-- feature is being used
local function isMessageFiltered(message, filterTypes, filterTerm, validFilters)
	-- if any types are flagged on, then we need to check against it
	if #filterTerm == 0 and not validFilters then
		return false
	end

	-- check filter type
	if validFilters then
		if not filterTypes[EnumToMsgTypeName[message.Type]] then
			return false
		end
	end

	-- check filter term
	if #filterTerm > 0 then
		if string.find(message.Message:lower(), filterTerm:lower()) == nil then
			return false
		end
	end

	return true
end

local function FilterMessages(messages, filterTypes, filterTerm)
	local filteredMessages = {}
	local validFilters = false
	for _,filterActive in pairs(filterTypes) do
		validFilters = validFilters or filterActive
	end

	if #filterTerm == 0 and not validFilters then
		return {}
	end

	-- filter all messages existing messages
	for i,msg in pairs(messages) do
		if isMessageFiltered(msg, filterTypes, filterTerm, validFilters) then
			filteredMessages[#filteredMessages + 1] = messages[i]
		end
	end

	if #filteredMessages == 0 then
		if #filterTerm > 0 then
			filteredMessages[1] = {
				Message = string.format ("\"%s\" was not found", filterTerm);
				Time = "";
				Type = 0;
			}
		else
			filteredMessages[1] = {
				Message = string.format ("No Messages were found");
				Time = "";
				Type = 0;
			}
		end
	end
	return filteredMessages
end

local function initClientLog()
	local clientMessages = {}
	if #clientMessages == 0 then
		local history = LogService:GetLogHistory()
		for _, msg in ipairs(history) do
			local message = {
				Message = msg.message or "[DevConsole Error 1]";
				Time = ConvertTimeStamp(msg.timestamp);
				Type = msg.messageType.Value;
			}
			if not ignoreWarningMessageOnAdd(message) then
				clientMessages[#clientMessages + 1] = message
			end
		end
	end
	return clientMessages
end

--[[ Message Format

	local message = {
		Message = text,
		Time = time,
		Type = messageType.Value
	}
--]]
function LogData:didMount()
	local initialClientLog = initClientLog()
	self.props.dispatchClientLogSetData(initialClientLog, {})

	self.clientConnection = LogService.MessageOut:connect(function(text, messageType)
		local message = {
			Message = text or "[DevConsole Error 2]",
			Time = ConvertTimeStamp(os.time()),
			Type = messageType.Value,
		}

		if not ignoreWarningMessageOnAdd(message) then
			if isMessageFiltered(message, self.props.clientTypeFilters, self.props.clientFilterTerm) then
				self.props.dispatchClientLogAppendFilteredMessage(message)
			else
				self.props.dispatchClientLogAppendMessage(message)
			end
		end
	end)

	-- need to block server log permissions if not accessible TODO
	self.serverConnection = LogService.ServerMessageOut:connect(function(text, messageType, timestamp)
		local message = {
			Message = text or "[DevConsole Error 3]";
			Time = ConvertTimeStamp(timestamp);
			Type = messageType.Value;
		}

		if not ignoreWarningMessageOnAdd(message) then
			if isMessageFiltered(message, self.props.clientTypeFilters, self.props.clientFilterTerm) then
				self.props.dispatchServerLogAppendFilteredMessage(message)
			else
				self.props.dispatchServerLogAppendMessage(message)
			end
		end
	end)
	LogService:RequestServerOutput()

end

function LogData:willUnmount()
	self.clientConnection:Disconnect()
	self.serverConnection:Disconnect()
	self.clientConnection = nil
	self.serverConnection = nil
end

function LogData:shouldUpdate(prevProps, prevState)
	if prevProps.clientTypeFilters ~= self.props.clientTypeFilters or
		prevProps.clientFilterTerm ~= self.props.clientFilterTerm or
		prevProps.serverTypeFilters ~= self.props.serverTypeFilters or
		prevProps.serverFilterTerm ~= self.props.serverFilterTerm then
		return true
	end
	return false
end

function LogData:render()
	return nil
end

function LogData:didUpdate(prevProps, prevState)
	if prevProps.clientTypeFilters ~= self.props.clientTypeFilters or
		prevProps.clientFilterTerm ~= self.props.clientFilterTerm then

		local newFilteredMessages = FilterMessages(self.props.clientData,
			self.props.clientTypeFilters, self.props.clientFilterTerm)
		self.props.dispatchClientLogSetData(nil, newFilteredMessages)
	end

	if prevProps.serverTypeFilters ~= self.props.serverTypeFilters or
		prevProps.serverFilterTerm ~= self.props.serverFilterTerm then

		local newFilteredMessages = FilterMessages(self.props.serverData,
			self.props.serverTypeFilters, self.props.serverFilterTerm)
		self.props.dispatchServerLogSetData(nil, newFilteredMessages)
	end
end

local function mapStateToProps(state, props)
	return {
		clientData = state.LogData.clientData,
		clientDataFiltered = state.LogData.clientDataFiltered,
		clientTypeFilters = state.LogData.clientTypeFilters,
		clientFilterTerm = state.LogData.clientSearchTerm,

		serverData = state.LogData.serverData,
		serverDataFiltered = state.LogData.serverDataFiltered,
		serverTypeFilters = state.LogData.serverTypeFilters,
		serverFilterTerm = state.LogData.serverSearchTerm,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchClientLogSetData = function(messages, filteredMessages)
			dispatch(ClientLogSetData(messages, filteredMessages))
		end,
		dispatchServerLogSetData = function(messages, filteredMessages)
			dispatch(ServerLogSetData(messages, filteredMessages))
		end,
		dispatchClientLogAppendMessage = function(message)
			dispatch(ClientLogAppendMessage(message))
		end,
		dispatchClientLogAppendFilteredMessage = function(message)
			dispatch(ClientLogAppendFilteredMessage(message))
		end,
		dispatchServerLogAppendMessage = function(message)
			dispatch(ServerLogAppendMessage(message))
		end,
		dispatchServerLogAppendFilteredMessage = function(message)
			dispatch(ServerLogAppendFilteredMessage(message))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(LogData)