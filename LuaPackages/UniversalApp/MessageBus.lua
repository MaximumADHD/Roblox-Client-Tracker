--[[
MessageBus is a common, global, message-passing service, where any MessageBus.Subscriber instance can listen to any message sent.

The function subscribe() registers a listener callback for messages of a particular type determined by an id-string and a parameter validation function.
For example, to listen to messages of type "my-message-id", do this:

myMessageBusSubscriber:subscribe({ "my-message-id", validateParams, }, function(params)
	-- ... respond to message...
end);

Use MessageBus.publish() to send a message of that same type.

For example: a different system can send a message of type "my-message-id" by doing this:

MessageBus.publish({ "my-message-id", validateParams, }, params);

The call to MessageBus.publish() immediately calls the callback that myMessageBusSubscriber registered with subscribe().
]]--

local MessageBusService = game:GetService("MessageBusService")

local Types = require(script.Parent.MessageBusTypes)

export type Table = Types.Table
export type Array<T> = Types.Array<T>
export type Promise<T> = Types.Promise<T>
export type MessageDescriptor = Types.MessageDescriptor
export type ProtocolMethodDescriptor = Types.ProtocolMethodDescriptor
export type FunctionDescriptor = Types.FunctionDescriptor
export type MessageBus = Types.MessageBus
export type Subscriber = Types.Subscriber

local LuaAppFixMessageBusServiceCase = game:DefineFastFlag("LuaAppFixMessageBusServiceCase", false)

local MessageBus = {}
MessageBus.__index = MessageBus

function MessageBus.publish(desc: MessageDescriptor, params: Table): ()
	assert(desc.validateParams(params))
	MessageBusService:Publish(desc.mid, params)
end

function MessageBus.publishProtocolMethodRequest(desc: ProtocolMethodDescriptor, params: Table, customTelemetryData: Table): ()
	assert(desc.validateParams(params))
	MessageBusService:PublishProtocolMethodRequest(desc.protocolName, desc.methodName, params, customTelemetryData)
end

function MessageBus.publishProtocolMethodResponse(desc: ProtocolMethodDescriptor, params: Table, responseCode: number, customTelemetryData: Table): ()
	assert(desc.validateParams(params))
	if LuaAppFixMessageBusServiceCase then
		MessageBusService:PublishProtocolMethodResponse(desc.protocolName, desc.methodName, params, responseCode, customTelemetryData)
	else
		(MessageBusService :: any):publishProtocolMethodResponse(desc.protocolName, desc.methodName, params, responseCode, customTelemetryData)
	end
end

function MessageBus.getLast(desc: MessageDescriptor): Table?
	local params
	if LuaAppFixMessageBusServiceCase then
		params = MessageBusService:GetLast(desc.mid)
	else
		params = (MessageBusService :: any):getLast(desc.mid)
	end
	if params == nil then
		return nil
	end
	assert(desc.validateParams(params))
	return params
end

function MessageBus.getMessageId(domainName: string, messageName: string): string
	return MessageBusService:GetMessageId(domainName, messageName)

end

function MessageBus.getProtocolMethodRequestMessageId(protocolName: string, methodName: string): string
	return MessageBusService:GetProtocolMethodRequestMessageId(protocolName, methodName)
end

function MessageBus.getProtocolMethodResponseMessageId(protocolName: string, methodName: string): string
	return MessageBusService:GetProtocolMethodResponseMessageId(protocolName, methodName)
end

function MessageBus.call(desc: FunctionDescriptor, params: any): any
	assert(desc.validateParams(params))
	return MessageBusService:Call(desc.fid, params)

end

local Subscriber = {}
Subscriber.__index = Subscriber

function Subscriber.new(): Subscriber
	local self = setmetatable({
		connections = {},
	}, Subscriber)
	return (self :: any) :: Subscriber
end

function Subscriber:getSubscriptionCount(): number
	local count = 0
	for _ in pairs(self.connections) do
		count = count + 1
	end
	return count
end

function Subscriber:subscribe(desc: MessageDescriptor, callback: (Table) -> (), sticky: boolean?, once: boolean?)
	-- subscriptions are sticky by default
	local sticky = sticky == nil or sticky
	local once = once ~= nil and once
	local mid = desc.mid
	local existingConnection = self.connections[mid]
	if existingConnection ~= nil then
		self:unsubscribe(desc)
	end
	local conn = MessageBusService:Subscribe(mid, callback, once, sticky)
	self.connections[mid] = conn
	
end

function Subscriber:subscribeProtocolMethodRequest(desc: ProtocolMethodDescriptor, callback: (Table) -> (), sticky: boolean?, once: boolean?)
	-- subscriptions are sticky by default
	local sticky = sticky == nil or sticky
	local once = once ~= nil and once
	local protocolName = desc.protocolName
	local methodName = desc.methodName
	local requestMid = MessageBus.getProtocolMethodRequestMessageId(protocolName, methodName) 
	local existingConnection = self.connections[requestMid]
	if existingConnection ~= nil then
		self:unsubscribe(requestMid)
	end
	local conn = MessageBusService:SubscribeToProtocolMethodRequest(protocolName, methodName, callback, once, sticky)
	self.connections[requestMid] = conn
end

function Subscriber:subscribeProtocolMethodResponse(desc: ProtocolMethodDescriptor, callback: (Table) -> (), sticky: boolean?, once: boolean?)
	-- subscriptions are sticky by default
	local sticky = sticky == nil or sticky
	local once = once ~= nil and once
	local protocolName = desc.protocolName
	local methodName = desc.methodName
	local responseMid = MessageBus.getProtocolMethodResponseMessageId(protocolName, methodName) 
	local existingConnection = self.connections[responseMid]
	if existingConnection ~= nil then
		self:unsubscribe(responseMid)
	end
	local conn = MessageBusService:SubscribeToProtocolMethodResponse(protocolName, methodName, callback, once, sticky)
	self.connections[responseMid] = conn
end

function Subscriber:unsubscribeToProtocolMethodRequest(desc: ProtocolMethodDescriptor): ()
	self:unsubscribeWithMsgId(MessageBusService:GetProtocolMethodRequestMessageId(desc.protocolName, desc.methodName)) 
end

function Subscriber:unsubscribeToProtocolMethodResponse(desc: ProtocolMethodDescriptor): ()
	self:unsubscribeWithMsgId(MessageBusService:GetProtocolMethodResponseMessageId(desc.protocolName, desc.methodName))
end

function Subscriber:unsubscribe(desc: MessageDescriptor): ()
	self:unsubscribeWithMsgId(desc.mid)
end

function Subscriber:unsubscribeWithMsgId(mid: string): ()
	local connection: any = self.connections[mid]
	if connection == nil then
		error("unsubscribing from a message id not subscribed to: " .. mid)
	end
	self.connections[mid] = nil
	connection:Disconnect()
end

function Subscriber:unsubscribeFromAllMessages(): ()
	for mid, connection in pairs(self.connections) do
		self.connections[mid] = nil
		connection:Disconnect()
	end
end

MessageBus.Subscriber = Subscriber

return MessageBus
