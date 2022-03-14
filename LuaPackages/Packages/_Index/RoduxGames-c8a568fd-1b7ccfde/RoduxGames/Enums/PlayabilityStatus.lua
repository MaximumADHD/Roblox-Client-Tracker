local Packages = script:FindFirstAncestor("RoduxGames").Parent
local enumerate = require(Packages.enumerate)

return enumerate(script.Name, {
	Playable = "Playable",
	UnplayableOtherReason = "UnplayableOtherReason",
	GuestProhibited = "GuestProhibited",
	GameUnapproved = "GameUnapproved",
	IncorrectConfiguration = "IncorrectConfiguration",
	UniverseRootPlaceIsPrivate = "UniverseRootPlaceIsPrivate",
	InsufficientPermissionFriendsOnly = "InsufficientPermissionFriendsOnly",
	InsufficientPermissionGroupOnly = "InsufficientPermissionGroupOnly",
	DeviceRestricted = "DeviceRestricted",
	UnderReview = "UnderReview",
	PurchaseRequired = "PurchaseRequired",
	AccountRestricted = "AccountRestricted",
	TemporarilyUnavailable = "TemporarilyUnavailable",
})
