local ContactsReducer = script.Parent.Parent.Parent
local Packages = ContactsReducer.Parent
local Types = ContactsReducer.Types
local Rodux = require(Packages.Rodux) :: any
local ReducerTypes = require(Types.ReducerTypes)
local ActionTypes = require(Types.ActionTypes)
local Actions = require(ContactsReducer.Actions)
local DeviceContactsReceived = Actions.DeviceContactsReceived
local Dash = require(Packages.Dash) :: any
local DeviceContact = require(ContactsReducer.Models.DeviceContact)

local DEFAULT_STATE: ReducerTypes.ByDeviceContactId = {}

return function(_options)
	return Rodux.createReducer(DEFAULT_STATE, {
		[DeviceContactsReceived.name] = function(
			_: ReducerTypes.ByDeviceContactId,
			action: ActionTypes.DeviceContactsReceivedAction
		)
			local contacts = action.payload
			local contactList = {}
			Dash.forEach(contacts, function(contact)
				local deviceContact = DeviceContact.formatFromDevice(contact)

				contactList[deviceContact.id] = deviceContact
			end)

			return contactList
		end,
	})
end
