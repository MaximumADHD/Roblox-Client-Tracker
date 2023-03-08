local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local CoreGui = game:GetService("CoreGui")
local AddFriends = FriendsLanding.AddFriends
local TextKeys = require(FriendsLanding.Common.TextKeys)
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local t = dependencies.t
local UIBlox = dependencies.UIBlox
local PlayerTile = UIBlox.App.Tile.PlayerTile

local withStyle = UIBlox.Style.withStyle
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation
local withLocalization = dependencies.withLocalization
local mapStateToProps = require(script.mapStateToProps)
local FriendsSourceType = require(AddFriends.Enums.FriendsSourceType)
local getOverlayButtons = require(script.getOverlayButtons)
local getFooterRelevanceInfo = require(script.getFooterRelevanceInfo)

local getFFlagContactNameOnFriendRequestEnabled =
	require(FriendsLanding.Flags.getFFlagContactNameOnFriendRequestEnabled)
local getFFlagProfileQRCodeFriendRequestContextInfoEnabled =
	dependencies.getFFlagProfileQRCodeFriendRequestContextInfoEnabled

local getFFlagContactImporterUseNewTooltip = require(FriendsLanding.Flags.getFFlagContactImporterUseNewTooltip)
local getFFlagFixValidatePropErrors = require(FriendsLanding.Flags.getFFlagFixValidatePropErrors)

local AddFriendsTile = Roact.PureComponent:extend("AddFriendsTile")

local noOpt = function()
	return nil
end

AddFriendsTile.validateProps = t.strictInterface({
	-- UserId of myself
	localUserId = t.string,
	-- Whether I am following current user
	amIFollowingUser = t.optional(t.boolean),
	-- Whether current user is following me
	isUserFollowingMe = t.optional(t.boolean),
	-- ExperienceName where the request is sent
	sentFromExperienceName = t.optional(t.string),
	friendStatus = t.optional(t.enum(Enum.FriendStatus)),
	user = t.table,
	layoutOrder = t.integer,
	size = t.Vector2,
	isFriendRequest = t.optional(t.boolean),
	sourceType = t.optional(t.valueOf(FriendsSourceType)),
	handleNavigateDownToViewUserProfile = t.optional(t.callback),
	handleRequestFriendship = t.optional(t.callback),
	handleAcceptFriendRequest = t.optional(t.callback),
	handleDeclineFriendRequest = t.optional(t.callback),
	screenSize = t.Vector2,
	originSourceType = t.optional(t.string),
	contactImporterWarningSeen = t.optional(t.callback),
	showTooltip = t.optional(t.boolean),
	tooltipShown = t.optional(t.callback),
	navigation = if getFFlagFixValidatePropErrors() then t.optional(t.table) else nil,
})

AddFriendsTile.defaultProps = {
	isFriendRequest = false,
	handleNavigateDownToViewUserProfile = noOpt,
	handleRequestFriendship = noOpt,
	handleAcceptFriendRequest = noOpt,
	handleDeclineFriendRequest = noOpt,
}

function AddFriendsTile:init()
	self.state = {
		showTooltip = self.props.showTooltip,
	}

	self.isMounted = false

	self.onActivated = function()
		if not self.isMounted then
			return
		end
		self.props.handleNavigateDownToViewUserProfile(self.props.user.id, function()
			return
		end)
	end

	self.hideTooltip = function()
		self.props.contactImporterWarningSeen()
		self:setState({
			showTooltip = false,
		})
	end
end

function AddFriendsTile:render()
	local size = self.props.size
	local user = self.props.user

	return withStyle(function(style)
		return withLocalization({
			mutualFriendsText = if user.mutualFriends and #user.mutualFriends == 1
				then "Feature.Friends.Label.SingularMutualFriend"
				else "Feature.Friends.Label.MutualFriends",
			sentFromWithContextText = {
				"Feature.Friends.Label.SentFromWithContext",
				gameName = self.props.sentFromExperienceName or "",
			},
			youAreFollowingText = "Feature.Friends.Label.YouAreFollowing",
			followsYouText = "Feature.Friends.Label.FollowsYou",
			fromContactsText = "Feature.Friends.Description.FoundFromPhone",
			contactNameText = if getFFlagContactNameOnFriendRequestEnabled() and user.contactName
				then {
					"Feature.Friends.Description.FromContactsV2",
					contactName = user.contactName,
				}
				else nil,
			tooltipHeaderText = "Feature.Contacts.Heading.ContactsTooltip",
			tooltipBodyText = "Feature.Contacts.Label.ContactsTooltip",
			tooltipButtonText = "Feature.Avatar.Action.GotIt",
			foundThroughQRCode = if getFFlagProfileQRCodeFriendRequestContextInfoEnabled()
				then TextKeys.PROFILE_QR_CODE_TILE_FOOTER
				else nil,
		})(function(localized)
			if getFFlagContactImporterUseNewTooltip() then
				local tooltipProps = {
					headerText = localized.tooltipHeaderText,
					bodyText = localized.tooltipBodyText,
					buttonProps = {
						text = localized.tooltipButtonText,
						onActivated = self.hideTooltip,
					},
					useLargeDropShadow = true,
				}
				local tooltipOptions = {
					preferredOrientation = TooltipOrientation.Left,
					guiTarget = CoreGui,
					active = self.state.showTooltip,
					DisplayOrder = 1,
				}

				return withTooltip(tooltipProps, tooltipOptions, function(triggerPointChanged)
					return Roact.createElement("Frame", {
						AnchorPoint = Vector2.new(1, 0.5),
						Position = UDim2.fromScale(1, 0.5),
						Size = UDim2.new(0, size.X, 0, size.Y),
						BackgroundTransparency = 1,
						ZIndex = 1,
						[Roact.Change.AbsoluteSize] = triggerPointChanged,
						[Roact.Change.AbsolutePosition] = triggerPointChanged,
					}, {
						Roact.createElement(PlayerTile, {
							thumbnail = string.format("rbxthumb://type=Avatar&id=%s&w=720&h=720", tostring(user.id)),
							title = user.displayName,
							tileSize = UDim2.new(0, size.X, 0, size.Y),
							subtitle = "@" .. (user.externalAppDisplayName or user.username),
							buttons = getOverlayButtons({
								playerId = user.id,
								isFriendRequest = self.props.isFriendRequest,
								friendStatus = self.props.friendStatus,
								networking = self.props.networking,
								sourceType = self.props.sourceType,
								handleRequestFriendship = self.props.handleRequestFriendship,
								handleAcceptFriendRequest = self.props.handleAcceptFriendRequest,
								handleDeclineFriendRequest = self.props.handleDeclineFriendRequest,
							}),
							relevancyInfo = getFooterRelevanceInfo({
								mutualFriends = user.mutualFriends,
								isUserFollowingMe = self.props.isUserFollowingMe,
								amIFollowingUser = self.props.amIFollowingUser,
								sentFromExperienceName = self.props.sentFromExperienceName,
								isFriendRequest = self.props.isFriendRequest,
								friendStatus = self.props.friendStatus,
								userPresenceType = user.userPresenceType,
								lastLocation = user.lastLocation,
								originSourceType = self.props.originSourceType,
							}, style, localized),
							onActivated = self.onActivated,
						}),
					})
				end)
			else
				return Roact.createElement(PlayerTile, {
					thumbnail = string.format("rbxthumb://type=Avatar&id=%s&w=720&h=720", tostring(user.id)),
					title = user.displayName,
					tileSize = UDim2.new(0, size.X, 0, size.Y),
					subtitle = "@" .. (user.externalAppDisplayName or user.username),
					buttons = getOverlayButtons({
						playerId = user.id,
						isFriendRequest = self.props.isFriendRequest,
						friendStatus = self.props.friendStatus,
						networking = self.props.networking,
						sourceType = self.props.sourceType,
						handleRequestFriendship = self.props.handleRequestFriendship,
						handleAcceptFriendRequest = self.props.handleAcceptFriendRequest,
						handleDeclineFriendRequest = self.props.handleDeclineFriendRequest,
					}),
					relevancyInfo = getFooterRelevanceInfo({
						mutualFriends = user.mutualFriends,
						isUserFollowingMe = self.props.isUserFollowingMe,
						amIFollowingUser = self.props.amIFollowingUser,
						sentFromExperienceName = self.props.sentFromExperienceName,
						isFriendRequest = self.props.isFriendRequest,
						friendStatus = self.props.friendStatus,
						userPresenceType = user.userPresenceType,
						lastLocation = user.lastLocation,
						originSourceType = self.props.originSourceType,
					}, style, localized),
					onActivated = self.onActivated,
				})
			end
		end)
	end)
end

function AddFriendsTile:didUpdate()
	if getFFlagContactImporterUseNewTooltip() then
		if self.state.showTooltip and not self.props.navigation.isFocused() then
			self:setState({
				showTooltip = false,
			})
		end
	end
end

function AddFriendsTile:didMount()
	self.isMounted = true
end

function AddFriendsTile:willUnmount()
	self.isMounted = false
end

return RoactRodux.connect(mapStateToProps, nil)(AddFriendsTile)
