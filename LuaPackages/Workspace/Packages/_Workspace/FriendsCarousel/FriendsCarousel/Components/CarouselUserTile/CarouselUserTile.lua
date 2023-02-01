local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)

local Roact = dependencies.Roact
local llama = dependencies.llama
local useLocalization = dependencies.Hooks.useLocalization
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType

local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local LocalTypes = require(FriendsCarousel.Common.LocalTypes)
local getUserAvatarImage = require(script.Parent.getUserAvatarImage)
local isUserInGame = require(FriendsCarousel.Utils.isUserInGame)
local getUserPresenceLabel = require(FriendsCarousel.Utils.getUserPresenceLabel)
local UIVariants = require(FriendsCarousel.Common.UIVariants)
local TextKeys = require(FriendsCarousel.Common.TextKeys)

local UserTileCircular = require(FriendsCarousel.Components.UserTileCircular)
local UserTileSquare = require(FriendsCarousel.Components.UserTileSquare)

local getFFlagFriendsCarouselDontUnfriend = require(FriendsCarousel.Flags.getFFlagFriendsCarouselDontUnfriend)
local getFFlagFriendsCarouselIncomingFriendRequest =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselIncomingFriendRequest)
local getFFlagFriendsCarouselFixOnlineIcon = require(FriendsCarousel.Flags.getFFlagFriendsCarouselFixOnlineIcon)
local getFFlagFriendsCarouselRemoveVariant = dependencies.getFFlagFriendsCarouselRemoveVariant

export type Props = {
	user: LocalTypes.User,
	tileInfoHeight: number,
	absoluteIndex: number,
	layoutOrder: number,
	setPeopleListFrozen: (boolean) -> (),

	-- remove with getFFlagFriendsCarouselRemoveVariant
	friendsCarouselExperimentVariant: string?,

	onActivated: (user: LocalTypes.User, additionalData: LocalTypes.ContextualMenuData) -> (),

	-- remove with getFFlagFriendsCarouselRemoveVariant
	sendFriendRequest: (userId: string) -> (),
	unfriendUser: (userId: string) -> (),

	showToast: (toastMessageKey: string) -> (),
	tileSize: number,
}

type Button = {
	icon: any,
	isSecondary: boolean,
	onActivated: (() -> ()),
	isDisabled: boolean?,
}

local defaultProps = {
	tileSize = 100,
	tileInfoHeight = 0,
}

local isUserInStudio = function(user: LocalTypes.Friend)
	return user.userPresenceType == EnumPresenceType.InStudio and user.lastLocation and user.lastLocation ~= ""
end

local getShowOnlineIndicator = function(user: LocalTypes.User): boolean
	if getFFlagFriendsCarouselFixOnlineIcon() then
		return user.isFriendWithUser
			and user.userPresenceType
			and (
				user.userPresenceType == EnumPresenceType.Online
				or user.userPresenceType == EnumPresenceType.InStudio
				or user.userPresenceType == EnumPresenceType.InGame
			)
	else
		return user.isFriendWithUser and isUserInGame(user :: LocalTypes.Friend)
			or user.userPresenceType
				and (user.userPresenceType == EnumPresenceType.Online or user.userPresenceType == EnumPresenceType.InStudio)
	end
end

local useContextualText = function(user: LocalTypes.User, variant: string?): string?
	local text: string? = nil
	local textKey = nil

	if
		getFFlagFriendsCarouselIncomingFriendRequest()
		and user.hasIncomingFriendRequest
		and not user.isFriendWithUser
	then
		textKey = TextKeys.FriendRequestContext
	elseif not user.isFriendWithUser then
		textKey = TextKeys.SuggestedContext
	elseif getFFlagFriendsCarouselRemoveVariant() then
		local friend: LocalTypes.Friend = user :: any
		text = if isUserInGame(friend) or isUserInStudio(friend) then friend.lastLocation else nil
	elseif not getFFlagFriendsCarouselRemoveVariant() and variant == UIVariants.SQUARE_TILES then
		local friend: LocalTypes.Friend = user :: any
		local presenceLabel = getUserPresenceLabel({
			presence = friend.userPresenceType,
			lastLocation = friend.lastLocation,
		})
		text = presenceLabel.text :: string
		textKey = presenceLabel.textKey :: string
	elseif not getFFlagFriendsCarouselRemoveVariant() and variant == UIVariants.CIRCULAR_TILES then
		local friend: LocalTypes.Friend = user :: any
		text = if isUserInGame(friend) or isUserInStudio(friend) then friend.lastLocation else nil
	end

	local localizedStrings = useLocalization({
		text = textKey,
	})

	return text or localizedStrings.text
end

local CarouselUserTile = function(passedProps)
	local props: Props = llama.Dictionary.join(defaultProps, passedProps or {})

	local showOnlineIndicator = getShowOnlineIndicator(props.user)
	local contextualText = useContextualText(
		props.user,
		if getFFlagFriendsCarouselRemoveVariant() then nil else props.friendsCarouselExperimentVariant
	)
	local isContextualTextMuted = not (
			props.user.isFriendWithUser
			and (isUserInGame(props.user :: LocalTypes.Friend) or isUserInStudio(props.user :: LocalTypes.Friend))
		)
	local thumbnail = getUserAvatarImage(props.user.id)

	local openUserProfile = function(userTileRef)
		props.onActivated(props.user, {
			absolutePosition = props.absoluteIndex,
			positionIndex = props.layoutOrder,
			anchorSpaceSize = Vector2.new(props.tileSize, props.tileSize + props.tileInfoHeight),
			anchorSpacePosition = userTileRef.current.AbsolutePosition,
			onOpen = function()
				props.setPeopleListFrozen(true)
			end,
			onClose = function()
				props.setPeopleListFrozen(false)
			end,
		})
	end

	local getButtons = function(user: LocalTypes.User): { Button }?
		if user.hasPendingFriendRequest then
			if getFFlagFriendsCarouselDontUnfriend() then
				return {
					{
						icon = Images["icons/actions/friends/friendpending"],
						isSecondary = true,
						isDisabled = true,
						onActivated = function() end,
					},
				}
			else
				return {
					{
						icon = Images["icons/actions/friends/friendpending"],
						isSecondary = true,
						onActivated = function()
							props.unfriendUser(user.id)
						end,
					},
				}
			end
		elseif user.canSendFriendRequest then
			return {
				{
					icon = Images["icons/actions/friends/friendAdd"],
					isSecondary = false,
					onActivated = function()
						props.sendFriendRequest(user.id)
					end,
				},
			}
		else
			return nil
		end
	end

	if getFFlagFriendsCarouselRemoveVariant() then
		return Roact.createElement(UserTileCircular, {
			username = props.user.displayName,
			thumbnail = thumbnail,
			contextualText = contextualText,
			showOnlineIndicator = showOnlineIndicator,
			layoutOrder = props.layoutOrder,
			onActivated = openUserProfile,
			isContextualTextMuted = true,
			tileSize = props.tileSize,
			infoHeight = props.tileInfoHeight,
		})
	else
		return if props.friendsCarouselExperimentVariant == UIVariants.SQUARE_TILES
			then Roact.createElement(UserTileSquare, {
				username = props.user.displayName,
				thumbnail = thumbnail,
				contextualText = contextualText,
				showOnlineIndicator = showOnlineIndicator,
				layoutOrder = props.layoutOrder,
				onActivated = openUserProfile,
				isContextualTextMuted = isContextualTextMuted,
				tileSize = props.tileSize,
				infoHeight = props.tileInfoHeight,
				buttons = if getFFlagFriendsCarouselRemoveVariant() then nil else getButtons(props.user),
			})
			else Roact.createElement(UserTileCircular, {
				username = props.user.displayName,
				thumbnail = thumbnail,
				contextualText = contextualText,
				showOnlineIndicator = showOnlineIndicator,
				layoutOrder = props.layoutOrder,
				onActivated = openUserProfile,
				isContextualTextMuted = true,
				tileSize = props.tileSize,
				infoHeight = props.tileInfoHeight,
			})
	end
end

return CarouselUserTile
