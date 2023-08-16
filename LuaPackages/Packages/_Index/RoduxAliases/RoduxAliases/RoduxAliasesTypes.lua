--!strict

export type RoduxOptions = {
	keyPath: string,
	[string]: {
		[string]: {
			Succeeded: {
				name: string,
			},
		},
	},
}

export type RoduxAction = {
	payload: {
		userId: number,
		newAlias: string,
		showUserAlias: boolean,
	},
	responseBody: {},
	postBody: { [string]: any },
}

export type ByUserId = {
	ShowUserAlias: boolean,
	[string]: any,
}

export type State = {
	byUserId: ByUserId?,
}

return {}
