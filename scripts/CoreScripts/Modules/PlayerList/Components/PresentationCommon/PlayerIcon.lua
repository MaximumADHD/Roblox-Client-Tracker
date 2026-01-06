local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local FFlagPlayerIconAvatarFix = require(RobloxGui.Modules.Flags.FFlagPlayerIconAvatarFix)

local Cryo = require(CorePackages.Packages.Cryo)
local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)

local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local useLayoutValues = PlayerListPackage.Common.useLayoutValues

local PlayerList = Components.Parent
local FFlagPlayerListReduceRerenders = require(PlayerList.Flags.FFlagPlayerListReduceRerenders)
local FFlagUseNewPlayerList = PlayerListPackage.Flags.FFlagUseNewPlayerList

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local PlayerIcon = Roact.PureComponent:extend("PlayerIcon")

PlayerIcon.validateProps = t.strictInterface({
	player = playerInterface,
	layoutOrder = t.optional(t.integer),
	isSmallTouchDevice = t.optional(t.boolean),

	playerIconInfo = t.strictInterface({
		isPlaceOwner = t.boolean,
		avatarIcon = t.optional(t.table),
		specialGroupIcon = t.optional(t.table),
	}),

	playerRelationship = t.strictInterface({
		isBlocked = t.boolean,
		friendStatus = t.enum(Enum.FriendStatus),
		isFollowing = t.boolean,
		isFollower = t.boolean,
	}),

	layoutValues = t.optional(t.table),
})

local function getSocialIconImage(layoutValues, relationship)
	local friendIcon = layoutValues.FriendIcons[relationship.friendStatus]

	if relationship.isBlocked then
		return layoutValues.BlockedIcon
	elseif friendIcon then
		return friendIcon
	end

	return nil
end

local function getIconImage(layoutValues, player, iconInfo, relationship)
	local membershipIcon = layoutValues.MembershipIcons[player.MembershipType]
	local socialIcon = getSocialIconImage(layoutValues, relationship)
	if socialIcon then
		return socialIcon
	elseif iconInfo.isPlaceOwner then
		return layoutValues.PlaceOwnerIcon
	elseif layoutValues.CustomPlayerIcons[player.UserId] then
		return layoutValues.CustomPlayerIcons[player.UserId]
	elseif iconInfo.specialGroupIcon then
		return iconInfo.specialGroupIcon
	elseif relationship.isFollowing then
		return layoutValues.FollowingIcon
	elseif membershipIcon then
		-- TODO: Replace this with single premium icon check if that is the future.
		return membershipIcon
	end
	return "" :: any
end

function PlayerIcon:render()
	return WithLayoutValues(function(layoutValues)
		layoutValues = if FFlagUseNewPlayerList then self.props.layoutValues else layoutValues

		local avatarIcon = nil
		if FFlagPlayerIconAvatarFix then
			avatarIcon = self.props.playerIconInfo and self.props.playerIconInfo.avatarIcon
		else
			avatarIcon = self.props.playerIconInfo.avatarIcon
		end
		if avatarIcon == nil then
			avatarIcon = layoutValues.DefaultThumbnail
		end

		if layoutValues.IsTenFoot then
			return Roact.createElement("ImageLabel", {
				LayoutOrder = self.props.layoutOrder or 1,
				Size = layoutValues.PlayerIconBackgroundSize,
				BackgroundTransparency = 1,
				Image = layoutValues.PlayerBackgroundImage,
			}, {
				Roact.createElement("ImageLabel", {
					Size = layoutValues.PlayerIconSize,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = avatarIcon,
					BorderSizePixel = 0,
				}),
			})
		elseif self.props.isSmallTouchDevice then
			return Roact.createElement(ImageSetLabel, {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, layoutValues.PlayerNamePaddingXMobile, 0.5, 0),
				Size = layoutValues.PlayerIconSizeMobile,
				BackgroundTransparency = 1,
				Image = getIconImage(
					layoutValues,
					self.props.player,
					self.props.playerIconInfo,
					self.props.playerRelationship
				),
				BorderSizePixel = 0,
			})
		else
			return Roact.createElement(ImageSetLabel, {
				LayoutOrder = self.props.layoutOrder,
				Size = layoutValues.PlayerIconSize,
				BackgroundTransparency = 1,
				Image = getIconImage(
					layoutValues,
					self.props.player,
					self.props.playerIconInfo,
					self.props.playerRelationship
				),
				BorderSizePixel = 0,
			})
		end
	end)
end

local function mapStateToProps(state)
	return {
		isSmallTouchDevice = state.displayOptions.isSmallTouchDevice,
	}
end

local PlayerIconWrapper = function(props)
	local layoutValues = if FFlagUseNewPlayerList then useLayoutValues() else nil

	return React.createElement(PlayerIcon, Cryo.Dictionary.join(props, {
		layoutValues = layoutValues,
	}))
end

if FFlagPlayerListReduceRerenders then
	return React.memo(RoactRodux.connect(mapStateToProps, nil)(if FFlagUseNewPlayerList then PlayerIconWrapper else PlayerIcon))
end

return RoactRodux.connect(mapStateToProps, nil)(if FFlagUseNewPlayerList then PlayerIconWrapper else PlayerIcon)
