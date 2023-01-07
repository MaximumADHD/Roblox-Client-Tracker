local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local NetworkingContacts = dependencies.NetworkingContacts
local Promise = dependencies.Promise
local contactImporterSync = require(ContactImporter.Utils.contactImporterSync)
local formatContacts = require(ContactImporter.Utils.formatContacts)

return function(userid: string, contactsProtocol: any, appStorageService: any, shouldBypassSyncCheck: boolean?): any
	return function(store)
		local currentTime = DateTime.now().UnixTimestampMillis
		local shouldSyncContacts = contactImporterSync:shouldSyncContacts(appStorageService, userid, currentTime)
		if shouldBypassSyncCheck or shouldSyncContacts then
			contactsProtocol
				:supportsContacts()
				:andThen(function(doesSupportContacts)
					return if doesSupportContacts then Promise.resolve() else Promise.reject()
				end)
				:andThen(function()
					return contactsProtocol:getContacts()
				end)
				:andThen(function(contacts)
					local formattedContacts = formatContacts(contacts)
					return store:dispatch(NetworkingContacts.UploadContactsByUser.API(formattedContacts))
				end)
				:andThen(function()
					return contactImporterSync:updateSyncTimestamp(appStorageService, userid, currentTime)
				end)
				:catch(function() end)
		end
	end
end
