local SocialLuaAnalytics = script.Parent.Parent.Parent
local dependencies = require(SocialLuaAnalytics.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	JoinGameInPeopleList = "joinGameInPeopleList",
	ButtonClick = "buttonClick",
	PageLoad = "luaPageLoad",
	PageLoadFailed = "luaPageLoadFailed",
	PageMountingTime = "pageMountingTime",
	PageLoadingTime = "pageLoadingTime",
	FriendsCarouselLoaded = "friendsCarouselLoaded",
	UserSeen = "userSeen",

	CarouselLoadingTime = "carouselLoadingTime",
	ContactImportModalClick = "contactImportModalClick",
	ContactImportModalPageLoad = "contactImportModalPageLoad",
	ContactsListLoaded = "contactsListLoaded",
	ContactImportingTime = "contactImportingTime",

	ContactsListLoadError = "contactsListLoadError",

	ContactWarningSeen = "contactWarningSeen",
	ContactImporterBannerSeen = "contactImporterBannerSeen",
	ContactImporterOnAddFriends = "contactImporterOnAddFriends",

	DiscoverabilityModalLoad = "discoverabilityModalLoad",
	DiscoverabilityModalClick = "discoverabilityModalClick",
	DiscoverabilityModalRadioButtonClick = "discoverabilityModalRadioButtonClick",

	NavigateToPhoneVerification = "navigateToPhoneVerification",
	PhoneVerificationClose = "phoneVerificationClose",

	AppOpenViaShareLink = "appOpenViaShareLink",
	LinkResolved = "linkResolved",
	GamePlayIntent = "gamePlayIntent",

	ProfileQRCodeNotificationBannerShown = "ProfileQRCodeNotificationBannerSeen",
})
