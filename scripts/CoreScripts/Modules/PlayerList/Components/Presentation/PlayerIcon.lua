local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerIcon = Roact.Component:extend("PlayerIcon")

local function getIconImage(layoutValues, player, iconInfo)
	local membershipIcon = layoutValues.MembershipIcons[player.MembershipType]
	if layoutValues.CustomPlayerIcons[player.UserId] then
		return layoutValues.CustomPlayerIcons[player.UserId]
	elseif iconInfo.isPlaceOwner then
		return layoutValues.PlaceOwnerIcon
	elseif iconInfo.specialGroupIcon then
		return iconInfo.specialGroupIcon
	elseif membershipIcon then
		-- TODO: Replace this with single premium icon check if that is the future.
		return membershipIcon
	end
	return ""
end

function PlayerIcon:render()
	return WithLayoutValues(function(layoutValues)
		local avatarIcon = self.props.playerIconInfo.avatarIcon
		if avatarIcon == nil then
			avatarIcon = layoutValues.DefaultThumbnail
		end
		if layoutValues.IsTenFoot then
			return Roact.createElement("ImageLabel", {
				LayoutOrder = self.props.layoutOrder,
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
				})
			})
		else
			return Roact.createElement("ImageLabel", {
				LayoutOrder = self.props.layoutOrder,
				Size = layoutValues.PlayerIconSize,
				BackgroundTransparency = 1,
				Image = getIconImage(layoutValues, self.props.player, self.props.playerIconInfo),
				BorderSizePixel = 0,
			})
		end
	end)
end

return PlayerIcon