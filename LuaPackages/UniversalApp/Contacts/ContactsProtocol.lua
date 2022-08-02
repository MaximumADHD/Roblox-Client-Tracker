local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local Promise = require(CorePackages.Promise)
local t = require(CorePackages.Packages.t)

local getFFlagLuaGetContactsAccess = require(script.Parent.Flags.getFFlagLuaGetContactsAccess)

local PROTOCOL_NAME = "ContactsProtocol"

local GET_CONTACTS_METHOD_NAME = "getContacts"
local SUPPORTS_CONTACTS_METHOD_NAME = "SupportsContacts"

local paramsValidator = t.strictInterface({
	firstName = t.optional(t.string),
	lastName = t.optional(t.string),
	phoneNumbers = t.optional(t.table),
})

local ContactsProtocol = {

	GET_CONTACTS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = GET_CONTACTS_METHOD_NAME,
		validateParams = t.table,
	},
	GET_CONTACTS_REQUEST_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = GET_CONTACTS_METHOD_NAME,
		validateParams = paramsValidator,
	},
	SUPPORTS_CONTACTS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SUPPORTS_CONTACTS_METHOD_NAME,
		validateParams = t.table,
	},
	SUPPORTS_CONTACTS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR = {
		protocolName = PROTOCOL_NAME,
		methodName = SUPPORTS_CONTACTS_METHOD_NAME,
		validateParams = t.table,
	},
}

ContactsProtocol.__index = ContactsProtocol

function ContactsProtocol.new(): ContactsProtocol
	local self = setmetatable({
		subscriber = MessageBus.Subscriber.new(),
	}, ContactsProtocol)
	return self
end

--[[
Gets the list of contacts from the users device

@return promise<table>: The batch of contacts that the users has
]]

function ContactsProtocol:getContacts(): Promise
	if not getFFlagLuaGetContactsAccess() then
		return Promise.resolve()
	end

	local promise = Promise.new(function(resolve, _)
		local desc = self.GET_CONTACTS_REQUEST_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR
		self.subscriber:subscribeProtocolMethodResponse(desc, function(params: Table)
			self.subscriber:unsubscribeToProtocolMethodResponse(desc)
			resolve(params)
		end)
	end)
	MessageBus.publishProtocolMethodRequest(self.GET_CONTACTS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR, {}, {})

	return promise
end

--[[
Check if contacts are supported by this device

@return promise<boolean>: returns true if contacts are
supported by the device and false if contacts are not supported
]]

function ContactsProtocol:supportsContacts(): Promise
	if not getFFlagLuaGetContactsAccess() then
		return Promise.resolve()
	end
	local promise = Promise.new(function(resolve, _)
		local desc = self.SUPPORTS_CONTACTS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR
		self.subscriber:subscribeProtocolMethodResponse(desc, function(params: Table)
			self.subscriber:unsubscribeToProtocolMethodResponse(desc)
			resolve(params.support)
		end)
	end)
	MessageBus.publishProtocolMethodRequest(self.SUPPORTS_CONTACTS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR, {}, {})

	return promise
end

ContactsProtocol.default = ContactsProtocol.new()

return ContactsProtocol
