export type EventNames =
	"callBarHangUpClicked"
	| "phoneBookNavigate"
	| "phoneBookSearchClicked"
	| "phoneBookSearchAttempted"
	| "phoneBookSearchFinished"
	| "phoneBookPlayerMenuOpened"
	| "phoneBookPlayerMenuUnfriendClicked"
	| "phoneBookPlayerMenuUnfriendFinished"
	| "phoneBookPlayerMenuBlockClicked"
	| "phoneBookCallFriendClicked"
	| "phoneBookCallFriendFailed"

local EventNamesEnum = {
	CallBarHangUpClicked = "callBarHangUpClicked" :: "callBarHangUpClicked",
	PhoneBookNavigate = "phoneBookNavigate" :: "phoneBookNavigate",
	PhoneBookSearchClicked = "phoneBookSearchClicked" :: "phoneBookSearchClicked",
	PhoneBookSearchAttempted = "phoneBookSearchAttempted" :: "phoneBookSearchAttempted",
	PhoneBookSearchFinished = "phoneBookSearchFinished" :: "phoneBookSearchFinished",
	PhoneBookPlayerMenuOpened = "phoneBookPlayerMenuOpened" :: "phoneBookPlayerMenuOpened",
	PhoneBookPlayerMenuUnfriendClicked = "phoneBookPlayerMenuUnfriendClicked" :: "phoneBookPlayerMenuUnfriendClicked",
	PhoneBookPlayerMenuUnfriendFinished = "phoneBookPlayerMenuUnfriendFinished" :: "phoneBookPlayerMenuUnfriendFinished",
	PhoneBookPlayerMenuBlockClicked = "phoneBookPlayerMenuBlockClicked" :: "phoneBookPlayerMenuBlockClicked",
	PhoneBookCallFriendClicked = "phoneBookCallFriendClicked" :: "phoneBookCallFriendClicked",
	PhoneBookCallFriendFailed = "phoneBookCallFriendFailed" :: "phoneBookCallFriendFailed",
}

return EventNamesEnum
