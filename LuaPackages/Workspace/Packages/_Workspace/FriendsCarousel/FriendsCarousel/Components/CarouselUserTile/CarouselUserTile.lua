local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)

local Roact = dependencies.Roact
local llama = dependencies.llama
local useLocalization = dependencies.Hooks.useLocalization
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType

local LocalTypes = require(FriendsCarousel.Common.LocalTypes)
local getUserAvatarImage = require(script.Parent.getUserAvatarImage)
local isUserInGame = require(FriendsCarousel.Utils.isUserInGame)
local TextKeys = require(FriendsCarousel.Common.TextKeys)

local UserTileCircular = require(FriendsCarousel.Components.UserTileCircular)

local getFFlagFriendsCarouselFixOnlineIcon = require(FriendsCarousel.Flags.getFFlagFriendsCarouselFixOnlineIcon)

export type Props = {
	user: LocalTypes.User,
	tileInfoHeight: number,
	absoluteIndex: number,
	layoutOrder: number,
	setPeopleListFrozen: (boolean) -> (),
	onActivated: (user: LocalTypes.User, additionalData: LocalTypes.ContextualMenuData) -> (),
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
				and (user.userPresenceType == EnumPresenceType.Online or user.userPresenceType == EnumPresenceType.InStudio or user.userPresenceType == EnumPresenceType.InGame)
			or false
	else
		return user.isFriendWithUser and isUserInGame(user :: LocalTypes.Friend)
			or (
				user.userPresenceType
					and (user.userPresenceType == EnumPresenceType.Online or user.userPresenceType == EnumPresenceType.InStudio)
				or false
			)
	end
end

local useContextualText = function(user: LocalTypes.User, variant: string?): string?
	local text: string? = nil
	local textKey = nil

	if user.hasIncomingFriendRequest and not user.isFriendWithUser then
		textKey = TextKeys.FriendRequestContext
	elseif not user.isFriendWithUser then
		textKey = TextKeys.SuggestedContext
	else
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
	local contextualText = useContextualText(props.user)
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
end

return CarouselUserTile
