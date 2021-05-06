--!strict

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

export type Table = { [string]: any }
export type MessageDescriptor = {
	mid: string,
	validateParams: (Table) -> (boolean, string?)
}
export type FunctionDescriptor = {
	fid: string,
	validateParams: (any) -> (boolean, string?)
}

local HttpService = game:GetService("HttpService")
local MemStorageService = game:GetService("MemStorageService")

local MessageBus = {}
MessageBus.__index = MessageBus

function MessageBus.publish(desc: MessageDescriptor, params: Table): ()
	assert(desc.validateParams(params))
	MemStorageService:SetItem(desc.mid, MessageBus.serializeMessageParams(params))
end

function MessageBus.getLast(desc: MessageDescriptor): Table?
	if not MemStorageService:HasItem(desc.mid) then
		return nil
	end
	local message = MemStorageService:GetItem(desc.mid)
	local params = MessageBus.deserializeMessageParams(message)
	assert(desc.validateParams(params))
	return params
end

function MessageBus.getMessageId(domainName: string, messageName: string): string
	return domainName .. "." .. messageName
end

function MessageBus.deserializeMessageParams(params: Table): { [string]: any}
	return HttpService:JSONDecode(params)
end

function MessageBus.serializeMessageParams(params: Table): string
	return HttpService:JSONEncode(params)
end

function MessageBus.call(desc: FunctionDescriptor, params: any): any
	assert(desc.validateParams(params))
	return MemStorageService:Call(desc.fid, params)
end

local Subscriber = {}
Subscriber.__index = Subscriber

function Subscriber.new()
	local self = setmetatable({
		connections = {},
	}, Subscriber)
	return self
end

function Subscriber:getSubscriptionCount(): number
	local count = 0
	for _ in pairs(self.connections) do
		count = count + 1
	end
	return count
end

function Subscriber:subscribe(desc: MessageDescriptor, callback: (Table) -> (), sticky: boolean?)
	-- subscriptions are sticky by default
	sticky = sticky == nil and true or sticky
	local mid = desc.mid
	local existingConnection = self.connections[mid]
	if existingConnection ~= nil then
		self:unsubscribe(desc)
	end

	local bindCallback = function(message)
		-- Consume message
		MemStorageService:RemoveItem(mid)
		local params = MessageBus.deserializeMessageParams(message)
		assert(desc.validateParams(params))
		callback(params)
	end

	if sticky then
		self.connections[mid] = MemStorageService:BindAndFire(mid, bindCallback)
	else
		self.connections[mid] = MemStorageService:Bind(mid, bindCallback)
	end
	
end

function Subscriber:unsubscribe(desc: MessageDescriptor): ()
	local connection: any = self.connections[desc.mid]
	if connection == nil then
		error("unsubscribing from a message id not subscribed to: " .. desc.mid)
	end
	self.connections[desc.mid] = nil
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
