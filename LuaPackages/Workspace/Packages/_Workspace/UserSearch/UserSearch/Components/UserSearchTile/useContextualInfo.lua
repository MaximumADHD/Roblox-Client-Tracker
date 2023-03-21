local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local RoactUtils = require(Packages.RoactUtils)
local useLocalization = RoactUtils.Hooks.useLocalization

local useRelationshipSelector = require(script.Parent.useRelationshipSelector)
local LocalTypes = require(UserSearch.Common.LocalTypes)
local GraphQLServerModule = require(Packages.GraphQLServer)
type ProfileInsights = GraphQLServerModule.ProfileInsights

local SocialLuaAnalytics = require(Packages.SocialLuaAnalytics)
local Enums = SocialLuaAnalytics.Analytics.Enums
local ContextualInfoTypes = Enums.ContextualInfoTypes

local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local GetFFlagUserSearchNewContextExperimentEnabled =
	require(Packages.SharedFlags).GetFFlagUserSearchNewContextExperimentEnabled

local ICON_FRIEND = Images["icons/status/player/friend"]
local ICON_FOLLOWING = Images["icons/status/player/following"]

local isKnownAs = function(previousUsernames: LocalTypes.PreviousUsernames, keyword: string)
	if not previousUsernames or #previousUsernames == 0 then
		return false
	end

	for i = 1, #previousUsernames do
		if previousUsernames[i] == keyword then
			return true
		end
	end

	return false
end

type ContextualInfoDisplay = {
	text: string,
	icon: string?,
}

type ContextualInfoType = string?

local useContextualInfo = function(args: {
	userId: string,
	previousUsernames: LocalTypes.PreviousUsernames,
	searchKeyword: string,
	profileInsight: ProfileInsights?,
}): (ContextualInfoDisplay?, ContextualInfoType?)
	local relationship = useRelationshipSelector(args.userId)

	local localized = useLocalization({
		youAreFriends = "Feature.PlayerSearchResults.Label.YouAreFriends",
		youAreFollowing = "Feature.PlayerSearchResults.Label.YouAreFollowing",
		alsoKnownAs = "Feature.PlayerSearchResults.Label.AlsoKnownAsAbbreviation",
		thisIsYou = "Feature.PlayerSearchResults.Label.ThisIsYou",
		frequents = if GetFFlagUserSearchNewContextExperimentEnabled() then "Feature.Friends.Label.Frequent" else nil,
		mutualFriendSingular = if GetFFlagUserSearchNewContextExperimentEnabled()
			then "Feature.Friends.Label.SingularMutualFriend"
			else nil,
		mutualFriends = if GetFFlagUserSearchNewContextExperimentEnabled()
			then "Feature.Friends.Label.MutualFriends"
			else nil,
	})

	if relationship.isMyself then
		if GetFFlagUserSearchNewContextExperimentEnabled() then
			return { text = localized.thisIsYou }, ContextualInfoTypes.IsMyself.rawValue()
		else
			return { text = localized.thisIsYou }
		end
	end

	if isKnownAs(args.previousUsernames, args.searchKeyword) then
		if GetFFlagUserSearchNewContextExperimentEnabled() then
			return { text = localized.alsoKnownAs .. " " .. args.searchKeyword },
				ContextualInfoTypes.PreviousUsername.rawValue()
		else
			return { text = localized.alsoKnownAs .. " " .. args.searchKeyword }
		end
	end

	if relationship.status == Enum.FriendStatus.Friend then
		if GetFFlagUserSearchNewContextExperimentEnabled() then
			return { text = localized.youAreFriends, icon = ICON_FRIEND }, ContextualInfoTypes.Friend.rawValue()
		else
			return { text = localized.youAreFriends }
		end
	end

	if relationship.following == true then
		if GetFFlagUserSearchNewContextExperimentEnabled() then
			return { text = localized.youAreFollowing, icon = ICON_FOLLOWING }, ContextualInfoTypes.Following.rawValue()
		else
			return { text = localized.youAreFollowing }
		end
	end

	if GetFFlagUserSearchNewContextExperimentEnabled() then
		local getMutualFriendsText = function(mutualFriends, localized): string
			local mutualFriendsCount = #mutualFriends
			local text = if mutualFriendsCount > 1
				then tostring(mutualFriendsCount) .. " " .. string.lower(localized.mutualFriends)
				else tostring(mutualFriendsCount) .. " " .. localized.mutualFriendSingular

			return text
		end

		if args.profileInsight then
			if args.profileInsight.mutualFriends and #args.profileInsight.mutualFriends > 0 then
				local text = getMutualFriendsText(args.profileInsight.mutualFriends, localized)
				return { text = text, icon = ICON_FRIEND }, ContextualInfoTypes.MutualFriends.rawValue()
			elseif args.profileInsight.isOfflineFrequents then
				return { text = localized.frequents }, ContextualInfoTypes.Frequents.rawValue()
			end
		end
	end

	if GetFFlagUserSearchNewContextExperimentEnabled() then
		return nil, nil
	else
		return nil
	end
end

return useContextualInfo
