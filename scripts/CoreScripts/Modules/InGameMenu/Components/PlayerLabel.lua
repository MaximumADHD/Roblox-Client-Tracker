local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local FFlagLuaMenuPerfImprovements = require(InGameMenu.Flags.FFlagLuaMenuPerfImprovements)

local Assets = require(InGameMenu.Resources.Assets)

local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local CONTAINER_FRAME_HEIGHT = 70
local PLAYER_ICON_SIZE = 44
local PLAYER_ICON_PADDING_LEFT = 24
local ONLINE_PADDING_LEFT = 12
local ONLINE_SIZE = 16
local ONLINE_X_OFFSET = PLAYER_ICON_PADDING_LEFT + PLAYER_ICON_SIZE + ONLINE_PADDING_LEFT
local USERNAME_WIDTH = 219
local USERNAME_HEIGHT = 22
local USERNAME_LEFT_PADDING = 4
local USERNAME_X_OFFSET = ONLINE_X_OFFSET + ONLINE_SIZE + USERNAME_LEFT_PADDING

local BUTTONS_RIGHT_PADDING = 24
local BUTTONS_PADDING = 12

local iconPos = {
	AnchorPoint = Vector2.new(0, 0.5),
	Position = UDim2.new(0, PLAYER_ICON_PADDING_LEFT, 0.5, 0),
	Size = UDim2.new(0, PLAYER_ICON_SIZE, 0, PLAYER_ICON_SIZE),
}

local PlayerLabel = Roact.PureComponent:extend("PlayerLabel")

PlayerLabel.validateProps = t.strictInterface({
	userId = t.number,
	username = t.string,
	isOnline = t.boolean,
	isSelected = t.boolean,
	LayoutOrder = t.integer,
	Visible = t.optional(t.boolean),

	onActivated = t.optional(t.callback),

	[Roact.Children] = t.optional(t.table),
	[Roact.Change.AbsolutePosition] = t.optional(t.callback),
	[Roact.Ref] = t.optional(t.callback),
})

PlayerLabel.defaultProps = {
	Visible = true,
}

if FFlagLuaMenuPerfImprovements then
	function PlayerLabel:init()
		self.onActivated = function()
			self.props.onActivated(self.props.userId)
		end
	end
end

function PlayerLabel:renderButtons()
	local children = self.props[Roact.Children] or {}
	local buttons = Cryo.Dictionary.join(children, {
		List = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, BUTTONS_PADDING)
		})
	})

	return buttons
end

function PlayerLabel:render()
	local props = self.props

	return withStyle(function(style)
		local backgroundStyle = style.Theme.BackgroundContrast
		if self.props.isSelected then
			backgroundStyle = {
				Color = Color3.fromRGB(48, 50, 52),
				Transparency = 0,
			}
			--TODO: Use this when we have non cutout headshots.
			--backgroundStyle = style.Theme.BackgroundOnHover
		end

		local activated = self.props.onActivated
		if FFlagLuaMenuPerfImprovements then
			activated = self.props.onActivated and self.onActivated or nil
		end

		return Roact.createElement("TextButton", {
			BackgroundTransparency = backgroundStyle.Transparency,
			BackgroundColor3 = backgroundStyle.Color,
			BorderSizePixel = 0,
			LayoutOrder = props.LayoutOrder,
			Size = UDim2.new(1, 0, 0, CONTAINER_FRAME_HEIGHT),
			Visible = props.Visible,
			Text = "",
			AutoButtonColor = false,

			[Roact.Event.Activated] = activated,
			[Roact.Change.AbsolutePosition] = self.props[Roact.Change.AbsolutePosition],
			[Roact.Ref] = self.props[Roact.Ref],
		}, {
			PlayerCutout = Roact.createElement(ImageSetLabel, Cryo.Dictionary.join(iconPos, {
				BackgroundTransparency = 1,
				Image = Assets.Images.CircleCutout,
				ImageColor3 = backgroundStyle.Color,
				ZIndex = 3,
			})),
			PlayerIcon = Roact.createElement(ImageSetLabel, Cryo.Dictionary.join(iconPos, {
				BackgroundTransparency = 1,
				Image = props.userId > 0 and "rbxthumb://type=AvatarHeadShot&id=" ..props.userId.. "&w=48&h=48" or "",
				ZIndex = 2,
			})),
			PlayerBackground = Roact.createElement("Frame", Cryo.Dictionary.join(iconPos, {
				BackgroundColor3 = style.Theme.UIDefault.Color,
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
			})),

			OnlineIndicator = Roact.createElement(ImageSetLabel, {
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Image = Assets.Images.Circle,
				ImageColor3 = props.isOnline and style.Theme.OnlineStatus.Color or style.Theme.UIDefault.Color,
				Position = UDim2.new(0, ONLINE_X_OFFSET, 0.5, 0),
				Size = UDim2.new(0, ONLINE_SIZE, 0, ONLINE_SIZE),
			}),
			UsernameLabel = Roact.createElement(ThemedTextLabel, {
				fontKey = "Header2",
				themeKey = "TextEmphasis",

				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, USERNAME_X_OFFSET, 0.5, 0),
				Size = UDim2.new(0, USERNAME_WIDTH, 0, USERNAME_HEIGHT),
				Text = props.username,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),

			ButtonContainer = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1,
				Position = UDim2.new(1, -BUTTONS_RIGHT_PADDING, 0, 0),
				Size = UDim2.new(0, 0, 1, 0),
			}, self:renderButtons())
		})
	end)
end

return PlayerLabel
