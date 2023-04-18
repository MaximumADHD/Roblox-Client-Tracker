local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local t = dependencies.t
local withStyle = UIBlox.Style.withStyle
local PlayerTile = UIBlox.App.Tile.PlayerTile
local withLocalization = dependencies.withLocalization
local getFFlagVerifiedBadgeInFriendsLanding = dependencies.getFFlagVerifiedBadgeInFriendsLanding
local userPresenceText = require(FriendsLanding.Friends.userPresenceText)
local userPresenceIcon = require(FriendsLanding.Friends.userPresenceIcon)
local getCorrectUserPresence = require(FriendsLanding.Friends.getCorrectUserPresence)

local memoize = dependencies.memoize
local createRelevancyInfo = require(script.createRelevancyInfo)

local FriendTile = Roact.PureComponent:extend("FriendTile")

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

local noOpt = function()
	return function() end
end

FriendTile.validateProps = if getFFlagFriendsLandingInactiveFriendsEnabled()
	then t.strictInterface({
		user = t.table,
		index = t.number,
		openPlayerProfile = t.optional(t.callback),
		isLuobu = t.optional(t.boolean),
		pageLoadingTimeReport = t.optional(t.callback),
		buttons = t.optional(t.array(t.strictInterface({
			icon = t.optional(t.string),
			onActivated = t.optional(t.callback),
			isSecondary = t.optional(t.boolean),
			isDisabled = t.optional(t.boolean),
		}))),
	})
	else t.strictInterface({
		user = t.table,
		index = t.number,
		openPlayerProfile = t.optional(t.callback),
		isLuobu = t.optional(t.boolean),
		pageLoadingTimeReport = t.optional(t.callback),
	})

FriendTile.defaultProps = {
	user = {
		username = "",
	},
	openPlayerProfile = noOpt,
	isLuobu = false,
	index = 1,
	buttons = nil,
}

function FriendTile:init()
	self.state = { isFirstRender = true }
	self.makeRelevancyInfo = memoize(createRelevancyInfo)
	self.playerTileRef = Roact.createRef()

	self.openPlayerProfile = function(size, position)
		local user = self.props.user
		if size and position then
			return self.props.openPlayerProfile(user.id, self.props.index, user, size, position)
		else
			return self.props.openPlayerProfile(user.id, self.props.index, user)
		end
	end

	self.openPlayerProfileForRelevancyInfo = function(size, position)
		return function()
			return self.openPlayerProfile(size, position)
		end
	end
end

function FriendTile:didMount()
	if self.props.pageLoadingTimeReport then
		self.props.pageLoadingTimeReport()
	end
end

function FriendTile:render()
	local user = self.props.user
	local presence = getCorrectUserPresence(user)

	local text = userPresenceText[presence]
	local presenceIcon = userPresenceIcon[presence]

	local size, position
	local currentRef = self.playerTileRef:getValue()
	if currentRef then
		size = currentRef.AbsoluteSize
		position = currentRef.AbsolutePosition
	else
		-- Should rerender to get a valid playerTileRef
		self:setState({ isFirstRender = false })
	end

	return withStyle(function(style)
		return withLocalization({
			presenceText = text,
			accountDeletedText = "Feature.Friends.Action.AccountDeleted",
		})(function(localizedStrings)
			local presenceText = localizedStrings.presenceText or nil
			local accountDeletedText = localizedStrings.accountDeletedText

			return Roact.createElement(PlayerTile, {
				tileSize = if getFFlagFriendsLandingInactiveFriendsEnabled() and currentRef
					then UDim2.new(0, size.X, 0, size.Y)
					else UDim2.fromScale(1, 1),
				thumbnail = user.thumbnail,
				title = user.displayName,
				subtitle = "@" .. user.username,
				hasVerifiedBadge = if getFFlagVerifiedBadgeInFriendsLanding() then user.hasVerifiedBadge else nil,
				onActivated = self.openPlayerProfile(size, position),
				forwardedRef = self.playerTileRef,
				buttons = if getFFlagFriendsLandingInactiveFriendsEnabled() then self.props.buttons else nil,

				relevancyInfo = self.makeRelevancyInfo(
					user,
					presenceText,
					presenceIcon,
					self.openPlayerProfileForRelevancyInfo(size, position),
					style.Theme,
					self.props.index,
					self.props.isLuobu,
					style.Font,
					accountDeletedText
				),
			})
		end)
	end)
end

return FriendTile
