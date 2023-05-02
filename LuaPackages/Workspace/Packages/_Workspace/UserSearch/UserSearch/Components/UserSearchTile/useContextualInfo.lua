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

local SocialCommon = require(Packages.SocialCommon)
local useMutualFriendsText = SocialCommon.Hooks.useMutualFriendsText

local getFFlagUserSearchContextualInfoUpdateUI = require(UserSearch.Flags.getFFlagUserSearchContextualInfoUpdateUI)
local getFFlagMoveMutualFriendsTextToUtils = require(Packages.SharedFlags).getFFlagMoveMutualFriendsTextToUtils

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
		alsoKnownAs = if getFFlagUserSearchContextualInfoUpdateUI()
			then nil
			else "Feature.PlayerSearchResults.Label.AlsoKnownAsAbbreviation",
		previously = if getFFlagUserSearchContextualInfoUpdateUI()
			then "Feature.PlayerSearchResults.Label.Previously"
			else nil,
		thisIsYou = "Feature.PlayerSearchResults.Label.ThisIsYou",
		frequents = "Feature.Friends.Label.Frequent",
		mutualFriendSingular = if getFFlagMoveMutualFriendsTextToUtils()
			then nil
			else "Feature.Friends.Label.SingularMutualFriend",
		mutualFriends = if getFFlagMoveMutualFriendsTextToUtils() then nil else "Feature.Friends.Label.MutualFriends",
	})

	local mutualFriendsCount, mutualFriendsText
	if getFFlagMoveMutualFriendsTextToUtils() then
		local profileInsight = args.profileInsight
		mutualFriendsCount = profileInsight and profileInsight.mutualFriends and #profileInsight.mutualFriends or 0
		mutualFriendsText = useMutualFriendsText(mutualFriendsCount)
	end

	if relationship.isMyself then
		return { text = localized.thisIsYou }, ContextualInfoTypes.IsMyself.rawValue()
	end

	if isKnownAs(args.previousUsernames, args.searchKeyword) then
		if getFFlagUserSearchContextualInfoUpdateUI() then
			return { text = localized.previously .. " @" .. args.searchKeyword },
				ContextualInfoTypes.PreviousUsername.rawValue()
		else
			return { text = localized.alsoKnownAs .. " " .. args.searchKeyword },
				ContextualInfoTypes.PreviousUsername.rawValue()
		end
	end

	if relationship.status == Enum.FriendStatus.Friend then
		return { text = localized.youAreFriends, icon = ICON_FRIEND }, ContextualInfoTypes.Friend.rawValue()
	end

	if relationship.following == true then
		return { text = localized.youAreFollowing, icon = ICON_FOLLOWING }, ContextualInfoTypes.Following.rawValue()
	end

	if getFFlagMoveMutualFriendsTextToUtils() then
		if args.profileInsight then
			if mutualFriendsCount > 0 then
				return { text = mutualFriendsText, icon = ICON_FRIEND }, ContextualInfoTypes.MutualFriends.rawValue()
			elseif args.profileInsight.isOfflineFrequents then
				return { text = localized.frequents }, ContextualInfoTypes.Frequents.rawValue()
			end
		end
	else
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

	return nil, nil
end

return useContextualInfo
