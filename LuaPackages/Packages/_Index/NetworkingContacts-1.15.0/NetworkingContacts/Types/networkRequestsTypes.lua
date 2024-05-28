export type UploadContactsByUser = {
	countryCode: string,
	contacts: { {
		fields: {
			name: string,
			value: string,
		},
		idAssignedByFE: string?,
	} },
}

export type GetContactEntitiesByContactId = { string }

export type FindContactFriends = {}

export type RequestThunks = {
	UploadContactsByUser: UploadContactsByUser,
	FindContactFriends: FindContactFriends,
	GetContactEntitiesByContactId: GetContactEntitiesByContactId,
}

export type Config = {
	roduxNetworking: any,
}

return {}
