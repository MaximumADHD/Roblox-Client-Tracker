local ContactImporter = script.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	RequestFriendship = "requestFriendship",
	InviteContact = "inviteContact",
	CloseContactListButton = "closeContactListButton",
	CloseContactListCross = "closeContactListCross",
	ContactImporter = "contactImporter",
	AddFriends = "addFriendsUniversal",
	Close = "closeX",
})
