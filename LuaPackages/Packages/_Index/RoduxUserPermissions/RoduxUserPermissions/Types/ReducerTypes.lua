export type UserSettingsReducer = {
	canUploadContacts: boolean?,
}

export type UserSettingsMetadataReducer = {
	prefillDiscoverabilitySetting: boolean?,
}

export type Reducer = {
	isPhoneVerified: boolean,
	userSettings: UserSettingsReducer,
	userSettingsMetadata: UserSettingsMetadataReducer,
}

return {}
