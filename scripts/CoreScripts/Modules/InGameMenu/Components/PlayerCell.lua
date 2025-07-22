--!nonstrict
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local React = require(CorePackages.Packages.React)

local VerifiedBadges = require(CorePackages.Workspace.Packages.VerifiedBadges)

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo
local t = InGameMenuDependencies.t

local Cell = UIBlox.App.Table.Cell
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local LoadableImage = UIBlox.App.Loading.LoadableImage
local LoadingStrategy = UIBlox.App.Loading.Enum.LoadingStrategy
local Images = UIBlox.App.ImageSet.Images
local withStyle = UIBlox.Core.Style.withStyle
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider

local InGameMenu = script.Parent.Parent
local Assets = require(InGameMenu.Resources.Assets)
local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)

local CONTAINER_FRAME_HEIGHT = 72
local PLAYER_ICON_SIZE = 48
local ONLINE_INDICATOR_SIZE = 6

local DISPLAYNAME_HEIGHT = 20
local USERNAME_HEIGHT = 14

local CORNER_RADIUS = UDim.new(0, PLAYER_ICON_SIZE / 2)
local BUTTONS_PADDING = 5
local NAME_PADDING = 15

local PlayerCell = Roact.PureComponent:extend("PlayerCell")

PlayerCell.validateProps = t.strictInterface({
	userId = t.number,
	username = t.string,
	displayName = t.optional(t.string),
	hasVerifiedBadge = t.optional(t.boolean),
	isOnline = t.optional(t.boolean),
	isSelected = t.optional(t.boolean),
	LayoutOrder = t.union(t.integer, t.table),
	Visible = t.optional(t.boolean),
	loadingStrategy = t.optional(LoadingStrategy.isEnumValue),

	onActivated = t.optional(t.callback),
	memoKey = t.optional(t.number),
	[Roact.Children] = t.optional(t.table),
	[Roact.Change.AbsolutePosition] = t.optional(t.callback),
	forwardRef = t.optional(t.union(t.callback, t.table)),
	UserInputService = t.optional(t.union(t.Instance, t.table)),
})

PlayerCell.defaultProps = {
	Visible = true,
	UserInputService = UserInputService,
}

function PlayerCell:init()
	self.onActivated = function()
		if self.props.onActivated and self.props.userId then
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
			Padding = UDim.new(0, BUTTONS_PADDING),
		}),
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
		local bgBrightness = 1.1
		if self.props.isSelected then
			backgroundStyle = style.Theme.BackgroundOnHover
			bgBrightness = 0.23
		end
		local bgColor = backgroundStyle.Color

		return Roact.createElement(Cell, {

			background = self.props.isSelected and Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = bgColor,
				BackgroundTransparency = backgroundStyle.Transparency,
			}) or nil,
			onActivated = self.onActivated,
			[Roact.Change.AbsolutePosition] = self.props[Roact.Change.AbsolutePosition],
			[Roact.Ref] = self.props.forwardRef or nil,

			layoutOrder = props.LayoutOrder,
			size = UDim2.new(1, 0, 0, CONTAINER_FRAME_HEIGHT),
			head = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0, 0),
				Size = UDim2.new(1, -BUTTONS_PADDING - NAME_PADDING, 0, CONTAINER_FRAME_HEIGHT),
				AutomaticSize = Enum.AutomaticSize.XY,
			}, {
				HeadListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				AvatarBackground = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Image = Images["component_assets/userBG_dark"],
					Size = UDim2.new(0, PLAYER_ICON_SIZE, 0, PLAYER_ICON_SIZE),
				}, {
					BorderRadius = Roact.createElement("UICorner", {
						CornerRadius = CORNER_RADIUS,
					}),
					PlayerIcon = Roact.createElement(LoadableImage, {
						loadingStrategy = self.props.loadingStrategy,
						Size = UDim2.fromScale(1, 1),
						ImageColor3 = props.isOnline and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(115, 115, 115),
						BackgroundTransparency = 1,
						Image = props.userId > 0
								and "rbxthumb://type=AvatarHeadShot&id=" .. props.userId .. "&w=60&h=60"
							or "",
						ZIndex = 2,
						LayoutOrder = 1,
						useShimmerAnimationWhileLoading = true,
						renderOnFailed = function()
							return Roact.createElement(ImageSetLabel, {
								Size = UDim2.fromScale(1, 1),
								BackgroundTransparency = 1,
								Image = Images["icons/common/user"],
								ZIndex = 2,
								LayoutOrder = 1,
							}, {
								Corner = Roact.createElement("UICorner", {
									CornerRadius = CORNER_RADIUS,
								}),
							})
						end,
						cornerRadius = CORNER_RADIUS,
					}),
					OnlineIndicator = self.props.isOnline and Roact.createElement(ImageSetLabel, {
						AnchorPoint = Vector2.new(1, 1),
						Image = Assets.Images.Circle,
						ImageColor3 = props.isOnline and style.Theme.OnlineStatus.Color or nil,
						Position = UDim2.new(1, -3, 1, -3),
						Size = UDim2.new(0, ONLINE_INDICATOR_SIZE, 0, ONLINE_INDICATOR_SIZE),
						ZIndex = 3,
					}, {
						Corner = Roact.createElement("UICorner", {
							CornerRadius = UDim.new(0, ONLINE_INDICATOR_SIZE / 2),
						}),
						Border = Roact.createElement("UIStroke", {
							ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
							Color = Color3.new(
								bgColor.R * bgBrightness,
								bgColor.G * bgBrightness,
								bgColor.B * bgBrightness
							),
							Transparency = 0,
							Thickness = 2,
						}),
					}) or nil,
				}),

				NameContainer = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -PLAYER_ICON_SIZE - BUTTONS_PADDING - NAME_PADDING, 0, CONTAINER_FRAME_HEIGHT),
					Position = UDim2.fromOffset(PLAYER_ICON_SIZE, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					LayoutOrder = 2,
				}, {
					NameListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					NamePadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 6),
					}),
					DisplayNameLabel = Roact.createElement(VerifiedBadges.EmojiWrapper, {
						emoji = if props.hasVerifiedBadge then VerifiedBadges.emoji.verified else "",
						automaticSize = Enum.AutomaticSize.None,
						size = UDim2.new(1, -(2 * DISPLAYNAME_HEIGHT), 0, DISPLAYNAME_HEIGHT),
					}, {
						DisplayNameLabel = Roact.createElement(ThemedTextLabel, {
							fontKey = "CaptionHeader",
							themeKey = "TextEmphasis",
							BackgroundTransparency = 1,
							Text = displayName or props.username,
							Size = UDim2.new(1, 0, 0, DISPLAYNAME_HEIGHT),
							AutomaticSize = if props.hasVerifiedBadge
								then Enum.AutomaticSize.XY
								else Enum.AutomaticSize.None,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextTruncate = Enum.TextTruncate.AtEnd,
							LayoutOrder = 1,
						}),
					}),
					UsernameLabel = Roact.createElement(ThemedTextLabel, {
						fontKey = "Footer",
						themeKey = "TextDefault",
						BackgroundTransparency = 1,
						AnchorPoint = Vector2.new(0, 0.5),
						Size = UDim2.new(1, 0, 0, USERNAME_HEIGHT),
						Text = "@" .. props.username,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextTruncate = Enum.TextTruncate.AtEnd,
						LayoutOrder = 2,
					}),
				}),
			}),
			tail = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1,
				Position = UDim2.new(1, 0, 0, 0),
				Size = UDim2.new(0, 0, 1, 0),
			}, self:renderButtons()),
		})
	end)
end

function PlayerCell:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

return React.memo(PlayerCell, function(newProps, oldProps)
	return newProps.isSelected == oldProps.isSelected
		and newProps.isOnline == oldProps.isOnline
		and newProps[Roact.Change.AbsolutePosition] == oldProps[Roact.Change.AbsolutePosition]
		and newProps.forwardRef == oldProps.forwardRef
		and newProps.memoKey == oldProps.memoKey
		and newProps.loadingStrategy == oldProps.loadingStrategy
end)
