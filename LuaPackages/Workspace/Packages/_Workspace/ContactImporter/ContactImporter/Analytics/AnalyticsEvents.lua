local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local EventNames = require(script.Parent.Enums.EventNames)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics

local Dash = dependencies.Dash
local Enums = SocialLuaAnalytics.Analytics.Enums
local Contexts = Enums.Contexts
local EventTypes = Enums.EventTypes
local BtnValues = require(script.Parent.Enums.BtnValues)
local FieldNames = require(script.Parent.FieldNames)
local getFIntContactImporterUploadContactsMax = require(ContactImporter.Flags.getFIntContactImporterUploadContactsMax)
local getFIntContactImporterUploadContactsMin = require(ContactImporter.Flags.getFIntContactImporterUploadContactsMin)
local getFFlagContactImporterUseShortUrlFriendInvite =
	require(ContactImporter.Flags.getFFlagContactImporterUseShortUrlFriendInvite)

type GenericEvent = {
	context: any,
	eventType: any,
	additionalInfo: any?,
	formatRulesForAdditionalInfo: any?,
}

return {
	[EventNames.ContactImportModalPageLoad] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.ContactImportModalPageLoad,
	},
	[EventNames.ContactImportModalContinue] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.ContactImportModalClick,
		additionalInfo = {
			btn = BtnValues.ContactImporter,
		},
	},
	[EventNames.ContactImportModalAddFriends] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.ContactImportModalClick,
		additionalInfo = {
			btn = BtnValues.AddFriends,
		},
		formatRulesForAdditionalInfo = {
			isLoaded = Dash.identity,
			loadingTime = Dash.identity,
		},
	},
	[EventNames.ContactImportModalClose] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.ContactImportModalClick,
		additionalInfo = {
			btn = BtnValues.Close,
		},
		formatRulesForAdditionalInfo = {
			isLoaded = Dash.identity,
			loadingTime = Dash.identity,
		},
	},
	[EventNames.ContactsListLoaded] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.ContactsListLoaded,
		formatRulesForAdditionalInfo = {
			[FieldNames.NumTotalContactsImported] = Dash.identity,
			[FieldNames.NumMatchedContacts] = Dash.identity,
			didBypassFetchContacts = Dash.identity,
			[FieldNames.NumTotalContactsOnDevice] = Dash.identity,
			[FieldNames.NumMaxContacts] = getFIntContactImporterUploadContactsMax,
			[FieldNames.NumMinContacts] = getFIntContactImporterUploadContactsMin,
		},
	},
	[EventNames.RequestFriendship] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.RequestFriendship,
		},
		formatRulesForAdditionalInfo = {
			requestedId = Dash.identity,
		},
	},
	[EventNames.InviteContact] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.InviteContact,
			isShortUrlEnabled = getFFlagContactImporterUseShortUrlFriendInvite(),
		},
		formatRulesForAdditionalInfo = {
			offNetworkFriendRequestLinkId = Dash.identity,
		},
	},
	[EventNames.CloseContactListButton] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.CloseContactListButton,
		},
		formatRulesForAdditionalInfo = {
			isLoading = Dash.identity,
			loadingTime = Dash.identity,
		},
	},
	[EventNames.CloseContactListCross] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.ButtonClick,
		additionalInfo = {
			btn = BtnValues.CloseContactListCross,
		},
		formatRulesForAdditionalInfo = {
			isLoading = Dash.identity,
			loadingTime = Dash.identity,
		},
	},
	[EventNames.ContactImportingTime] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.ContactImportingTime,
		formatRulesForAdditionalInfo = {
			isSuccessfulUpload = Dash.identity,
			failedStep = Dash.identity,
			[FieldNames.NumTotalContactsImported] = Dash.identity,
			[FieldNames.NumMatchedContacts] = Dash.identity,
			loadingTime = Dash.identity,
			didBypassFetchContacts = Dash.identity,
			[FieldNames.NumTotalContactsOnDevice] = Dash.identity,
			[FieldNames.NumMaxContacts] = getFIntContactImporterUploadContactsMax,
			[FieldNames.NumMinContacts] = getFIntContactImporterUploadContactsMin,
		},
	},
	[EventNames.PhoneVerificationWebview] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.NavigateToPhoneVerification,
	},
	[EventNames.PhoneVerificationClose] = {
		context = Contexts.ContactImport,
		eventType = EventTypes.PhoneVerificationClose,
		formatRulesForAdditionalInfo = {
			isPhoneVerified = Dash.identity,
		},
	},
}
