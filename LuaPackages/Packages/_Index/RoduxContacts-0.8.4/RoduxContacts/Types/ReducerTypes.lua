local ContactTypes = require(script.Parent.ContactTypes)
export type ByContactId = {
	[string]: {
		name: string?,
		mutualContacts: boolean?,
	},
}

export type DeviceContactToRobloxContact = {
	[string]: { [string]: true },
}

export type ByDeviceContactId = {
	[string]: ContactTypes.DeviceContact,
}

export type HasSentRequest = {
	[string]: true,
}

export type Reducer = {
	byContactId: ByContactId,
	byDeviceContactId: ByDeviceContactId,
	hasSentRequest: HasSentRequest,
	deviceContactToRobloxContact: DeviceContactToRobloxContact,
}

return {}
