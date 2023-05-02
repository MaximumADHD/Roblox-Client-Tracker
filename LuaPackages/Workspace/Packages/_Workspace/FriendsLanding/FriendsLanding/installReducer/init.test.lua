local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local dependencies = require(FriendsLanding.dependencies)
local Rodux = dependencies.Rodux
local getFFlagVerifiedBadgeInFriendsLanding = dependencies.getFFlagVerifiedBadgeInFriendsLanding
local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)
local getFFlagAddFriendsPYMKExperimentEnabled = require(FriendsLanding.Flags.getFFlagAddFriendsPYMKExperimentEnabled)

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local installReducer = require(script.Parent)

it("SHOULD return function", function()
	expect(installReducer).toEqual(expect.any("function"))
end)

it("SHOULD return expected structure", function()
	local roduxStore = Rodux.Store.new(installReducer(), nil)

	expect(roduxStore:getState()).toEqual({
		DeletedUsers = expect.any("table"),
		VerifiedUsers = if getFFlagVerifiedBadgeInFriendsLanding() then expect.any("table") else nil,
		InactiveFriends = if getFFlagFriendsLandingInactiveFriendsEnabled() then expect.any("table") else nil,
		IsUserFollowing = expect.any("table"),
		Games = expect.any("table"),
		Users = expect.any("table"),
		Friends = expect.any("table"),
		Presence = expect.any("table"),
		NetworkStatus = expect.any("table"),
		UserPermissions = expect.any("table"),
		RequestsFromOriginSourceType = expect.any("table"),
		ShowContactImporterParams = expect.any("table"),
		ContactImporterWarning = expect.any("table"),
		Analytics = if getFFlagAddFriendsPYMKExperimentEnabled() then expect.any("table") else nil,
	})
end)
