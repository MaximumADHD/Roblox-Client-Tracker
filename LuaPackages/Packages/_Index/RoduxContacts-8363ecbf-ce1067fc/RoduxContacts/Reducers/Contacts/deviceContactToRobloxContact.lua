local ContactsReducer = script.Parent.Parent.Parent
local Packages = ContactsReducer.Parent
local Types = ContactsReducer.Types
local Rodux = require(Packages.Rodux) :: any
local Dash = require(Packages.Dash) :: any
local ActionTypes = require(Types.ActionTypes)
local ReducerTypes = require(Types.ReducerTypes)
local getDeepValue = require(ContactsReducer.getDeepValue)
local DEFAULT_STATE: ReducerTypes.DeviceContactToRobloxContact = {}

return function(options)
	local NetworkingContacts = options.networkingContacts

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingContacts.UploadContactsByUser.Succeeded.name] = function(
			_: ReducerTypes.ByContactId,
			action: ActionTypes.UploadContactsByUser
		): ReducerTypes.DeviceContactToRobloxContact
			local userContactEntities = getDeepValue(action, "responseBody.matchedContactFields")
			if not userContactEntities then
				return {}
			end

			local newState: ReducerTypes.DeviceContactToRobloxContact = {}

			Dash.forEach(action.responseBody.matchedContactFields, function(contact)
				if not newState[contact.idAssignedByFE] then
					newState[contact.idAssignedByFE] = {}
				end

				newState[contact.idAssignedByFE][contact.userContactId] = true
			end)

			return newState
		end,
	})
end
