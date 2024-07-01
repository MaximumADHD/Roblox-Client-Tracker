export type ContactFromDevice = {
	firstname: string,
	lastname: string,
	phonenumber: { number },
}

export type RootContact = {
	contactName: string,
}

export type MatchedContact = {
	id: string,
	contactId: string,
} & RootContact

export type DeviceContact = {
	id: string,
	phoneNumbers: { number },
} & RootContact

return {}
