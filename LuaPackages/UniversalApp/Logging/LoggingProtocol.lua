local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local t = require(CorePackages.Packages.t)
local ArgCheck = require(CorePackages.ArgCheck)

type MessageBus = MessageBus.MessageBus
type Subscriber = MessageBus.Subscriber
type MessageDescriptor = MessageBus.MessageDescriptor
type Table = MessageBus.Table

local NAME = "Logging"
local loggedOnce = {}

local paramsValidator = t.strictInterface({
	eventName = t.string,
	timestamp = t.optional(t.number),
	metadata = t.optional(t.keys(t.string)),
})

local LoggingProtocol = {
	LOG_EVENT_WITH_TIMESTAMP_DESCRIPTOR = {
		fid = MessageBus.getMessageId(NAME, "logEventWithTimestamp"),
		validateParams = paramsValidator,
	},
	GET_TIMESTAMP_DESCRIPTOR = {
		fid = MessageBus.getMessageId(NAME, "getTimestamp"),
		validateParams = t.table,
	},
}

LoggingProtocol.__index = LoggingProtocol

export type LoggingProtocol = {
	LOG_EVENT_DESCRIPTOR: MessageDescriptor,

	new: (MessageBus?) -> LoggingProtocol,
	logEvent: (string, number?, Table?) -> (),
	logEventWithTimestamp: (string, number, Table?) -> (),
	getTimestamp: () -> number,

	messageBus: MessageBus,
}

function LoggingProtocol.new(messageBus): LoggingProtocol
	messageBus = messageBus or MessageBus
	local self = {
		messageBus = messageBus,
	}
	setmetatable(self, LoggingProtocol)
	return self
end

function LoggingProtocol:logEventWithTimestamp(eventName: string, timestamp: number, metadata: Table?): ()
	ArgCheck.isType(eventName, "string", "eventName")
	ArgCheck.isType(timestamp, "number", "timestamp")
	local params = {
		eventName = eventName,
		timestamp = timestamp,
		metadata = metadata,
	}
	self.messageBus.call(self.LOG_EVENT_WITH_TIMESTAMP_DESCRIPTOR, params)
end

function LoggingProtocol:logEvent(eventName: string, metadata: Table?): ()
	ArgCheck.isType(eventName, "string", "eventName")
	self:logEventWithTimestamp(eventName, 0, metadata)
end

function LoggingProtocol:logEventOnce(eventName: string, metadata: Table?): ()
	ArgCheck.isType(eventName, "string", "eventName")
	if loggedOnce[eventName] == nil then
		loggedOnce[eventName] = true
		self:logEvent(eventName, metadata)
	end
end

-- timestamp is ms
function LoggingProtocol:getTimestamp(): number
	return self.messageBus.call(self.GET_TIMESTAMP_DESCRIPTOR, {})
end

LoggingProtocol.default = LoggingProtocol.new()

return LoggingProtocol
