local ContactsReducer = script.Parent.Parent
local Packages = ContactsReducer.Parent
local getMockName = require(script.Parent.getMockName)
local ContactTypes = require(script.Parent.Parent.Types.ContactTypes)
local Dash = require(Packages.Dash) :: any

local DeviceContact = {}

function DeviceContact.new(contact: ContactTypes.DeviceContact)
	DeviceContact.__index = DeviceContact

	local self = {
		id = contact.id,
		phoneNumbers = contact.phoneNumbers,
		contactName = contact.contactName,
	}

	setmetatable(self, DeviceContact)

	return self
end

function DeviceContact.mock(mergeTable: {
	id: string?,
	phoneNumbers: { number }?,
	contactName: string?,
}?)
	local mockName = getMockName()
	local defaultValues = {
		id = mockName,
		contactName = mockName,
		phoneNumbers = { 123456 },
	}
	local mergedValues = Dash.join(defaultValues, mergeTable)

	return DeviceContact.new(mergedValues)
end

function DeviceContact.formatFromDevice(contact: { firstname: string, lastname: string, phonenumber: { number } })
	return DeviceContact.new({
		id = DeviceContact.generateId(contact),
		contactName = contact.firstname .. " " .. contact.lastname,
		phoneNumbers = contact.phonenumber,
	})
end

function DeviceContact.generateId(contact: { firstname: string, lastname: string, phonenumber: { number } })
	return contact.firstname .. contact.lastname .. tostring(contact.phonenumber[1])
end

return DeviceContact
