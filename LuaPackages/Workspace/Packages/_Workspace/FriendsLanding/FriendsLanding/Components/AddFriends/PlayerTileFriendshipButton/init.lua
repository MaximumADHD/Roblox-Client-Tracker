local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)
local LocalizedKeys = require(AddFriends.Enums.LocalizedKeys)

local Roact = dependencies.Roact
local t = dependencies.t
local UIBlox = dependencies.UIBlox
local withLocalization = dependencies.withLocalization
local Text = dependencies.Text
local memoize = dependencies.memoize

local withStyle = UIBlox.Style.withStyle
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local ImageSetButton = UIBlox.Core.ImageSet.Button

local MAX_TEXT_SIZE = Vector2.new(70, 20)
local ICON_SIZE = Vector2.new(18, 18)
local CONTENT_TEXT_PADDING = 6
local CONTENT_TB_PADDING = 5
local CONTENT_LR_PADDING = 8
local PADDING_RIGHT = 12
local PADDING_BOTTOM = 12

local PlayerTileFriendshipButton = Roact.PureComponent:extend("PlayerTileFriendshipButton")

PlayerTileFriendshipButton.validateProps = t.strictInterface({
	status = t.optional(t.enum(Enum.FriendStatus)),
	onActivated = t.optional(t.callback),
})

PlayerTileFriendshipButton.defaultProps = {
	status = Enum.FriendStatus.NotFriend,
}

function PlayerTileFriendshipButton:init()
	self.getTextBounds = memoize(function(text, font, fontSize)
		return Text.GetTextBounds(text, font, fontSize, MAX_TEXT_SIZE)
	end)

	self.getButtonSize = memoize(function(textSizeX, textSizeY)
		local xSize = ICON_SIZE.X + CONTENT_TEXT_PADDING + textSizeX + CONTENT_LR_PADDING * 2
		local ySize = math.max(ICON_SIZE.Y, textSizeY) + CONTENT_TB_PADDING * 2
		return UDim2.new(0, xSize, 0, ySize)
	end)
end

function PlayerTileFriendshipButton:renderWithProviders(style, localized)
	local status = self.props.status
	local onActivated = self.props.onActivated

	local icon = Images["icons/actions/friends/friendAdd"]
	local text
	local addTransparency
	if status == Enum.FriendStatus.NotFriend then
		text = localized.addFriend
		addTransparency = 0
	elseif status == Enum.FriendStatus.FriendRequestSent then
		text = localized.requestPending
		addTransparency = 0.2
	else
		return
	end

	local theme = style.Theme
	local fontInfo = style.Font
	local font = fontInfo.CaptionHeader.Font
	local fontSize = fontInfo.BaseSize * fontInfo.CaptionHeader.RelativeSize

	local textBounds = self.getTextBounds(text, font, fontSize)
	local buttonSize = self.getButtonSize(textBounds.X, textBounds.Y)

	return Roact.createElement(ImageSetButton, {
		BackgroundTransparency = 1,
		Image = Images["component_assets/circle_21"],
		ImageColor3 = theme.SystemPrimaryDefault.Color,
		ImageTransparency = theme.SystemPrimaryDefault.Transparency + addTransparency,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(8, 8, 9, 9),
		AnchorPoint = Vector2.new(1, 1),
		Position = UDim2.new(1, -PADDING_RIGHT, 1, -PADDING_BOTTOM),
		Size = buttonSize,
		[Roact.Event.Activated] = onActivated,
	}, {
		Icon = Roact.createElement(ImageSetLabel, {
			BackgroundTransparency = 1,
			Image = icon,
			ImageColor3 = theme.SystemPrimaryContent.Color,
			ImageTransparency = theme.SystemPrimaryContent.Transparency + addTransparency,
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, CONTENT_LR_PADDING, 0.5, 0),
			Size = UDim2.new(0, ICON_SIZE.X, 0, ICON_SIZE.Y),
		}),
		Text = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = font,
			TextSize = fontSize,
			Text = text,
			TextColor3 = theme.SystemPrimaryContent.Color,
			TextTransparency = theme.SystemPrimaryContent.Transparency + addTransparency,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			Position = UDim2.new(0, CONTENT_LR_PADDING + ICON_SIZE.X + CONTENT_TEXT_PADDING, 0, 0),
			Size = UDim2.new(0, textBounds.X + CONTENT_LR_PADDING, 1, 0),
		}),
	})
end

function PlayerTileFriendshipButton:render()
	return withStyle(function(style)
		return withLocalization({
			addFriend = LocalizedKeys.AddFriend.rawValue(),
			requestPending = LocalizedKeys.RequestPending.rawValue(),
		})(function(localized)
			return self:renderWithProviders(style, localized)
		end)
	end)
end

return PlayerTileFriendshipButton
