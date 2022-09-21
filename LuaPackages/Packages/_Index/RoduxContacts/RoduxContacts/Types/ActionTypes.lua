local ContactTypes = require(script.Parent.ContactTypes)

export type UserContact = {
	id: string,
	name: string,
	mutualContacts: boolean,
}

export type FindContactFriendsSucceeded = {
	responseBody: {
		userContactIds: { string },
	},
}

export type GetContactEntitiesByContactIdSucceeded = {
	responseBody: {
		userContactsEntities: { UserContact },
	},
}

export type RequestSent = {
	id: string,
}

export type DeviceContactsReceivedAction = {
	payload: { ContactTypes.ContactFromDevice },
}

export type RequestSentAction = {
	payload: { id: string },
}

return {}
