--!strict

export type RoduxOptions = {
	keyPath: string,
	[string]: {
		[string]: {
			Succeeded: {
				name: string
			}
		}
	},
}

export type RoduxAction = {
	payload: {
		userId: number,
		newAlias: string,
		showUserAlias: boolean
	},
	responseBody: {}
}

export type ByUserId = {
	ShowUserAlias: boolean,
	[string]: any
}

export type ContactsByUserId = {
	[string]: boolean
}

export type Contacts = {
	byUserId: ContactsByUserId
}

export type State = {
	byUserId: ByUserId?,
	contacts: Contacts?
}



return {}
