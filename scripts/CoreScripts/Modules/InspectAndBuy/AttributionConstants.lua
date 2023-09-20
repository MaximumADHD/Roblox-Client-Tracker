-- Constants used for experience attributions.

--[[
	Maps Playability Status Enums to boolean values representing whether an
	attribution should be shown based on playability.
	https://roblox.atlassian.net/wiki/spaces/~62b33c139abb660ab14b5f9f/pages/2186903918/Attribution+Item+Row+Display+Behavior
]]
local ShowPlayableAttributionMapper = {
	UnplayableOtherReason = true,
	Playable = true,
	GuestProhibited = true,
	GameUnapproved = false,
	IncorrectConfiguration = false,
	UniverseRootPlaceIsPrivate = false,
	InsufficientPermissionFriendsOnly = true,
	InsufficientPermissionGroupOnly = true,
	DeviceRestricted = true,
	UnderReview = true,
	PurchaseRequired = true,
	AccountRestricted = true,
	TemporarilyUnavailable = true,
	ComplianceBlocked = true,
	ContextualPlayabilityAgeRecommendationParentalControls = true,
	ContextualPlayabilityRegionalAvailability = true,
	ContextualPlayabilityRegionalCompliance = true,
	ContextualPlayabilityUnverifiedSeventeenPlusUser = true,
}

local AttributionConstants = {
	ShowPlayableAttributionMapper = ShowPlayableAttributionMapper,
}

return AttributionConstants
