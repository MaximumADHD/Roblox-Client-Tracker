local ContactImporter = script.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local enumerate = dependencies.enumerate

-- TODO SOCCONN-1975
return enumerate(script.Name, {
	ContactsNotSupported = "contactsNotSupported",
	-- TODO SOCCONN-1975  list all the steps contact importer load can fail
	-- PermissionDenied
	-- DoesNotSupportContacts
	-- ContactsNotFormattedCorrectly
	-- CannotGetContacts
})
