local CorePackages = game:GetService("CorePackages")
local Types = require(CorePackages.UniversalApp.MessageBusTypes)

export type GetContactsResponse = {
	firstName: string?,
	lastName: string?,
	phoneNumbers: {string}?,
}

export type ContactsProtocol = {
	GET_CONTACTS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	GET_CONTACTS_REQUEST_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_CONTACTS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR: Types.ProtocolMethodDescriptor,
	SUPPORTS_CONTACTS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR: Types.ProtocolMethodDescriptor,

	getContacts: (ContactsProtocol) -> Types.Promise<GetContactsResponse?>,
	supportsContacts: (ContactsProtocol) -> Types.Promise<boolean?>,

	subscriber: Types.Subscriber,
}

return nil
