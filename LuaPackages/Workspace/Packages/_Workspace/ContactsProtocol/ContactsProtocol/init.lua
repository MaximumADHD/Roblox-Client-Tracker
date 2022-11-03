local ContactsProtocol = require(script.ContactsProtocol)
local Types = require(script.ContactsProtocolTypes)

export type ContactsProtocol = Types.ContactsProtocol
export type GetContactsResponse = Types.GetContactsResponse

return {
	ContactsProtocol = ContactsProtocol,
}
