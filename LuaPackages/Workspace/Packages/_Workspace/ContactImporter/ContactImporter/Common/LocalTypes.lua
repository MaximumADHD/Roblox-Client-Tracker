-- Type for contacts we get from device
export type ContactsProtocolContact = {
	firstname: string,
	lastname: string,
	phonenumber: { number },
}

export type RoduxContactsReducer = {
	byContactId: any?,
	byDeviceContactId: any?,
	deviceContactToRobloxContact: any?,
	hasSentRequest: any?,
}

export type ContactInformation = { contact: ContactsProtocolContact, countryCode: string }
export type UploadContactsByUser = {
	countryCode: string,
	contacts: {
		fields: {
			name: string,
			value: string,
		},
	},
}

export type RequestFriendshipFromContactId = {
	currentUserId: string | number,
	contactId: string,
}

export type GetContactEntities = {
	UserContactIds: { string },
}

export type ContactsList = {
	[string]: {
		name: string,
		mutualContacts: boolean,
	},
}

export type RootContactInformation = {
	hasSentRequest: boolean?,
	contactName: string?,
	isMatchedContact: boolean,
}

export type MatchedContact = RootContactInformation & {
	contactId: string,
	isMatchedContact: true,
}

export type InviteOnlyContact = RootContactInformation & {
	deviceContactId: string,
	phoneNumber: string,
	isMatchedContact: false,
}

export type ContactListContact = MatchedContact | InviteOnlyContact

return {}
