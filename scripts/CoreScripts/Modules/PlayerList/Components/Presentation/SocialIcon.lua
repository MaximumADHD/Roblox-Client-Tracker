local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local SocialIcon = Roact.PureComponent:extend("SocialIcon")

local function getFollowIcon(layoutValues, isFollowing, isFollower)
	if isFollowing then
		if isFollower then
			return layoutValues.MutualFollowingIcon
		else
			return layoutValues.FollowingIcon
		end
	elseif isFollower then
		return layoutValues.FollowerIcon
	end
	return nil
end

local function getSocialIconImage(layoutValues, relationship)
	local friendIcon = layoutValues.FriendIcons[relationship.friendStatus]
	local followingIcon = getFollowIcon(layoutValues, relationship.isFollowing, relationship.isFollower)

	if relationship.isBlocked then
		return layoutValues.BlockedIcon
	elseif friendIcon then
		return friendIcon
	elseif followingIcon then
		return followingIcon
	end

	return ""
end

function SocialIcon:render()
	return WithLayoutValues(function(layoutValues)
		local socialIconImage = getSocialIconImage(layoutValues, self.props.playerRelationship)

		return Roact.createElement("ImageLabel", {
			LayoutOrder = self.props.layoutOrder,
			Size = layoutValues.PlayerIconSize,
			BackgroundTransparency = 1,
			Image = socialIconImage,
			BorderSizePixel = 0,
			Visible = socialIconImage ~= "",
		})
	end)
end

return SocialIcon