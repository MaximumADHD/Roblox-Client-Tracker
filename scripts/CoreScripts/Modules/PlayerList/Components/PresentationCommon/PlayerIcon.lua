local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Cryo = require(CorePackages.Packages.Cryo)
local Roact = require(CorePackages.Packages.Roact)
local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Foundation = require(CorePackages.Packages.Foundation)
local t = require(CorePackages.Packages.t)

local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local useLayoutValues = PlayerListPackage.Common.useLayoutValues

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableBlackbirdCheck = SharedFlags.FFlagEnableBlackbirdCheck
local FFlagHidePremiumIconography = SharedFlags.FFlagHidePremiumIconography
local FFlagCoreUiMigrateUIBloxToFoundation = SharedFlags.FFlagCoreUiMigrateUIBloxToFoundation

local PlayerList = Components.Parent
local FFlagPlayerListReduceRerenders = require(PlayerList.Flags.FFlagPlayerListReduceRerenders)
local FFlagPlayerListFoundationSubscriptionIcon = PlayerListPackage.Flags.FFlagPlayerListFoundationSubscriptionIcon

local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel

local function isFoundationImage(image: string?): boolean
	return image ~= nil and image ~= "" and image:match("^%w+://.*$") == nil
end

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
	end

	local isPremium = player.MembershipType == Enum.MembershipType.Premium

	if FFlagEnableBlackbirdCheck then
		local isRobloxSubscriber = game:GetEngineFeature("ReadHasRobloxSubscriptionLua")
			and player.HasRobloxSubscription

		if isRobloxSubscriber then
			return layoutValues.SubscriptionIcon
		end

		if not FFlagHidePremiumIconography and isPremium then
			local membershipIcon = layoutValues.MembershipIcons[player.MembershipType]
			if membershipIcon then
				return membershipIcon
			end
		end
	else
		if isPremium then
			local membershipIcon = layoutValues.MembershipIcons[player.MembershipType]
			if membershipIcon then
				return membershipIcon
			end
		end
	end

	return "" :: any
end

function PlayerIcon:render()
	return WithLayoutValues(function(layoutValues): React.Node
		layoutValues = self.props.layoutValues

		local avatarIcon = self.props.playerIconInfo and self.props.playerIconInfo.avatarIcon
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
			local iconImage =
				getIconImage(layoutValues, self.props.player, self.props.playerIconInfo, self.props.playerRelationship)

			if
				FFlagCoreUiMigrateUIBloxToFoundation
				or (
					FFlagPlayerListFoundationSubscriptionIcon
					and typeof(iconImage) == "table"
					and iconImage.isFoundationIcon
				)
			then
				local iconName = if typeof(iconImage) == "table" then iconImage.name else iconImage

				if FFlagCoreUiMigrateUIBloxToFoundation then
					if typeof(iconImage) == "table" and iconImage.Image ~= nil then
						iconName = iconImage.Image
					end

					if not isFoundationImage(iconName) then
						local imageRect = if typeof(iconImage) == "table"
							then { offset = iconImage.ImageRectOffset, size = iconImage.ImageRectSize }
							else nil
						return Roact.createElement(Foundation.Image, {
							Image = iconName,
							imageRect = imageRect,
							Size = layoutValues.PlayerIconSizeMobile,
							AnchorPoint = Vector2.new(0, 0.5),
							Position = UDim2.new(0, layoutValues.PlayerNamePaddingXMobile, 0.5, 0),
						})
					end
				end

				return Roact.createElement(Foundation.Icon, {
					name = iconName,
					size = Foundation.Enums.IconSize.Medium,
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, layoutValues.PlayerNamePaddingXMobile, 0.5, 0),
				})
			end

			return Roact.createElement(ImageSetLabel, {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, layoutValues.PlayerNamePaddingXMobile, 0.5, 0),
				Size = layoutValues.PlayerIconSizeMobile,
				BackgroundTransparency = 1,
				Image = iconImage,
				BorderSizePixel = 0,
			})
		else
			local iconImage =
				getIconImage(layoutValues, self.props.player, self.props.playerIconInfo, self.props.playerRelationship)

			if
				FFlagCoreUiMigrateUIBloxToFoundation
				or (
					FFlagPlayerListFoundationSubscriptionIcon
					and typeof(iconImage) == "table"
					and iconImage.isFoundationIcon
				)
			then
				local iconName = if typeof(iconImage) == "table" then iconImage.name else iconImage

				if FFlagCoreUiMigrateUIBloxToFoundation then
					if typeof(iconImage) == "table" and iconImage.Image ~= nil then
						iconName = iconImage.Image
					end

					if not isFoundationImage(iconName) then
						local imageRect = if typeof(iconImage) == "table"
							then { offset = iconImage.ImageRectOffset, size = iconImage.ImageRectSize }
							else nil
						return Roact.createElement(Foundation.Image, {
							Image = iconName,
							imageRect = imageRect,
							Size = layoutValues.PlayerIconSize,
							LayoutOrder = self.props.layoutOrder,
						})
					end
				end

				return Roact.createElement(Foundation.Icon, {
					name = iconName,
					size = Foundation.Enums.IconSize.Small,
					LayoutOrder = self.props.layoutOrder,
				})
			end

			return Roact.createElement(ImageSetLabel, {
				LayoutOrder = self.props.layoutOrder,
				Size = layoutValues.PlayerIconSize,
				BackgroundTransparency = 1,
				Image = iconImage,
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
	local layoutValues = useLayoutValues()

	return React.createElement(
		PlayerIcon,
		Cryo.Dictionary.join(props, {
			layoutValues = layoutValues,
		})
	)
end

if FFlagPlayerListReduceRerenders then
	return React.memo(RoactRodux.connect(mapStateToProps, nil)(PlayerIconWrapper))
end

return RoactRodux.connect(mapStateToProps, nil)(PlayerIconWrapper)
