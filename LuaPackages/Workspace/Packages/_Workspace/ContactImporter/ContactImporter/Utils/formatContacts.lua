local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local llama = dependencies.llama
local Constants = require(ContactImporter.Common.Constants)

local getFIntContactImporterUploadContactsMax = require(ContactImporter.Flags.getFIntContactImporterUploadContactsMax)
local getFIntContactImporterUploadContactsMin = require(ContactImporter.Flags.getFIntContactImporterUploadContactsMin)

local RoduxContacts = dependencies.RoduxContacts
local DeviceContact = RoduxContacts.Models.DeviceContact
local getFFlagTrimContactsEarlierOnContactImporter =
	require(ContactImporter.Flags.getFFlagTrimContactsEarlierOnContactImporter)

return function(contacts)
	-- format contacts properly to send to BE
	local updatedContacts = {}
	local maxContacts = getFIntContactImporterUploadContactsMax()
	local minContacts = getFIntContactImporterUploadContactsMin()

	for k, v in pairs(contacts.contacts) do
		for _, phoneNumber in pairs(v.phonenumber) do
			if getFFlagTrimContactsEarlierOnContactImporter() and #updatedContacts >= maxContacts then
				break
			end

			local contactEntry = {
				idAssignedByFE = DeviceContact.generateId(v),
				fields = {
					{ name = Constants.LAST_NAME, value = tostring(v.lastname) },
					{ name = Constants.FIRST_NAME, value = tostring(v.firstname) },
					{
						name = Constants.PHONE_NUMBER,
						-- remove whitespaces
						value = tostring(phoneNumber):gsub("%s+", ""),
					},
				},
			}
			table.insert(updatedContacts, contactEntry)
		end
	end

	-- trim contacts
	local contactsCount = #updatedContacts

	if
		contactsCount >= minContacts
		and (getFFlagTrimContactsEarlierOnContactImporter() or contactsCount <= maxContacts)
	then
		return {
			countryCode = contacts.countryCode,
			contacts = updatedContacts,
			contactsCount = contactsCount,
		}
	elseif contactsCount < minContacts then
		return {
			countryCode = contacts.countryCode,
			contacts = {},
			contactsCount = contactsCount,
		}
	elseif not getFFlagTrimContactsEarlierOnContactImporter() and contactsCount > maxContacts then
		return {
			countryCode = contacts.countryCode,
			contacts = llama.List.slice(updatedContacts, 1, maxContacts),
			contactsCount = contactsCount,
		}
	else
		return {
			countryCode = contacts.countryCode,
			contacts = updatedContacts,
			contactsCount = contactsCount,
		}
	end
end
