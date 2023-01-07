local EventNames = require(script.Parent.Enums.EventNames)

type GenericDiagAction = { name: string, count: number? }

return {
	[EventNames.ContactImportModalPageLoad] = {
		name = game:DefineFastString("ContactImportModalPageLoadCounter", "ContactImportModalPageLoad"),
	} :: GenericDiagAction,
	[EventNames.ContactImportModalClose] = {
		name = game:DefineFastString("ContactImportModalCloseCounter", "ContactImportModalClose"),
	},
	[EventNames.ContactImportModalContinue] = {
		name = game:DefineFastString("ContactImportModalContinueCounter", "ContactImportModalContinue"),
	},
	[EventNames.ContactImportModalAddFriends] = {
		name = game:DefineFastString("ContactImportModalAddFriendsCounter", "ContactImportModalAddFriends"),
	},
	[EventNames.ContactsListLoaded] = {
		name = game:DefineFastString("ContactsListLoadedCounter", "ContactsListLoaded"),
	},
	[EventNames.RequestFriendship] = {
		name = game:DefineFastString("ContactImporterRequestFriendshipCounter", "ContactImporterFriendshipRequest"),
	},
	[EventNames.InviteContact] = {
		name = game:DefineFastString("ContactImporterInviteContactCounter", "ContactImporterInviteContact"),
	},
	[EventNames.ContactImportingTime] = {
		name = game:DefineFastString("ContactImportingTimeStat", "ContactImportingTime"),
	},
	[EventNames.CloseContactListButton] = {
		name = game:DefineFastString("CloseContactListButtonCounter", "CloseContactListButton"),
	},
	[EventNames.CloseContactListCross] = {
		name = game:DefineFastString("CloseContactListCrossCounter", "CloseContactListCross"),
	},
	[EventNames.PhoneVerificationWebview] = {
		name = game:DefineFastString("PhoneVerificationWebviewCounter", "PhoneVerificationWebview"),
	},
	[EventNames.PhoneVerificationClose] = {
		name = game:DefineFastString("PhoneVerificationCloseCounter", "PhoneVerificationCloseWebview"),
	},
	[EventNames.FailedGetContactsFromDevice] = {
		name = game:DefineFastString("FailedGetContactsFromDeviceCounter", "FailedGetContactsFromDevice"),
	},
	[EventNames.FailedFormatContactsFromDevice] = {
		name = game:DefineFastString("FailedFormatContactsFromDeviceCounter", "FailedFormatContactsFromDevice"),
	},
	[EventNames.FailedUploadContactsFromDevice] = {
		name = game:DefineFastString("FailedUploadContactsFromDeviceCounter", "FailedUploadContactsFromDevice"),
	},
	[EventNames.FailedFindContacts] = {
		name = game:DefineFastString("FailedFindContactsCounter", "FailedFindContacts"),
	},
	[EventNames.FailedGetContactEntities] = {
		name = game:DefineFastString("FailedGetContactEntitiesCounter", "FailedGetContactEntities"),
	},
}
