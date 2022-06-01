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

export type FindContactFriends = {}

export type RequestThunks = {
	UploadContactsByUser: UploadContactsByUser,
	FindContactFriends: FindContactFriends,
}

export type Config = {
	roduxNetworking: any,
}

return {}
