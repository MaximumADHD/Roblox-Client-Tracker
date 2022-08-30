local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local Promise = require(CorePackages.Promise)
local t = require(CorePackages.Packages.t)

local getFFlagLuaGetContactsAccess = require(script.Parent.Flags.getFFlagLuaGetContactsAccess)
game:DefineFastFlag("UpdateContactParams", false)
local FFlagUpdateContactParams = game:GetFastFlag("UpdateContactParams")

local Types = require(script.Parent.ContactsProtocolTypes)

type Promise<T> = MessageBus.Promise<T>

export type ContactsProtocol = Types.ContactsProtocol
export type GetContactsResponse = Types.GetContactsResponse

export type ContactsProtocolModule = ContactsProtocol & {
	new: () -> ContactsProtocol,
	default: ContactsProtocol,
}

local PROTOCOL_NAME = "ContactsProtocol"

local GET_CONTACTS_METHOD_NAME = "getContacts"
local SUPPORTS_CONTACTS_METHOD_NAME = "SupportsContacts"

local paramsValidator = t.strictInterface({
	firstName = t.optional(t.string),
	lastName = t.optional(t.string),
	phoneNumbers = t.optional(t.table),
})

local ContactsProtocol: ContactsProtocolModule = {
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
} :: ContactsProtocolModule;
(ContactsProtocol :: any).__index = ContactsProtocol

function ContactsProtocol.new(): ContactsProtocol
	local self = setmetatable({
		subscriber = MessageBus.Subscriber.new(),
	}, ContactsProtocol)
	return (self :: any) :: ContactsProtocol
end

--[[
Gets the list of contacts from the users device

@return promise<table>: The batch of contacts that the users has
]]

function ContactsProtocol:getContacts(): Promise<GetContactsResponse?>
	if not getFFlagLuaGetContactsAccess() then
		return Promise.resolve()
	end

	local promise = Promise.new(function(resolve, _)
		local desc = self.GET_CONTACTS_REQUEST_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR
		self.subscriber:subscribeProtocolMethodResponse(desc, function(params: GetContactsResponse)
			self.subscriber:unsubscribeToProtocolMethodResponse(desc)
			resolve(params)
		end)
	end)

	if FFlagUpdateContactParams then
		-- TODO FSYS-61: Investigate why {} turns into [] on Android
		MessageBus.publishProtocolMethodRequest(
			self.GET_CONTACTS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
			-- need to pass in a dummy variable otherwise Android will not work
			-- because it converts `{}` into `[]` which fails inside of MessageBus.java
			{ includeVariable = false },
			{}
		)
	else
		MessageBus.publishProtocolMethodRequest(self.GET_CONTACTS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR, {}, {})
	end

	return promise
end

--[[
Check if contacts are supported by this device

@return promise<boolean>: returns true if contacts are
supported by the device and false if contacts are not supported
]]

function ContactsProtocol:supportsContacts(): Promise<boolean?>
	if not getFFlagLuaGetContactsAccess() then
		return Promise.resolve()
	end
	local promise = Promise.new(function(resolve, _)
		local desc = self.SUPPORTS_CONTACTS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR
		self.subscriber:subscribeProtocolMethodResponse(desc, function(params: { support: boolean })
			self.subscriber:unsubscribeToProtocolMethodResponse(desc)
			resolve(params.support)
		end)
	end)
	if FFlagUpdateContactParams then
		-- TODO FSYS-61: Investigate why {} turns into [] on Android
		MessageBus.publishProtocolMethodRequest(
			self.SUPPORTS_CONTACTS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR,
			-- need to pass in a dummy variable otherwise Android will not work
			-- because it converts `{}` into `[]` which fails inside of MessageBus.java
			{ includeStatus = false },
			{}
		)
	else
		MessageBus.publishProtocolMethodRequest(self.SUPPORTS_CONTACTS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR, {}, {})
	end
	return promise
end

ContactsProtocol.default = ContactsProtocol.new()

return ContactsProtocol
