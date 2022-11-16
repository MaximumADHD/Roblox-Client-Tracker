local AddUser = require(script.AddUser)
local AddUsers = require(script.AddUsers)
local ReceivedDisplayName = require(script.ReceivedDisplayName)
local RemoveUser = require(script.RemoveUser)
local SetUserIsFriend = require(script.SetUserIsFriend)
local SetUserMembershipType = require(script.SetUserMembershipType)
local SetUserThumbnail = require(script.SetUserThumbnail)
local ReceivedUserPresence = require(script.ReceivedUserPresence)
local SetUserPresence = require(script.SetUserPresence)

return {
	AddUser = AddUser,
	AddUsers = AddUsers,
	ReceivedDisplayName = ReceivedDisplayName,
	RemoveUser = RemoveUser,
	SetUserIsFriend = SetUserIsFriend,
	SetUserMembershipType = SetUserMembershipType,
	SetUserThumbnail = SetUserThumbnail,
	ReceivedUserPresence = ReceivedUserPresence,
	SetUserPresence = SetUserPresence,
}
