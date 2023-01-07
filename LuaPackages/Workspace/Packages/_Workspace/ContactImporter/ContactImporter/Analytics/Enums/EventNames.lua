local ContactImporter = script.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	ContactImportModalPageLoad = "Contactimportmodalpageload",
	ContactImportModalContinue = "contactImportModalClickHome",
	ContactImportModalClose = "contactImportModalClose",
	ContactImportModalAddFriends = "ContactImportModalAddFriends",
	ContactsListLoaded = "contactsListLoaded",
	RequestFriendship = "requestFriendship",
	InviteContact = "inviteContact",
	ContactImportingTime = "contactImportingTime",
	CloseContactListButton = "closeContactListButton",
	CloseContactListCross = "closeContactListCross",
	PhoneVerificationWebview = "phoneVerificationWebview",
	PhoneVerificationClose = "phoneVerificationClose",
	-- TODO SOCCONN-1975  list all the steps contact importer load can fail
	FailedGetContactsFromDevice = "failedGetContactsFromDevice",
	FailedFormatContactsFromDevice = "failedFormatContactsFromDevice",
	FailedUploadContactsFromDevice = "failedUploadContactsFromDevice",
	FailedFindContacts = "failedFindContacts",
	FailedGetContactEntities = "failedGetContactEntities",
})
