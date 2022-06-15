export type UserContact = {
	id: string,
	name: string,
	mutualContacts: boolean,
}

export type FindContactFriendsSucceeded = {
	responseBody: {
		UserContactIds: { string },
	},
}

export type GetContactEntitiesByContactIdSucceeded = {
	responseBody: {
		userContactsEntities: { UserContact },
	},
}

return {}
