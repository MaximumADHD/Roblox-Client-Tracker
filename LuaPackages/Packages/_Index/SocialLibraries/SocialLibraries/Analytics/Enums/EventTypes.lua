--!strict
local SocialLibraries = script.Parent.Parent.Parent
local dependencies = require(SocialLibraries.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	JoinGameInPeopleList = "joinGameInPeopleList",
	ButtonClick = "buttonClick",
	PageLoad = "luaPageLoad",
	PageMountingTime = "pageMountingTime",
	PageLoadingTime = "pageLoadingTime",
	FriendsCarouselLoaded = "friendsCarouselLoaded",
	UserSeen = "userSeen",
})
