local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)

local Roact = dependencies.Roact
local t = dependencies.t
local UIBlox = dependencies.UIBlox

local withStyle = UIBlox.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local ImageSetButton = UIBlox.Core.ImageSet.Button

local BUTTON_HEIGHT = 36
local ICON_SIZE = Vector2.new(28, 28)
local PADDING = 8

local PlayerTileRequestActionButtons = Roact.PureComponent:extend("PlayerTileRequestActionButtons")

PlayerTileRequestActionButtons.validateProps = t.strictInterface({
	status = t.optional(t.enum(Enum.FriendStatus)),
	onAccept = t.optional(t.callback),
	onDecline = t.optional(t.callback),
})

PlayerTileRequestActionButtons.defaultProps = {
	status = Enum.FriendStatus.FriendRequestReceived,
}

function PlayerTileRequestActionButtons:render()
	local status = self.props.status
	local onDecline = self.props.onDecline
	local onAccept = self.props.onAccept

	if status ~= Enum.FriendStatus.FriendRequestReceived then
		return nil
	end

	return withStyle(function(style)
		local theme = style.Theme

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, BUTTON_HEIGHT + PADDING),
			AnchorPoint = Vector2.new(0.5, 1),
			Position = UDim2.new(0.5, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, PADDING),
				PaddingRight = UDim.new(0, PADDING),
				PaddingBottom = UDim.new(0, PADDING),
			}),
			DeclineButton = Roact.createElement(ImageSetButton, {
				BackgroundTransparency = 1,
				Image = Images["component_assets/circle_17_stroke_1"],
				ImageColor3 = theme.SecondaryDefault.Color,
				ImageTransparency = theme.SecondaryDefault.Transparency,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(7, 7, 8, 8),
				AnchorPoint = Vector2.new(0, 0),
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(0.5, -PADDING / 2, 1, 0),
				[Roact.Event.Activated] = onDecline,
			}, {
				DeclineIcon = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Image = Images["icons/actions/reject"],
					ImageColor3 = theme.SecondaryContent.Color,
					ImageTransparency = theme.SecondaryContent.Transparency,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, ICON_SIZE.X, 0, ICON_SIZE.Y),
				}),
			}),
			AcceptButton = Roact.createElement(ImageSetButton, {
				BackgroundTransparency = 1,
				Image = Images["component_assets/circle_17"],
				ImageColor3 = theme.SystemPrimaryDefault.Color,
				ImageTransparency = theme.SystemPrimaryDefault.Transparency,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(7, 7, 8, 8),
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, 0, 0, 0),
				Size = UDim2.new(0.5, -PADDING / 2, 1, 0),
				[Roact.Event.Activated] = onAccept,
			}, {
				AcceptIcon = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Image = Images["icons/actions/accept"],
					ImageColor3 = theme.SystemPrimaryContent.Color,
					ImageTransparency = theme.SystemPrimaryContent.Transparency,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, ICON_SIZE.X, 0, ICON_SIZE.Y),
				}),
			}),
		})
	end)
end

return PlayerTileRequestActionButtons
