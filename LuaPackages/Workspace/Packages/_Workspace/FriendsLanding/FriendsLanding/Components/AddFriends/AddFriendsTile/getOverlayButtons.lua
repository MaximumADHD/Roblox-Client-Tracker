local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local t = dependencies.t
local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images
local getFFlagAddFriendsPYMKExperimentEnabled = require(FriendsLanding.Flags.getFFlagAddFriendsPYMKExperimentEnabled)

local OverlayButtonsProps = t.strictInterface({
	playerId = t.string,
	-- Whether the user is in the Friend Request section
	isFriendRequest = t.boolean,
	-- Whether a user in the PYMK section has incoming friend request
	hasIncomingFriendRequest = t.optional(t.boolean),
	friendStatus = t.optional(t.enum(Enum.FriendStatus)),
	sourceType = t.optional(t.string),
	networking = t.optional(t.callback),
	handleRequestFriendship = t.optional(t.callback),
	handleAcceptFriendRequest = t.optional(t.callback),
	handleDeclineFriendRequest = t.optional(t.callback),
})

return function(props)
	assert(OverlayButtonsProps(props))

	local buttons = {}
	if props.isFriendRequest then
		-- Fallback to Enum.FriendStatus.FriendRequestReceived status to show
		-- the buttons. The buttons are used in the friends requests situation,
		-- default to Enum.FriendStatus.FriendRequestReceived is reasonable if
		-- the status is being fetched, or can not be fetched because of network
		-- errors.
		local status = props.friendStatus or Enum.FriendStatus.FriendRequestReceived
		if status == Enum.FriendStatus.FriendRequestReceived then
			table.insert(buttons, {
				icon = Images["icons/actions/reject"],
				isSecondary = true,
				onActivated = function()
					props.handleDeclineFriendRequest(props.networking, props.playerId)
				end,
			})
			table.insert(buttons, {
				icon = Images["icons/actions/friends/friendAdd"],
				isSecondary = false,
				onActivated = function()
					props.handleAcceptFriendRequest(props.networking, props.playerId)
				end,
			})
		end
	else
		-- Fallback to Enum.FriendStatus.NotFriend status to show the button,
		-- if the status is being fetched, or can not be fetched because of
		-- network errors. Though duplicate friendship request may be sent,
		-- which is acceptable, the UI will be more friendly.
		local status = props.friendStatus or Enum.FriendStatus.NotFriend
		if getFFlagAddFriendsPYMKExperimentEnabled() and props.hasIncomingFriendRequest then
			table.insert(buttons, {
				icon = Images["icons/actions/friends/friendAdd"],
				isSecondary = false,
				onActivated = function()
					props.handleAcceptFriendRequest(props.networking, props.playerId)
				end,
			})
		elseif status == Enum.FriendStatus.NotFriend then
			table.insert(buttons, {
				icon = Images["icons/actions/friends/friendAdd"],
				isSecondary = false,
				onActivated = function()
					props.handleRequestFriendship(props.networking, props.playerId, props.sourceType)
				end,
			})
		elseif status == Enum.FriendStatus.FriendRequestSent then
			table.insert(buttons, {
				icon = Images["icons/actions/friends/friendpending"],
				isSecondary = false,
				isDisabled = if getFFlagAddFriendsPYMKExperimentEnabled() then true else nil,
				onActivated = function() end,
			})
		end
	end
	return buttons
end
