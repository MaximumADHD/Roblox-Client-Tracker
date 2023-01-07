local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local Dash = dependencies.Dash
local LocalTypes = require(ContactImporter.Common.LocalTypes)

local DEFAULT_TABLE: LocalTypes.RoduxContactsReducer = {}

local formatContactData = function(contactData: LocalTypes.RoduxContactsReducer): LocalTypes.RoduxContactsReducer
	return contactData.byDeviceContactId or DEFAULT_TABLE
end

local addSentRequestData = function(contactData: LocalTypes.RoduxContactsReducer)
	return function(contacts)
		local hasSentRequest = contactData.hasSentRequest or DEFAULT_TABLE

		return Dash.map(contacts, function(deviceContact)
			return Dash.join(deviceContact, {
				hasSentRequest = hasSentRequest[deviceContact.id],
			})
		end)
	end
end

local selectPhoneNumber = function(contactData: LocalTypes.RoduxContactsReducer): LocalTypes.RoduxContactsReducer
	return Dash.map(contactData, function(deviceContact)
		return Dash.join(deviceContact, {
			phoneNumber = tostring(deviceContact.phoneNumbers[1]),
			phoneNumbers = Dash.None,
		})
	end)
end

local filterOutMatchedContacts = function(contactData: LocalTypes.RoduxContactsReducer)
	return function(contacts): LocalTypes.RoduxContactsReducer
		local unmatchedContacts = {}

		Dash.forEach(contacts, function(deviceContact)
			if
				not contactData.deviceContactToRobloxContact
				or not contactData.deviceContactToRobloxContact[deviceContact.id]
			then
				unmatchedContacts[deviceContact.id] = Dash.join(
					deviceContact,
					{ deviceContactId = deviceContact.id, isMatchedContact = false, id = Dash.None }
				)
			end
		end)

		return unmatchedContacts
	end
end

local dictionaryToList = function(contacts)
	return Dash.values(contacts)
end

local sortByName = function(contacts: { LocalTypes.InviteOnlyContact })
	table.sort(contacts, function(a, b)
		if (a.contactName and b.contactName) and (a.contactName ~= b.contactName) then
			return a.contactName < b.contactName
		end
		return a.deviceContactId < b.deviceContactId
	end)

	return contacts
end

return function(contactData: LocalTypes.RoduxContactsReducer)
	local contactDataWithDefault = contactData or DEFAULT_TABLE
	return Dash.compose(
		formatContactData,
		addSentRequestData(contactDataWithDefault),
		selectPhoneNumber,
		filterOutMatchedContacts(contactDataWithDefault),
		dictionaryToList,
		sortByName
	)(contactDataWithDefault or {})
end
