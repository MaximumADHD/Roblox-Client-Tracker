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

export type RequestThunks = {
	UploadContactsByUser: UploadContactsByUser,
}

export type Config = {
	roduxNetworking: any,
}

return {}
