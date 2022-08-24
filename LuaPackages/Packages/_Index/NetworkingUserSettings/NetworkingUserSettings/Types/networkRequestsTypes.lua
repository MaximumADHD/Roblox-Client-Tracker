export type Config = {
	roduxNetworking: any,
}

export type GetUserSettingsQueryArgs = {
	userSettings: string,
}

export type UpdateUserSettingsQueryArgs = {
	canUploadContacts: boolean,
}

export type RequestThunks = {
	GetUserSettings: any,
	UpdateUserSettings: any,
	GetUserSettingsMetadata: any,
}

return {}
