--!strict

--[[
MessageBus is a common, global, message-passing service, where any MessageBus.Subscriber instance can listen to any message sent.

The function subscribe() registers a listener callback for messages of a particular type determined by an id-string.
For example, to listen to messages of type "my-message-id", do this:

myMessageBusSubscriber:subscribe("my-message-type-id", function(params)
    -- ... respond to message...
end);

Use MessageBus.publish() to send a message of that same type.

For example: a different system can send a message of type "my-message-id" by doing this:

MessageBus.publish("my-message-id", params);

The call to MessageBus.publish() immediately calls the callback that myMessageBusSubscriber registered with subscribe().
]]--

export type Table = { [string]: any }

local HttpService = game:GetService("HttpService")
local MemStorageService = game:GetService("MemStorageService")

local MessageBus = {}
MessageBus.__index = MessageBus

function MessageBus.publish(mid: string, params: Table): ()
	MemStorageService:SetItem(mid, MessageBus.serializeMessageParams(params))
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

function Subscriber:subscribe(mid: string, callback: (Table) -> ())
	local existingConnection = self.connections[mid]
	if existingConnection ~= nil then
		self:unsubscribe(mid)
	end
	self.connections[mid] = MemStorageService:BindAndFire(mid, function(message)
		-- Consume message
		MemStorageService:RemoveItem(mid)
		local params = MessageBus.deserializeMessageParams(message)
		callback(params)
	end)
end

function Subscriber:unsubscribe(mid: string): ()
	local connection = self.connections[mid]
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
