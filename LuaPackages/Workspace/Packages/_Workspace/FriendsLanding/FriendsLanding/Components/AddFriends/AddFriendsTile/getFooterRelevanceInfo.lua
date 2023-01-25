--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local t = dependencies.t
local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType
local ContactImporterConstants = dependencies.ContactImporterConstants
local FriendshipOriginSourceType = dependencies.NetworkingFriendsEnums.FriendshipOriginSourceType

local getFFlagContactNameOnFriendRequestEnabled =
	require(FriendsLanding.Flags.getFFlagContactNameOnFriendRequestEnabled)
local getFFlagProfileQRCodeFriendRequestContextInfoEnabled =
	dependencies.getFFlagProfileQRCodeFriendRequestContextInfoEnabled

local RelevanceInfoProps = t.strictInterface({
	-- Mutual friend list between myself and the current player.
	mutualFriends = t.optional(t.table),
	-- Whether I am following current user
	amIFollowingUser = t.optional(t.boolean),
	-- Whether current user is following me
	isUserFollowingMe = t.optional(t.boolean),
	-- ExperienceName where the request is sent
	sentFromExperienceName = t.optional(t.string),
	isFriendRequest = t.boolean,
	userPresenceType = t.optional(t.userdata),
	friendStatus = t.optional(t.enum(Enum.FriendStatus)),
	lastLocation = t.optional(t.string),
	originSourceType = t.optional(t.string),
})

local hasMutualFriends = function(mutualFriends)
	return mutualFriends ~= nil and #mutualFriends > 0
end

return function(props, style, localized)
	assert(RelevanceInfoProps(props))

	if props.isFriendRequest then
		-- Populate the user context info for requests from non-friends. The rules are
		-- to show the info with the order below:
		--  0. Have Contact in Phone
		--  1. From Contacts
		--  2. From the local user's profile QR code
		--  3. Mutual Friends
		--  4. Sent from X experience
		--  5. You are following
		--  6. Following you

		if getFFlagContactNameOnFriendRequestEnabled() and localized.contactNameText then
			return {
				text = localized.contactNameText,
				fontStyle = style.Font.CaptionBody,
			}
		elseif props.originSourceType == ContactImporterConstants.PHONE_CONTACT_IMPORTER then
			return {
				text = localized.fromContactsText,
				fontStyle = style.Font.CaptionBody,
			}
		elseif
			getFFlagProfileQRCodeFriendRequestContextInfoEnabled()
			and props.originSourceType == FriendshipOriginSourceType.QrCode.rawValue()
		then
			return {
				text = localized.foundThroughQRCode,
				fontStyle = style.Font.CaptionBody,
			}
		elseif hasMutualFriends(props.mutualFriends) then
			return {
				text = ("%d %s"):format(#props.mutualFriends, string.lower(localized.mutualFriendsText)),
				fontStyle = style.Font.CaptionBody,
				icon = Images["icons/status/player/friend"],
			}
		elseif props.sentFromExperienceName ~= nil then
			return {
				text = localized.sentFromWithContextText,
				fontStyle = style.Font.CaptionBody,
			}
		elseif props.amIFollowingUser then
			return {
				text = localized.youAreFollowingText,
				fontStyle = style.Font.CaptionBody,
				icon = Images["icons/status/player/following"],
			}
		elseif props.isUserFollowingMe then
			return {
				text = localized.followsYouText,
				fontStyle = style.Font.CaptionBody,
				icon = Images["icons/status/player/following"],
			}
		else
			return nil
		end
	elseif props.userPresenceType == EnumPresenceType.InGame then
		return props.lastLocation
				and {
					text = props.lastLocation,
					fontStyle = style.Font.CaptionBody,
					icon = Images["icons/actions/friends/friendsplaying"],
					iconTransparency = style.Theme.BackgroundUIDefault.Transparency,
					iconSize = UDim2.new(0, 24, 0, 24),
				}
			or nil
	else
		return nil
	end
end
