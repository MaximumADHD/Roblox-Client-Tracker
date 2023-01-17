local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local RoactUtils = require(Packages.RoactUtils)
local useLocalization = RoactUtils.Hooks.useLocalization

local LocalTypes = require(UserSearch.Common.LocalTypes)
local useRelationshipSelector = require(script.Parent.useRelationshipSelector)

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

local useContextualInfo = function(args: {
	userId: string,
	previousUsernames: LocalTypes.PreviousUsernames,
	searchKeyword: string,
}): { text: string }?
	local relationship = useRelationshipSelector(args.userId)

	local localized = useLocalization({
		youAreFriends = "Feature.PlayerSearchResults.Label.YouAreFriends",
		youAreFollowing = "Feature.PlayerSearchResults.Label.YouAreFollowing",
		alsoKnownAs = "Feature.PlayerSearchResults.Label.AlsoKnownAsAbbreviation",
		thisIsYou = "Feature.PlayerSearchResults.Label.ThisIsYou",
	})

	if relationship.isMyself then
		return { text = localized.thisIsYou }
	end

	if isKnownAs(args.previousUsernames, args.searchKeyword) then
		return { text = localized.alsoKnownAs .. " " .. args.searchKeyword }
	end

	if relationship.status == Enum.FriendStatus.Friend then
		return { text = localized.youAreFriends }
	end

	if relationship.following == true then
		return { text = localized.youAreFollowing }
	end

	return nil
end

return useContextualInfo
