local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local Rodux = dependencies.Rodux
local RoduxNetworking = dependencies.RoduxNetworking
local RoduxGames = dependencies.RoduxGames
local RoduxUserPermissions = dependencies.RoduxUserPermissions
local contactImporterWarning = require(script.contactImporterWarning)
local ShowContactImporterParams = dependencies.ShowContactImporterParams

local getFFlagVerifiedBadgeInFriendsLanding = dependencies.getFFlagVerifiedBadgeInFriendsLanding
local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

return function()
	return Rodux.combineReducers({
		DeletedUsers = require(script.DeletedUsers),
		VerifiedUsers = if getFFlagVerifiedBadgeInFriendsLanding() then require(script.VerifiedUsers) else nil,
		InactiveFriends = if getFFlagFriendsLandingInactiveFriendsEnabled()
			then require(script.InactiveFriends)
			else nil,
		IsUserFollowing = require(script.IsUserFollowing),
		Games = RoduxGames.installReducer(),
		Users = require(script.Users),
		Friends = require(script.Friends)(),
		Presence = require(script.Presence),
		UserPermissions = RoduxUserPermissions.installReducer(),
		NetworkStatus = RoduxNetworking.installReducer(),
		RequestsFromOriginSourceType = require(script.RequestsFromOriginSourceType),
		ShowContactImporterParams = ShowContactImporterParams,
		ContactImporterWarning = contactImporterWarning,
	})
end
