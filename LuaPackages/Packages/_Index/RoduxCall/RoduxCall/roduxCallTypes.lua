export type CallModel = {
	createdUtc: number,
	userId: number,
	username: string,
	status: string,
}

export type GetCallListSucceeded = {
	responseBody: {
		callList: {
			[number]: CallModel,
		},
	},
}

export type CallList = {
	[number]: CallModel,
}

return {}
