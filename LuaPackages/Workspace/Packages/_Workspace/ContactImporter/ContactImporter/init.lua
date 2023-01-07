return {
	Actions = require(script.Actions),
	ContactsList = require(script.ContactsList.Components.ContactsList),
	ContactsRevokedAccessDialog = require(script.ContactsList.Components.ContactsRevokedAccessDialog),
	installReducer = require(script.installReducer),
	ShowContactImporterParams = require(script.installReducer.ShowContactImporterParams),
	FindFriendsModal = require(script.FindFriendsModal),
	Networking = require(script.Networking),
	Navigator = require(script.CINavigator),
	RoduxKey = require(script.Common.Constants).RODUX_KEY,
	Constants = require(script.Common.Constants),
	TextKeys = require(script.Common.TextKeys),
	Utils = require(script.Utils),
	Flags = require(script.Flags),
	TestHelpers = function()
		return require(script.TestHelpers)
	end,
	dependencies = require(script.dependencies),
	["jest.config"] = script["jest.config"],
}
