local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local InGameMenu = script.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)

local FFlagLuaMenuPerfImprovements = require(InGameMenu.Flags.FFlagLuaMenuPerfImprovements)
local GetFFlagInGameMenuControllerDevelopmentOnly = require(InGameMenu.Flags.GetFFlagInGameMenuControllerDevelopmentOnly)

local Modules = CoreGui.RobloxGui.Modules

local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local CONTAINER_FRAME_HEIGHT = 72
local PLAYER_ICON_SIZE = 48
local PLAYER_ICON_PADDING_LEFT = 24
local ONLINE_INDICATOR_SIZE = 6

local DISPLAYNAME_WIDTH = 219
local DISPLAYNAME_HEIGHT = 20
local DISPLAYNAME_LEFT_PADDING = 6
local DISPLAYNAME_TOP_PADDING = 19
local DISPLAYNAME_X_OFFSET = PLAYER_ICON_PADDING_LEFT + PLAYER_ICON_SIZE + DISPLAYNAME_LEFT_PADDING
local USERNAME_WIDTH = 219
local USERNAME_HEIGHT = 14
local USERNAME_LEFT_PADDING = 6
local USERNAME_TOP_PADDING = DISPLAYNAME_TOP_PADDING + DISPLAYNAME_HEIGHT
local USERNAME_X_OFFSET = PLAYER_ICON_PADDING_LEFT + PLAYER_ICON_SIZE + USERNAME_LEFT_PADDING

local CORNER_RADIUS = UDim.new(0, PLAYER_ICON_SIZE/2)

local BUTTONS_RIGHT_PADDING = 23
local BUTTONS_PADDING = 12

local validatePropsWithForwardRef = require(Modules.validatePropsWithForwardRef)

local PlayerCell = Roact.PureComponent:extend("PlayerCell")

PlayerCell.validateProps = t.strictInterface(validatePropsWithForwardRef({
	userId = t.number,
	username = t.string,
	displayName = t.optional(t.string),
	isOnline = t.boolean,
	isSelected = t.boolean,
	LayoutOrder = t.integer,
	Visible = t.optional(t.boolean),

	onActivated = t.optional(t.callback),

	[Roact.Children] = t.optional(t.table),
	[Roact.Change.AbsolutePosition] = t.optional(t.callback),
	[Roact.Ref] = t.optional(t.union(t.callback, t.table)),
}))

PlayerCell.defaultProps = {
	Visible = true,
}

if FFlagLuaMenuPerfImprovements then
	function PlayerCell:init()
		self.onActivated = function()
			self.props.onActivated(self.props.userId)
		end
	end
end

function PlayerCell:renderButtons()
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

function PlayerCell:renderWithSelectionCursor(getSelectionCursor)
	-- check policy until we need to render this component.
	-- if we should show display name:
	-- * the DisplayNameLabel will be used to show display name.
	-- * the UsernameLabel will be used to show "@username".
	-- if not, we just show username at DisplayNameLabel and hide UsernameLabel

	local props = self.props
	local displayName = props.displayName ~= "" and props.displayName or props.username

	return withStyle(function(style)
		local backgroundStyle = style.Theme.BackgroundContrast
		if self.props.isSelected then
			backgroundStyle = style.Theme.BackgroundOnHover
		end

		local activated = self.props.onActivated
		if FFlagLuaMenuPerfImprovements then
			activated = self.props.onActivated and self.onActivated or nil
		end

		local forwardRef = self.props.forwardRef

		return Roact.createElement("TextButton", {
			BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
			BackgroundColor3 = style.Theme.BackgroundDefault.Color,
			BorderSizePixel = 0,
			LayoutOrder = props.LayoutOrder,
			Size = UDim2.new(1, 0, 0, CONTAINER_FRAME_HEIGHT),
			Visible = props.Visible,
			Text = "",
			AutoButtonColor = false,

			[Roact.Event.Activated] = activated,
			[Roact.Change.AbsolutePosition] = self.props[Roact.Change.AbsolutePosition],
			[Roact.Ref] = forwardRef,
			SelectionImageObject = GetFFlagInGameMenuControllerDevelopmentOnly() and getSelectionCursor(CursorKind.Square) or nil,
		}, {
			PlayerIcon = Roact.createElement(ImageSetLabel, {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, PLAYER_ICON_PADDING_LEFT, 0.5, 1),
				Size = UDim2.new(0, PLAYER_ICON_SIZE, 0, PLAYER_ICON_SIZE),
				ImageColor3 = props.isOnline and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(115, 115, 115),
				BackgroundTransparency = 1,
				Image = props.userId > 0 and "rbxthumb://type=AvatarHeadShot&id=" ..props.userId.. "&w=60&h=60" or "",
				ZIndex = 2,
			}, {
				BorderRadius = Roact.createElement("UICorner", {
					CornerRadius = CORNER_RADIUS,
				}),
				OnlineIndicator = self.props.isOnline and Roact.createElement(ImageSetLabel, {
					AnchorPoint = Vector2.new(1, 1),
					Image = Assets.Images.Circle,
					ImageColor3 = props.isOnline and style.Theme.OnlineStatus.Color or nil,
					Position = UDim2.new(1, -3, 1, -3),
					Size = UDim2.new(0, ONLINE_INDICATOR_SIZE, 0, ONLINE_INDICATOR_SIZE),
				}, {
					Corner = Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, ONLINE_INDICATOR_SIZE/2),
					}),
					Border = Roact.createElement("UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
						Color = backgroundStyle.Color,
						Transparency = 0,
						Thickness = 2,
					}),
				}) or nil,
			}),

			DisplayNameLabel = Roact.createElement(ThemedTextLabel, {
				fontKey = "Header2",
				themeKey = "TextEmphasis",
				BackgroundTransparency = 0,
				Position = UDim2.new(0, DISPLAYNAME_X_OFFSET, 0, DISPLAYNAME_TOP_PADDING),
				AnchorPoint = Vector2.new(0, 0),
				Size = UDim2.new(0, DISPLAYNAME_WIDTH, 0, DISPLAYNAME_HEIGHT),
				Text = displayName or props.username,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),

			UsernameLabel = Roact.createElement(ThemedTextLabel, {
				fontKey = "CaptionHeader",
				themeKey = "TextDefault",
				BackgroundTransparency = 0,
				Position = UDim2.new(0, USERNAME_X_OFFSET, 0, USERNAME_TOP_PADDING),
				Size = UDim2.new(0, USERNAME_WIDTH, 0, USERNAME_HEIGHT),
				Text = "@" .. props.username,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
			}),

			ButtonContainer = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1,
				Position = UDim2.new(1, -BUTTONS_RIGHT_PADDING, 0, 0),
				Size = UDim2.new(0, 0, 1, 0),
				BackgroundColor3 = Color3.fromRGB(255, 187, 0),
			}, self:renderButtons())
		})
	end)
end

function PlayerCell:render()
	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		return withSelectionCursorProvider(function(getSelectionCursor)
			return self:renderWithSelectionCursor(getSelectionCursor)
		end)
	else
		return self:renderWithSelectionCursor()
	end
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(PlayerCell, Cryo.Dictionary.join(props, {
		forwardRef = ref,
	}))
end)
