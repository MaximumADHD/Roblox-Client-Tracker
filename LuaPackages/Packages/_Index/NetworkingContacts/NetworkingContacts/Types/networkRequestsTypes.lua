export type UploadContactsByUser = {
	[string]: {
		fields: {
			[string]: {
				name: string,
				value: string,
			},
		},
	},
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
